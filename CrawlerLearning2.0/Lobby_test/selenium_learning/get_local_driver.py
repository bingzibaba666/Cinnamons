
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver import Chrome
from selenium.webdriver import ChromeOptions
def get_driver():
    chrome_options = ChromeOptions()
    # chrome_options.add_experimental_option("debuggerAddress", "127.0.0.1:9222")

    chrome_options.add_experimental_option('excludeSwitches', ['enable-automation'])
    driver = Chrome(chrome_options=chrome_options)
    driver.execute_cdp_cmd("Page.addScriptToEvaluateOnNewDocument", {
        "source": """Object.defineProperty(navigator, 'webdriver', {get: () => undefined})""",
    })
    print(driver.title)

    # 当前句柄
    current = driver.current_window_handle

    driver.execute_script('window.open("http://www.baidu.com")')

    # 所有句柄
    heandles = driver.window_handles
    secondhand = heandles[-1]

    # 切回first
    driver.switch_to.window(current)
    return driver