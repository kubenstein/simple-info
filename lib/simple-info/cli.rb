require 'thor'

module SimpleInfo
  class Cli < Thor
    default_task :show

    desc 'show', 'Show info'
    def show
      Tag.new.show
    end

    desc 'edit', 'Edit or add info.'
    def edit
      Tag.new.edit
    end

  end
end