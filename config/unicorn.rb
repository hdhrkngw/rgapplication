# -*- coding: utf-8 -*-
worker_processes 2
timeout 15

listen  "160.16.108.158"
pid     "tmp/unicorn.pid"

ROOT = File.dirname(File.dirname(__FILE__))
stdout_path "#{ROOT}/log/unicorn-stdout.log"
stderr_path "#{ROOT}/log/unicorn-stderr.log"

preload_app true

#GC.respond_to?(:copy_on_write_friendly=) and GC.copy_on_write_friendly = true

before_fork do |server, worker|
	defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!

	old_pid = "#{ server.config[:pid] }.oldbin"
	unless old_pid == server.pid
  		begin
   #sig = (worker.nr + 1) >= server.worker_processes ? :QUIT : :TTOU
   			Process.kill :QUIT, File.read(old_pid).to_i
   		rescue Errno::ENOENT, Errno::ESRCH
  		end
	end
end

after_fork do |server, worker|
    defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end
