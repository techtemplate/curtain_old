require 'capistrano'
require 'capistrano/ext/multistage'

set :stages, ['vagrant'] #, 'production']
set :default_stage, 'vagrant'

set :application, 'curtain'

set :scm, :git
set :repository,  'git@github.com:techtemplate/curtain.git'
set :branch, 'master'
set :deploy_via, :remote_cache
#set :git_shallow_clone, 1

set :user,  'deploy'
ssh_options[:forward_agent] = true

# role :web, "your web-server here"                          # Your HTTP server, Apache/etc
# role :app, "your app-server here"                          # This may be the same as your `Web` server
#role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

