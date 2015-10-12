module SimpleInfo
  class CliActions
    TAG_NAME = 'simple_info_storage'

    def edit
      Kernel.system("git tag -a #{TAG_NAME} `git log --format=%H | tail -1` -f")
    end

    def show
      return unless `git tag`.include? TAG_NAME

      puts `git cat-file tag #{TAG_NAME}`.split("\n\n")[1].strip
    end

  end
end