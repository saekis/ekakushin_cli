module EkakushinCli
  class Ekakushin
    def initialize(browser)
      @browser = browser
      @browser.open(ENV['ATTENDANCE_URL'])
    end

    def clock_in
      login
      # Wait page redirect
      sleep(1)
      p @browser.find(:name, 'syukkin').attribute('alt')
      # submit_attendance('syukkin')
    end

    def clock_out
      login
      # Wait page redirect
      sleep(1)
      p @browser.find(:name, 'taikin').attribute('alt')
      # submit_attendance('taikin')
    end

    def login
      @browser.input(:name, 'customerCodeAlias', ENV['CUSTOMER_CODE'])
      @browser.input(:name, 'userCodeAlias', ENV['USER_CODE'])
      @browser.input(:name, 'password', ENV['PASSWORD'])
      @browser.click(:css, "input[type='submit']")
    end

    def submit_attendance(button_name)
      @browser.click(:name, button_name)
    end
  end
end