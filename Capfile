load 'deploy'
# Uncomment if you are using Rails' asset pipeline
# load 'deploy/assets'
load 'config/deploy' # remove this line to skip loading any of the default tasks

namespace :deploy do
  task :link_config do
    run link_config('unicorn.yml')
    run link_config('mongoid.yml')
  end

  # task :rbenv_rehash do
  #   run "rbenv rehash"
  # end

  def link_config(name)
    "ln -sfnv #{File.join(shared_path, 'config', name)} #{File.join(current_path, 'config', name)}"
  end

end

