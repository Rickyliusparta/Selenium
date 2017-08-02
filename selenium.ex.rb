require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome 

wait = Selenium::WebDriver::Wait.new(timeout: 10)

driver.get 'https://www.bbc.co.uk/news'


# your_account_login = driver.find_element(:id => 'idcta-link')
# your_account_login.click




search_bar = driver.find_element :name => 'q' # => ruby rocket, similar to hashes
search_bar.send_keys 'football'
search_bar.submit


# search_bar = driver.find_element_by_name("session[username_or_email]")
# search_bar.send_keys(session[username_or_email](user))


# search_bar = driver.find_element_by_name("session[password]")
# search_bar.send_keys(session[password](pwd))

# search_bar.send_keys(keys.RETURN)




# search_bar.send_keys 'football'
# search_bar.submit 



wait.until{search_bar.submit}
selenium.stop;






