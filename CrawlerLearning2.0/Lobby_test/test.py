
'''
    代理IP
    获取ip池 url
'''
import requests
import time
import struct
import socket
import select
import sys

from bs4 import BeautifulSoup

__author__ = '田小饼'

"""
    爬取代理ip //按需修改
    url https://www.xicidaili.com/nn/   西刺代理

"""


###西刺倒了
def xc_iplist():
    proxyIPsource_url = "https://www.xicidaili.com/nn/"
    iplist = []
    res = requests.get(url=proxyIPsource_url, headers={'User-Agent':"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/22.0.1207.1 Safari/537.1"})
    soup = BeautifulSoup(res.text, "html.parser")
    soup = soup.select("body #ip_list .odd")
    for item in soup:
        ip = item.select("td")[1].text
        port = item.select("td")[2].text
        addr = ip + ":" + port
        iplist.append(addr)
    return iplist


###
def dieniao_iplist():
    url = 'https://www.dieniao.com/FreeProxy.html'

    respon = requests.get(url, verify=False)
    soup = BeautifulSoup(respon.text, "html.parser")

    addr_list = [x.text for x in soup.select('.f-list .f-address')]
    ip_list = [x.text for x in soup.select('.f-list span:nth-of-type(2)')]

"""
   校验ip模块
   ping(ip)

   """


def chesksum(data):
    """
    校验
    """
    n = len(data)
    m = n % 2
    sum = 0
    for i in range(0, n - m, 2):
        sum += (data[i]) + ((data[i + 1]) << 8)  # 传入data以每两个字节（十六进制）通过ord转十进制，第一字节在低位，第二个字节在高位
    if m:
        sum += (data[-1])
    # 将高于16位与低16位相加
    sum = (sum >> 16) + (sum & 0xffff)
    sum += (sum >> 16)  # 如果还有高于16位，将继续与低16位相加
    answer = ~sum & 0xffff
    # 主机字节序转网络字节序列（参考小端序转大端序）
    answer = answer >> 8 | (answer << 8 & 0xff00)
    return answer

    '''
    连接套接字,并将数据发送到套接字
    '''


def raw_socket(dst_addr, imcp_packet):
    rawsocket = socket.socket(socket.AF_INET, socket.SOCK_RAW, socket.getprotobyname("icmp"))
    send_request_ping_time = time.time()
    # send data to the socket
    rawsocket.sendto(imcp_packet, (dst_addr, 80))
    return send_request_ping_time, rawsocket, dst_addr

    '''
    request ping
    '''


def request_ping(data_type, data_code, data_checksum, data_ID, data_Sequence, payload_body):
    # 把字节打包成二进制数据
    imcp_packet = struct.pack('>BBHHH32s', data_type, data_code, data_checksum, data_ID, data_Sequence, payload_body)
    icmp_chesksum = chesksum(imcp_packet)  # 获取校验和
    imcp_packet = struct.pack('>BBHHH32s', data_type, data_code, icmp_chesksum, data_ID, data_Sequence, payload_body)
    return imcp_packet
    '''
    reply ping
    '''


def reply_ping(send_request_ping_time, rawsocket, data_Sequence, timeout=2):
    while True:
        started_select = time.time()
        what_ready = select.select([rawsocket], [], [], timeout)
        wait_for_time = (time.time() - started_select)
        if what_ready[0] == []:  # Timeout
            return -1
        time_received = time.time()
        received_packet, addr = rawsocket.recvfrom(1024)
        icmpHeader = received_packet[20:28]
        type, code, checksum, packet_id, sequence = struct.unpack(
            ">BBHHH", icmpHeader
        )
        if type == 0 and sequence == data_Sequence:
            return time_received - send_request_ping_time
        timeout = timeout - wait_for_time
        if timeout <= 0:
            return -1

    '''
    实现 ping 主机/ip
    '''


def ping(host):
    data_type = 8  # ICMP Echo Request
    data_code = 0  # must be zero
    data_checksum = 0  # "...with value 0 substituted for this field..."
    data_ID = 0  # Identifier
    data_Sequence = 1  # Sequence number
    payload_body = b'abcdefghijklmnopqrstuvwabcdefghi'  # data
    dst_addr = socket.gethostbyname(host)  # 将主机名转ipv4地址格式，返回以ipv4地址格式的字符串，如果主机名称是ipv4地址，则它将保持不变
    print("正在 Ping {0} [{1}] 具有 32 字节的数据:".format(host, dst_addr))
    resip_msg = {}
    resip_msg['host'] = host
    resip_msg['dst_addr'] = dst_addr
    resip_msg['ip'] = host
    resip_msg["times"] = []
    for i in range(0, 4):

        icmp_packet = request_ping(data_type, data_code, data_checksum, data_ID, data_Sequence + i, payload_body)
        send_request_ping_time, rawsocket, addr = raw_socket(dst_addr, icmp_packet)
        times = reply_ping(send_request_ping_time, rawsocket, data_Sequence + i)
        if times > 0:
            print("来自 {0} 的回复: 字节=32 时间={1}ms".format(addr, int(times * 1000)))
            time.sleep(0.7)
            resip_msg["times"].append(int(times * 1000))
        else:
            print("请求超时。")
            resip_msg["times"].append("请求超时")
    return resip_msg


'''
解析ip是否可用
analysis_ip
    status_code=1 可用
    status_code=0 连接超时
'''


def analysis_ip(resip_msg):
    ip = resip_msg["ip"]
    times = resip_msg["times"]
    if "请求超时" in resip_msg["times"]:
        status_code = 0
    else:
        status_code = 1
    return status_code


"""
    工具
    把addr 转成ip
    192.168.1.1:9999 => 192.168.1.1
"""


def adds2ip(addr):
    if addr.find(":"):
        return addr.split(":")[0]
    else:
        return addr


'''
    清洗ip
    剔除超时ip
'''
iplist = []


def clean_ip(ip_list):
    cleaned_iplist = []
    for ip in ip_list:
        resip_msg = ping(adds2ip(ip))
        if "请求超时" in resip_msg["times"]:
            print("丢弃ip " + resip_msg['ip'])
        else:
            print("获取ip " + ip)
            cleaned_iplist.append(ip)
    iplist.extend(cleaned_iplist)
    writer.list2txt(filename=configuration.proxyIPpool, data=cleaned_iplist)
    return cleaned_iplist


"""
多线程list
"""


def mult(funct, ls, n=3):
    from multiprocessing import Process
    pool = []  # 进程池
    length = len(ls)
    step = int(length / n) + 1
    for i in range(0, length, step):
        p = Process(target=funct, args=(ls[i: i + step],))
        pool.append(p)
    for p in pool:
        p.start()
    for p in pool:
        p.join()


def thlt(funct, ls, n=10):
    import threading
    pool = []  # 进程池
    length = len(ls)
    step = int(length / n) + 1
    for i in range(0, length, step):
        p = threading.Thread(target=funct, args=(ls[i: i + step],))
        pool.append(p)
    for p in pool:
        p.start()
    for p in pool:
        p.join()


if __name__ == "__main__":
    ##thlt(clean_ip,xc_iplist())
    print(iplist)

