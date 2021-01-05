import yaml,time,os
from selenium import webdriver
url = 'http://www.3dpianyuan.net/'
driver = webdriver.Chrome()
driver.get(url)
driver.maximize_window()
time.sleep(2)
driver.find_element_by_id('ls_username').clear()
driver.find_element_by_id('ls_username').send_keys('xxx')
driver.implicitly_wait(5)
driver.find_element_by_id('ls_password').clear()
driver.find_element_by_id('ls_password').send_keys('xxx')
print('请输入验证码')
time.sleep(20)
#在等待时间内将验证码手动输入
driver.implicitly_wait(5)
time.sleep(5)
cookiesAfter = driver.get_cookies()
len1 = len(cookiesAfter)
#这里我没有比较登录前后不同的cookie，直接将登陆后的cookie全部保存。
cookie0 = cookiesAfter[0]
cookie1 = cookiesAfter[1]
cookie2 = cookiesAfter[2]
cookie3 = cookiesAfter[3]
cookie4 = cookiesAfter[4]
cookie5 = cookiesAfter[5]
cookie6 = cookiesAfter[6]
cookie7 = cookiesAfter[7]
cookie8 = cookiesAfter[8]
cookie9 = cookiesAfter[9]
cookie10 = cookiesAfter[10]
cookie11 = cookiesAfter[11]
cookie12 = cookiesAfter[12]
cookie13 = cookiesAfter[13]


fileNamePath = os.path.split(os.path.realpath(__file__))[0]
yamlPath = os.path.join(fileNamePath,'config10.yaml')
fw = open(yamlPath,'w',encoding='utf-8')
data = {'cookie0':cookie0,'cookie1':cookie1,'cookie2':cookie2,'cookie3':cookie3,'cookie4':cookie4,'cookie5':cookie5,'cookie6':cookie6,'cookie7':cookie7,
        'cookie8':cookie8,'cookie9':cookie9,'cookie10':cookie10,'cookie11':cookie11,'cookie12':cookie12,'cookie13':cookie13,}

yaml.dump(data,fw)

driver.quit()