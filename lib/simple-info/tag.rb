module SimpleInfo
  class Tag
    TAG_NAME = 'simple_info_storage'

    def edit
      execute("git tag -f -a #{TAG_NAME} `git log --format=%H | tail -1`")
    end

    def show
      return '' unless info_tag_exists?

      execute("git cat-file tag #{TAG_NAME}").split("\n\n")[1].strip
    end

    def pull(remote)
      execute("git fetch #{remote} tag #{TAG_NAME}")
    end

    def push(remote)
      execute("git push --force #{remote} refs/tags/#{TAG_NAME}:refs/tags/#{TAG_NAME}")
    end


    private 

    def info_tag_exists?
      execute("git tag").include? TAG_NAME
    end

    def execute(command)
      command.include?('-a') ? Kernel.system(command) : `#{command}`
    end

  end
end