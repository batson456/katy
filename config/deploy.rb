#############################################################
#	Application
#############################################################

set :user, "deploy"
set :application, "katy_aftermath"
set :deploy_to, "/home/#{user}/public/#{application}"

#############################################################
#	Settings
#############################################################

default_run_options[:pty] = true
set :use_sudo, false

#############################################################
#	Servers
#############################################################

set :domain, "96.126.109.233"
server domain, :app, :web
role :db, domain, :primary => true

#############################################################
#	Subversion
#############################################################

set :repository,  "git@github.com:batson456/katy.git"
set :scm_passphrase, "britney12"
set :scm, :git
#############################################################
#	Passenger
#############################################################

namespace :passenger do
  desc "Restart Application"  
  task :restart do  
    run "touch #{current_path}/tmp/restart.txt"  
  end
end

after :deploy, "passenger:restart"