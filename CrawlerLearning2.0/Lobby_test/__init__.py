from selenium.webdriver import Chrome
from selenium.webdriver import ChromeOptions


option = ChromeOptions()
option.add_experimental_option('excludeSwitches', ['enable-automation'])
driver = Chrome(options=option)