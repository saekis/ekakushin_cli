module EkakushinCli
  class Ekakushin
    attr_accessor :is_debug_mode
    def initialize(browser)
      @browser = browser
      @browser.open(ENV['ATTENDANCE_URL'])
    end

    def clock_in
      register_attendance('syukkin')
    end

    def clock_out
      register_attendance('taikin')
    end

    def register_attendance(button_name)
      login
      # wait page redirect
      sleep(1)

      # click attendance button
      @browser.click(:name, button_name) unless @is_debug_mode
    end

    def login
      @browser.input(:name, 'customerCodeAlias', ENV['CUSTOMER_CODE'])
      @browser.input(:name, 'userCodeAlias', ENV['USER_CODE'])
      @browser.input(:name, 'password', ENV['PASSWORD'])
      @browser.click(:css, "input[type='submit']")
    end
  end
end