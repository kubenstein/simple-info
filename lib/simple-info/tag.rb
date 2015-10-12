module SimpleInfo
  class Tag
    TAG_NAME = 'simple_info_storage'

    def edit
      Kernel.system("git tag -a #{TAG_NAME} `git log --format=%H | tail -1` -f")
    end

    def show
      return unless `git tag`.include? TAG_NAME

      puts `git cat-file tag #{TAG_NAME}`.split("\n\n")[1].strip
    end

    def pull(remote)
      `git fetch #{remote} tag #{TAG_NAME}`
    end

    def push(remote)
      `git push --force #{remote} refs/tags/#{TAG_NAME}:refs/tags/#{TAG_NAME}`
    end

  end
end