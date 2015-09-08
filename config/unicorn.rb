# -*- coding: utf-8 -*-
worker_processes 2
timeout 15

#listen  "160.16.108.158:3000"  #textbook-on
#pid     "tmp/pids/unicorn.pid"  #textbook-on
listen  Dir.pwd + '/tmp/unicorn.sock'  #website-on
pid     Dir.pwd + '/tmp/unicorn.pid'  #website-on

log = Dir.pwd + '/log/unicorn.log'  #website-on
stderr_path File.expand_path('log/unicorn.log', ENV['RAILS_ROOT'])  #website-on
stdout_path File.expand_path('log/unicorn.log', ENV['RAILS_ROOT'])  #website-on

#ROOT = File.dirname(File.dirname(__FILE__))  #website-on
#stdout_path "#{ROOT}/log/unicorn-stdout.log"  #website-on
#stderr_path "#{ROOT}/log/unicorn-stderr.log"  #website-on

preload_app true

GC.respond_to?(:copy_on_write_friendly=) and GC.copy_on_write_friendly = true  #textbook-off

before_fork do |server, worker|
	defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!

	old_pid = "#{ server.config[:pid] }.oldbin"
	unless old_pid == server.pid
  		begin
   sig = (worker.nr + 1) >= server.worker_processes ? :QUIT : :TTOU  #textbook-off
   Process.kill :QUIT, File.read(old_pid).to_i
   		rescue Errno::ENOENT, Errno::ESRCH
  		end
	end
end

after_fork do |server, worker|
    defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end
