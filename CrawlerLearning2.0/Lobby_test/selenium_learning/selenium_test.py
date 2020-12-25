import  time
# driver = webdriver.Chrome()



def get_driver():
    from selenium.webdriver import Chrome
    from selenium.webdriver import ChromeOptions

    option = ChromeOptions()
    option.add_experimental_option('excludeSwitches', ['enable-automation'])
    driver = Chrome(options=option)
    driver.execute_cdp_cmd("Page.addScriptToEvaluateOnNewDocument", {
        "source": """Object.defineProperty(navigator, 'webdriver', {get: () => undefined})""",
    })
    return driver


from Lobby_test.selenium_learning import get_local_driver

driver = get_local_driver.get_driver()


urls={
    ##tm=天猫 tb=淘宝

    ###环境页面
    ##天猫主页
    'tm_index':'https://chaoshi.tmall.com/',
    ##天猫购物车
    'tm_spcar':'https://cart.tmall.com/cart.htm?from=bmini&tpId=725677994',

    ##淘宝登录页
    'tb_login':'https://login.taobao.com/member/login.jhtml',



    ###目标页面
    #茅台抢购页面
    'maotai_1':'https://chaoshi.detail.tmall.com/item.htm?spm=a3204.17709488.5400028360.1.26a1c6c0uhsoVM&id=20739895092',


    #绿茶测试页面
    'lvcha_1':'https://chaoshi.detail.tmall.com/item.htm?spm=a3204.7933263.0.0.49481fc6yTBFLI&id=528994004506&rewcatid=50514008'

}

def to_login():
    print("action-登陆")
    ##登陆
    driver.get(urls['tb_login'])
    time.sleep(5)
    driver.implicitly_wait(3)

    driver.find_element_by_css_selector('#login > div.corner-icon-view.view-type-qrcode > i').click()
    # browser.find_element_by_class_name("thumb-link").click()
    time.sleep(5)

##加入购物车
def add_spcar():
    print("action-加入购物车")
    driver.get(urls['lvcha_1'])
    time.sleep(5)
    # driver.find_element_by_id('J_LinkBasket').click()
    try :
        driver.find_element_by_id('J_LinkBasket').click()
    except Exception  as e :
        print(e)
        add_spcar()


def add_order():
    print("action-添加订单")
    ##购物车
    driver.get(urls['tm_spcar'])
    ##确认订单
    driver.find_element_by_id('J_Go').click()
def confire_order():
    print("action-确认")

    #提交订单
    driver.find_element_by_class_name('go-btn').click()



if __name__ == '__main__':
    to_login()
    add_spcar()

    add_order()
    confire_order()