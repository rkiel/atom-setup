require 'ostruct'
require 'optparse'
require 'json'

module Setup

  class Commander

    attr_accessor :options

    def initialize (argv)
      @options = OpenStruct.new
      options.debug  = false

      @option_parser = OptionParser.new do |op|
        op.banner = "Usage: user_data options"

        # op.on('-a','--[no-]amazon') do |argument|
        #   options.amazon = argument
        #   options.os = UserData::Amazon.new
        # end
        #
        # op.on('-b','--bucket BUCKET') do |argument|
        #   options.bucket = argument
        # end
        #
        # op.on('-c','--[no-]centos') do |argument|
        #   options.centos = argument
        #   options.os = UserData::Centos.new
        # end
        #
        # op.on('-u','--user USER') do |argument|
        #   options.user = argument
        # end
        #
        # op.on('-e','--email EMAIL') do |argument|
        #   options.email = argument
        # end
        #
        #
        # op.on('-G','--github GITHUB', GITHUB_OPTIONS, GITHUB_OPTIONS.sort.join(', ')) do |argument|
        #   options.github = argument
        # end


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
      run_cmd 'apm install file-icons'
      run_cmd 'apm install linter'

      run_cmd 'apm install intentions'
      run_cmd 'apm install busy-signal'
      run_cmd 'apm install linter-ui-default'

      run_cmd 'apm install linter-eslint'
      run_cmd 'apm install markdown-preview-plus'
      run_cmd 'apm install pigments'
      run_cmd 'apm install platformio-ide-terminal'
      run_cmd 'apm install prettier-atom'
      run_cmd 'apm install vim-mode-plus'

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
