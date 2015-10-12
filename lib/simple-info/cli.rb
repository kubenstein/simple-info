require 'thor'

module SimpleInfo
  class Cli < Thor
    default_task :show

    desc 'show', 'Show info'
    def show
      CliActions.new.show
    end

    desc 'edit', 'Edit or add info.'
    def edit
      CliActions.new.edit
    end

  end
end