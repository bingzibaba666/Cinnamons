# -*- coding: utf-8 -*-

import time
import json
import requests
import os
import datetime
import csv

"""
使用微博的api接口爬取图片
无需登陆
抓包找接口
使用requests库 不使用urllib
"""

###信息dict
proxy_addr = "121.69.46.177:9000"
headers = {
    'User-Agent': "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/22.0.1207.1 Safari/537.1"}

base_msg = {
    'path': 'D:\\微博爬取图片\\',
    'head_list': ['mblog_id', 'img_name', 'created_at', 'imgurl_list', 'scheme', 'insert_time', 'text']

}

weibo_target = {
    'id': '7008581448',
    'name': 'Miiiiiiiisa2'
}

file_msg = {
    'path': base_msg['path'] + weibo_target['name'],
    'log_csvfile': base_msg['path'] + weibo_target['name'] + '\\' + weibo_target['name'] + '.csv',
    'log_txtfile': base_msg['path'] + weibo_target['name'] + '\\' + weibo_target['name'] + '.txt',
    'log_exceptionfile': base_msg['path'] + weibo_target['name'] + "\\" + weibo_target['name'] + '_exception.txt'
}


def get_moblogid_list():
    import pandas as pd
    csv_data = pd.read_csv(file_msg['log_csvfile'])
    mblogid_list = csv_data['mblog_id'].values
    return mblogid_list


def insert_csvfile():
    if not os.path.exists(file_msg['log_csvfile']):
        with open(file_msg['log_csvfile'], 'a', newline='', encoding="utf-8") as f:
            writer = csv.writer(f)
            writer.writerow(base_msg['head_list'])


##使用requests 返回respon.text
def use_proxy_res(url):
    import requests
    requests.packages.urllib3.disable_warnings()
    porxy_ip = {'http': proxy_addr}
    respon = requests.get(url=url, headers=headers, proxies=porxy_ip, verify=False)
    res_data = respon.text
    return res_data


##获取api_data
def get_containerid(url):
    data = use_proxy_res(url)
    content = json.loads(data).get('data')
    for data in content.get('tabsInfo').get('tabs'):
        if (data.get('tab_type') == 'weibo'):
            containerid = data.get('containerid')
    return containerid


###获取用户信息
def get_userInfo():
    url = 'https://m.weibo.cn/api/container/getIndex?type=uid&value=' + weibo_target['id']
    data = use_proxy_res(url)
    content = json.loads(data).get('data')
    profile_image_url = content.get('userInfo').get('profile_image_url')
    description = content.get('userInfo').get('description')
    profile_url = content.get('userInfo').get('profile_url')
    verified = content.get('userInfo').get('verified')
    guanzhu = content.get('userInfo').get('follow_count')
    name = content.get('userInfo').get('screen_name')
    fensi = content.get('userInfo').get('followers_count')
    gender = content.get('userInfo').get('gender')
    urank = content.get('userInfo').get('urank')
    print("微博昵称：" + name + "\n" + "微博主页地址：" + profile_url + "\n" + "微博头像地址：" + profile_image_url + "\n" + "是否认证：" + str(
        verified) + "\n" + "微博说明：" + description + "\n" + "关注人数：" + str(guanzhu) + "\n" + "粉丝数：" + str(
        fensi) + "\n" + "性别：" + gender + "\n" + "微博等级：" + str(urank) + "\n")


pic_num = 0


def get_weibo():
    ##获得 csv中的mblogid 用来去重

    global pic_num

    i = 1
    while True:
        url = 'https://m.weibo.cn/api/container/getIndex?type=uid&value=' + weibo_target['id']
        weibo_url = 'https://m.weibo.cn/api/container/getIndex?type=uid&value=' + weibo_target[
            'id'] + '&containerid=' + get_containerid(
            url) + '&page=' + str(i)
        try:
            data = use_proxy_res(weibo_url)
            content = json.loads(data).get('data')
            cards = content.get('cards')
            if (len(cards) > 0):
                for j in range(len(cards)):
                    print("-----正在爬取第" + str(i) + "页，第" + str(j) + "条微博------")
                    card_type = cards[j].get('card_type')
                    if (card_type == 9):
                        mblog = cards[j].get('mblog')
                        mblog_id = mblog.get('id')
                        print(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S') + " -- " + mblog_id)
                        # 去重点

                        if int(mblog_id) in mblogid_list:
                            print(datetime.datetime.now().strftime(
                                '%Y-%m-%d %H:%M:%S') + "mblog_id :" + mblog_id + " 已经爬取 ")

                            continue

                        attitudes_count = mblog.get('attitudes_count')
                        comments_count = mblog.get('comments_count')
                        created_at = mblog.get('created_at')
                        reposts_count = mblog.get('reposts_count')
                        scheme = cards[j].get('scheme')
                        text = mblog.get('text')

                        # print(text)
                        if mblog.get('pics') != None:

                            imgurl_list = []
                            img_name_list = []
                            pic_num = 1
                            # print(mblog.get('original_pic'))
                            # print(mblog.get('pics'))
                            pic_archive = mblog.get('pics')

                            for _ in range(len(pic_archive)):
                                print(pic_archive[_]['large']['url'])
                                imgurl = pic_archive[_]['large']['url']

                                #

                                img = requests.get(url=imgurl, headers={
                                    'User-Agent': "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/22.0.1207.1 Safari/537.1"
                                }, proxies={'http': proxy_addr},
                                                   verify=False)
                                # img = requests.get(url=imgurl)

                                f = open(file_msg['path'] + '\\' + created_at + "-" + str(pic_num) + str(imgurl[-4:]),
                                         'ab')  # 存储图片，多媒体文件需要参数b（二进制文件）

                                f.write(img.content)  # 多媒体存储content
                                f.close()
                                imgurl_list.append(imgurl)
                                img_name_list.append(created_at + "-" + str(pic_num) + str(imgurl[-4:]))
                                pic_num += 1

                            with open(file_msg['log_csvfile'], 'a', newline='', encoding="utf-8") as f:
                                writer = csv.writer(f)
                                writer.writerow([
                                    mblog_id,
                                    img_name_list,  # img_name,
                                    created_at,
                                    str(imgurl_list),
                                    scheme,
                                    datetime.datetime.now().isoformat(),
                                    text
                                ])

                        with open(file_msg['log_txtfile'], 'a', encoding='utf-8') as fh:
                            fh.write("----第" + str(i) + "页，第" + str(j) + "条微博----" + "\n")
                            fh.write("微博地址：" + str(scheme) + "\n" + "微博id: " + mblog_id + " \n" + "发布时间：" + str(
                                created_at) + "\n" + "微博内容：" + text + "\n" + "点赞数：" + str(
                                attitudes_count) + "\n" + "评论数：" + str(comments_count) + "\n" + "转发数：" + str(
                                reposts_count) + "\n")
                        # head_list = ['mblog_id', 'created_at', 'imgurl_list', 'scheme', 'text']

                        # insert_csvfile([
                        #         mblog_id,
                        #         created_at + "-" + str(pic_num) + str(imgurl[-4:]),#img_name,
                        #         created_at,
                        #         str(imgurl_list),
                        #         scheme,
                        #         datetime.datetime.now().isoformat(),
                        #         text
                        #     ])

                i += 1
            else:
                break
        except Exception as e:
            print(e)
            pass


##启动项
def get_start():
    time.sleep(5)
    if os.path.isdir(file_msg['path']):
        pass
    else:
        os.mkdir(file_msg['path'])
    insert_csvfile()

    global mblogid_list
    mblogid_list = list(get_moblogid_list())
    print(mblogid_list)

    try:
        get_userInfo()
        get_weibo()
    except Exception as e:
        with open(file_msg['log_exceptionfile'], 'a', encoding='UTF-8') as f:
            f.write("-------" + datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S') + "-------")
            f.write(str(e))

    # get_userInfo()
    # get_weibo()


def get_start_attime():
    import datetime

    # print(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
    while True:
        if (int(datetime.datetime.now().strftime('%H'))) % 2 == 1:
        # if True:
            print(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
            # try:
            #     get_start()
            # except Exception as e:
            #     with open(file_msg['log_exceptionfile'], 'a', encoding='UTF-8') as f:
            #         f.write("-------"+datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')+"-------")
            #         f.write(f)
            get_start()
            ##1800s = 30 min
            time.sleep(1800)


if __name__ == "__main__":
    # get_start()
    # print(os.path.exists(file_msg['log_csvfile']))
    get_start_attime()
