from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.action_chains import ActionChains
import  re
import  time
chrome_options = Options()
chrome_options.add_experimental_option("debuggerAddress", "127.0.0.1:9222")

driver = webdriver.Chrome(chrome_options=chrome_options)
print(driver.title)

# 当前句柄
current = driver.current_window_handle

driver.execute_script('window.open("http://www.baidu.com")')

# 所有句柄
heandles = driver.window_handles
secondhand = heandles[-1]

# 切回first
driver.switch_to.window(current)

page_num = 0
while page_num < 15:
    print(page_num + 1)

    url = 'https://s.taobao.com/search?spm=a21bo.2017.201856-fline.3.5af911d9CJTHFx&q=T%E6%81%A4&refpid=420462_1006&source=tbsy&style=grid&tab=all&pvid=d0f2ec2810bcec0d5a16d5283ce59f67&bcoffset=0&p4ppushleft=3%2C44&s={0}'.format(
        44 * page_num)
    driver.get(url)
    time.sleep(3)
    page_list = driver.find_elements_by_xpath(
        '//div[@id = "mainsrp-itemlist"]/div[@class="m-itemlist"]/div/div[@class="items"]/div')
    print(page_list)
    if page_list:
        for pageli in page_list:

            # 切第二个标签页

            item_url = pageli.find_element_by_xpath(
                './div[1]/div[1]/div[1]/a[@class="pic-link J_ClickStat J_ItemPicA"]').get_attribute('href')

            if not re.findall('http', item_url):
                item_url = 'https:' + item_url
            print(item_url)
            driver.switch_to.window(secondhand)
            driver.get(item_url)
            time.sleep(5)
            print(driver.title)
            driver.switch_to.window(current)
        else:
            # 切回第一页
            driver.switch_to.window(current)
    page_num += 1
    time.sleep(2.5)