require 'capistrano'
require 'bundler/capistrano'
require 'capistrano/ext/multistage'

set :bundle_flags, "--deployment --quiet --binstubs"

set :stages, ['vagrant', 'production']
set :default_stage, 'vagrant'

set :application, 'curtain'

set :scm, :git
set :repository,  'git@github.com:techtemplate/curtain.git'
set :branch, 'master'
set :deploy_via, :remote_cache
set :keep_releases, 5
#set :git_shallow_clone, 1

set :user,  'deploy'
ssh_options[:forward_agent] = true

set :default_environment, {
  'PATH' => "/opt/rbenv/shims/:/opt/rbenv/bin:$PATH"
}

# role :web, "your web-server here"                          # Your HTTP server, Apache/etc
# role :app, "your app-server here"                          # This may be the same as your `Web` server
#role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

