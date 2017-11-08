require 'ostruct'
require 'optparse'
require 'json'

module Setup

  class Commander

    attr_accessor :options

    def initialize (argv)
      @options = OpenStruct.new
      options.action = 'install -c false'

      @option_parser = OptionParser.new do |op|
        op.banner = "Usage: setup options"

        op.on('-i','--install') do |argument|
          options.action = 'install -c false'
        end

        op.on('-u','--update') do |argument|
          options.action = 'update -c false'
        end

        op.on_tail('-h','--help') do |argument|
          puts op
          exit
        end
      end

      @option_parser.parse!(argv)
      options.terms = argv # must be after parse!
    end

    def valid?
      true
    end

    def help
      puts @option_parser
      exit
    end

    def execute
      action = options.action

      run_cmd "apm #{action} file-icons"
      run_cmd "apm #{action} linter"

      run_cmd "apm #{action} intentions"
      run_cmd "apm #{action} busy-signal"
      run_cmd "apm #{action} linter-ui-default"

      run_cmd "apm #{action} linter-eslint"
      run_cmd "apm #{action} markdown-preview-plus"
      run_cmd "apm #{action} pigments"
      run_cmd "apm #{action} platformio-ide-terminal"
      run_cmd "apm #{action} prettier-atom"
      run_cmd "apm #{action} vim-mode-plus"

      run_cmd 'ln -nfs ~/GitHub/rkiel/atom-setup/config.cson ~/.atom/config.cson'
      run_cmd 'ln -nfs ~/GitHub/rkiel/atom-setup/styles.less ~/.atom/styles.less'
      run_cmd 'ln -nfs ~/GitHub/rkiel/atom-setup/snippets.cson ~/.atom/snippets.cson'
    end

    private

    def run_cmd ( cmd )
      puts
      puts cmd
      success = system cmd
      unless success
        error "(see above)"
      end
      puts
    end

    def error ( msg )
      puts
      puts "ERROR: #{msg}"
      puts
      exit
    end

  end

end
