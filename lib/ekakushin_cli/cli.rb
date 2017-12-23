module EkakushinCli
  class CLI < Thor
    default_command :main

    method_option 'in'
    method_option 'out'
    desc "main", "main process"
    def main
      Dotenv.load

      browser = Browser.new(:chrome)
      ekakushin = Ekakushin.new(browser)

      if options['out']
        ekakushin.clock_out
      else
        ekakushin.clock_in
      end

      # Confirmation time
      sleep(2)
    end
  end
end