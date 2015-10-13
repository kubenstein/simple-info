require 'thor'

module SimpleInfo
  class Cli < Thor
    default_task :show

    desc 'show', 'Show info'
    def show
      puts Tag.new.show
    end

    desc 'edit', 'Edit or add info.'
    def edit
      Tag.new.edit
    end

    desc 'pull', 'Pull info from remote, it will override current info.'
    def pull(remote)
      Tag.new.pull(remote)
    end

    desc 'push', 'Push info to remote.'
    def push(remote)
      Tag.new.push(remote)
    end

  end
end