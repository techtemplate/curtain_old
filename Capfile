load 'deploy'
# Uncomment if you are using Rails' asset pipeline
# load 'deploy/assets'
load 'config/deploy' # remove this line to skip loading any of the default tasks

namespace :deploy do
  task :symlink_config do
    run link_config('unicorn.rb')
    run link_config('mongoid.yml')
  end

  task :restart do
    run "sudo service unicorn reload"
  end

  after 'deploy:create_symlink', 'deploy:symlink_config'

  def link_config(name)
    "ln -sfnv #{File.join(shared_path, 'config', name)} #{File.join(current_path, 'config', name)}"
  end

end

