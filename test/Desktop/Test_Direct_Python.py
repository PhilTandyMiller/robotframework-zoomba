from appium import webdriver
import time


def RunRoot():
    desired_caps = {}
    desired_caps["app"] = "Root"
    desired_caps["platformName"] = "Windows"
    desired_caps["deviceName"] = "Windows"
    global desktop
    desktop = webdriver.Remote(
        command_executor='http://localhost:4723',
        desired_capabilities=desired_caps)

def RunApp():
    desired_caps = {}
    desired_caps["app"] = "C:/Program Files/ShareX/ShareX.exe"
    desired_caps["platformName"] = "Windows"
    desired_caps["deviceName"] = "Windows"
    global driver
    driver = webdriver.Remote(
        command_executor='http://localhost:4723',
        desired_capabilities= desired_caps)

def the_test():
    time.sleep(0.5)
    driver.find_element_by_name("Task settings...").click()
    time.sleep(0.5)
    driver.find_element_by_name("Image").click()
    driver.find_element_by_name("Effects").click()
    driver.find_element_by_name("Thumbnail").click()
    driver.find_element_by_xpath("//TreeItem[@Name='Capture']").click()
    driver.find_element_by_xpath("//TreeItem[@Name='Uploader filters']").click()
    driver.find_element_by_xpath("//Button[@Name='Close']").click()

def send_key_test():
    time.sleep(0.5)
    driver.find_element_by_name("Task settings...").send_keys('\ue00a', 'p')


def Exit_App():
    driver.close_app()

# RunRoot()
RunApp()
# the_test()
send_key_test()
# Exit_App()
