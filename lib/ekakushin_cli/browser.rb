module EkakushinCli
  class Browser
    attr_reader :driver, :wait

    def initialize(browser_name)
      @driver = define_browser(browser_name)
      @wait = set_wait
    end

    def define_browser(browser_name)
      Selenium::WebDriver.for(browser_name)
    end

    def set_wait()
      Selenium::WebDriver::Wait.new(timeout: 5)
    end

    def open(url)
      @driver.get(url)
      @driver.navigate.to(url)
    end

    def find(type, value)
      @wait.until { displayed?(type, value) }
      find_element(type, value)
    end

    def find_element(type, value)
      @driver.find_element(type, value)
    end

    def displayed?(type, value)
      find_element(type, value).displayed?
    end

    def input(element_type, element_value, value)
      element = find(element_type, element_value)
      element.send_keys(value)
    end

    def click(type, value)
      find(type, value).click
    end
  end
end