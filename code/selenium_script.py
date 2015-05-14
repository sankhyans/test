from selenium import webdriver
import sys
import time

if __name__ == '__main__':
	print sys.argv[1]
	
	for i in range (0,100):
		firefox_browser = webdriver.Firefox()
		firefox_browser.get(sys.argv[1]);
		time.sleep(5)
		firefox_browser.close()

	
