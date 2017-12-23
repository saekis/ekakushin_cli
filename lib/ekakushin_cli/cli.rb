module EkakushinCli
  class CLI < Thor
    default_command :main

    method_option 'in'
    method_option 'out'
    method_option 'debug'
    desc 'main', 'main process'
    def main
      Dotenv.load

      ekakushin = Ekakushin.new(Browser.new(:chrome))

      if ekakushin.is_debug_mode = options['debug']
        puts '[******Debug mode******]'
      end

      options['out'] ? ekakushin.clock_out : ekakushin.clock_in

      # Confirmation time
      sleep(1)
    end
  end
end