# config valid only for Capistrano 3.1
lock '3.4.0'

set :application, 'rgapplication'
set :repo_url, 'https://github.com/hdhrkngw/rgapplication.git'

#set deploy_to, '/var/www/rgapplication'
set :deploy_to, '/var/www/app/rgapplication'  #website-on

set :scm, :git

set :format, :pretty
set :log_level, :debug
set :pty, true

set :bundle_binstubs, nil  #website-on
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets bundle public/system public/assets}  #website-on
set :default_env, { path: "/usr/local/rbenv/shims:/usr/local/rbenv/bin:$PATH" }  #website-on

set :keep_releases, 5

namespace :deploy do  #website-on
  after :finishing, 'deploy:cleanup'  #website-on
end  #website-on


#set :default_env, {
	#rbenv_root: "/usr/local/rbenv",
	#path: "/usr/local/rbenv/shims:/usr/local/rbenv/bin:$PATH"
#}

#set :linked_dirs, (fetch(:linked_dirs) + ['tmp/pids'])

#set :unicorn_rack_env, "none"  #textbook-on
#set :unicorn_config_path, 'config/unicorn.rb'  #textbook-on

#after 'deploy:publishing', 'deploy:restart'
#namespace :deploy do
	#task :restart do
		#invoke 'unicorn:restart'
	#end
#end


# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Default deploy_to directory is /var/www/my_app
# set :deploy_to, '/var/www/my_app'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
