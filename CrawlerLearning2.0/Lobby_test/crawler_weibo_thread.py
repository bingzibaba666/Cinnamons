# -*- coding: utf-8 -*-

import time
import json
import requests
import os
import datetime
import csv
import logging

"""
使用微博的api接口爬取图片
无需登陆
抓包找接口
使用requests库 不使用urllib
"""

class crawler_weibo():
###信息dict
    proxy_addr = "121.69.46.177:9000"
    headers = {
        'User-Agent': "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/22.0.1207.1 Safari/537.1"}


    def __init__(self,weibo_target):
        ###输出日志到控制台和日志



        # logger.info("Start print log")
        # logger.debug("Do something")
        # logger.warning("Something maybe fail.")
        # logger.info("Finish")
        self.separation = '\\'
        self.base_msg = {
            'path': 'D:\\微博爬取图片\\',
            'head_list': ['mblog_id', 'img_name', 'created_at', 'imgurl_list', 'scheme', 'insert_time', 'text']

        }

        # self.weibo_target = {
        #     # 'id': '7008581448',
        #     # 'name': 'Miiiiiiiisa2'
        # }
        self.weibo_target=weibo_target

        self.file_msg = {
            'path': self.base_msg['path'] + self.weibo_target['name'],
            'log_csvfile': self.base_msg['path'] + self.weibo_target['name'] +  self.separation + self.weibo_target['name'] + '.csv',
            'log_txtfile': self.base_msg['path'] + self.weibo_target['name'] +  self.separation+ self.weibo_target['name'] + '.txt',
            'log_exceptionfile': self.base_msg['path'] + self.weibo_target['name'] +  self.separation+ self.weibo_target[
                'name'] + '_exception.txt',
            'log_loggerfile': self.base_msg['path'] + self.weibo_target['name'] +  self.separation+ self.weibo_target['name'] + '_logger.txt'
        }
        self.logger = logging.getLogger(__name__)
        self.logger.setLevel(level=logging.INFO)
        self.handler = logging.FileHandler(self.file_msg['log_loggerfile'])
        self.handler.setLevel(logging.INFO)
        formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
        self.handler.setFormatter(formatter)

        self.console = logging.StreamHandler()
        self.console.setLevel(logging.INFO)
        self.console.setFormatter(formatter)
        self.logger.addHandler(self.handler)
        self.logger.addHandler(self.console)



    def get_moblogid_list(self):
        import pandas as pd
        csv_data = pd.read_csv(self.file_msg['log_csvfile'])
        mblogid_list = csv_data['mblog_id'].values
        return mblogid_list


    def insert_csvfile(self):
        if not os.path.exists(self.file_msg['log_csvfile']):
            with open(self.file_msg['log_csvfile'], 'a', newline='', encoding="utf-8") as f:
                writer = csv.writer(f)
                writer.writerow(self.base_msg['head_list'])


    ##使用requests 返回respon.text
    def use_proxy_res(self,url):
        import requests
        requests.packages.urllib3.disable_warnings()
        porxy_ip = {'http': self.proxy_addr}
        respon = requests.get(url=url, headers=self.headers, proxies=porxy_ip, verify=False)
        res_data = respon.text
        return res_data


    ##获取api_data
    def get_containerid(self,url):
        data = self.use_proxy_res(url=url)
        content = json.loads(data).get('data')
        for data in content.get('tabsInfo').get('tabs'):
            if (data.get('tab_type') == 'weibo'):
                containerid = data.get('containerid')
        return containerid


    ###获取用户信息
    def get_userInfo(self):
        url = 'https://m.weibo.cn/api/container/getIndex?type=uid&value=' + self.weibo_target['id']
        data = self.use_proxy_res(url)
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
        self.logger.info("微博昵称：" + name + "\n" + "微博主页地址：" + profile_url + "\n" + "微博头像地址：" + profile_image_url + "\n" + "是否认证：" + str(
            verified) + "\n" +
                         # "微博说明：" + description +
                         "\n" + "关注人数：" + str(guanzhu) + "\n" + "粉丝数：" + str(
            fensi) + "\n" + "性别：" + gender + "\n" + "微博等级：" + str(urank) + "\n")


    pic_num = 0


    def get_weibo(self):
        ##获得 csv中的mblogid 用来去重

        #global pic_num

        i = 1
        while True:
            url = 'https://m.weibo.cn/api/container/getIndex?type=uid&value=' +self.weibo_target['id']
            weibo_url = 'https://m.weibo.cn/api/container/getIndex?type=uid&value=' + self.weibo_target[
                'id'] + '&containerid=' + self.get_containerid(
                url=url) + '&page=' + str(i)
            try:
                data = self.use_proxy_res(weibo_url)
                content = json.loads(data).get('data')
                cards = content.get('cards')
                if (len(cards) > 0):
                    for j in range(len(cards)):
                        self.logger.info("-----正在爬取第" + str(i) + "页，第" + str(j) + "条微博------")
                        card_type = cards[j].get('card_type')
                        if (card_type == 9):
                            mblog = cards[j].get('mblog')
                            mblog_id = mblog.get('id')
                            self.logger.info(
                                # datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
                                self.weibo_target['name']+ " -- " + mblog_id)
                            # 去重点

                            if int(mblog_id) in self.mblogid_list:
                                self.logger.info(
                                    # datetime.datetime.now().strftime(
                                    # '%Y-%m-%d %H:%M:%S') +
                                    self.weibo_target['name']+" mblog_id :" + mblog_id + " 已经爬取 ")

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
                                self.pic_num = 1
                                # print(mblog.get('original_pic'))
                                # print(mblog.get('pics'))
                                pic_archive = mblog.get('pics')

                                for _ in range(len(pic_archive)):
                                   # print(pic_archive[_]['large']['url'])
                                    imgurl = pic_archive[_]['large']['url']

                                    #

                                    img = requests.get(url=imgurl, headers={
                                        'User-Agent': "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/22.0.1207.1 Safari/537.1"
                                    }, proxies={'http': self.proxy_addr},
                                                       verify=False)
                                    # img = requests.get(url=imgurl)

                                    f = open(self.file_msg['path'] + self.separation+ created_at + "-" + str(self.pic_num) + str(imgurl[-4:]),
                                             'ab')  # 存储图片，多媒体文件需要参数b（二进制文件）

                                    f.write(img.content)  # 多媒体存储content
                                    f.close()
                                    imgurl_list.append(imgurl)
                                    img_name_list.append(created_at + "-" + str(self.pic_num) + str(imgurl[-4:]))
                                    self.pic_num += 1

                                self.logger.info("爬取的图片 "+str(imgurl_list))
                                with open(self.file_msg['log_csvfile'], 'a', newline='', encoding="utf-8") as f:
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

                            with open(self.file_msg['log_txtfile'], 'a', encoding='utf-8') as fh:
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
                self.logger.info(str(e))
                print(e)
                pass


    ##启动项
    def get_start(self):
        time.sleep(5)
        if os.path.isdir(self.file_msg['path']):
            pass
        else:
            os.mkdir(self.file_msg['path'])
        self.insert_csvfile()


        self.mblogid_list = list(self.get_moblogid_list())
        logging.info("已经爬取的微博id "+str(self.mblogid_list))

        try:
            self.get_userInfo()
            self.get_weibo()
        except Exception as e:
            logging.warning(str(e))
            with open(self.file_msg['log_exceptionfile'], 'a', encoding='UTF-8') as f:
                f.write("-------" +

                        datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S') + "-------")
                f.write(str(e))

        # get_userInfo()
        # get_weibo()


    def get_start_attime(self):
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
                self.get_start()
                ##1800s = 30 min
                time.sleep(1800)


if __name__ == "__main__":

    import threading
    # get_start()
    # print(os.path.exists(file_msg['log_csvfile']))

    #get_start_attime()
    # crawler_weibo().get_start_attime()

    args1={'id':'5354730186','name':'佳佳好难啊'}
    # args2={'id':'3214584813','name':'害羞7'}
    args3={'id':'5161204669','name':'星之迟迟'}
    # target=crawler_weibo().get_start

    def thread_builder(dict):
        crawler_weibo(dict).get_start()
    #
    #
    th1=threading.Thread(target=thread_builder,args=(args1,))
    th2=threading.Thread(target=thread_builder,args=(args3,))
    th1.start()
    th2.start()



