# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
# Don't declare `role :all`, it's a meta role
role :app, %w{root@160.16.108.158}
role :web, %w{root@160.16.108.158}
role :db,  %w{root@160.16.108.158}

#set :rails_env, :production

#set :stage, :prodution
#set :unicorn_rack_env, "production"


# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.

#server '160.16.108.158', user: 'hidehiro', roles: %w{web app}, my_property: :my_value

# you can set custom ssh options
# it's possible to pass any option but you need to keep in mind that net/ssh understand limited list of options
# you can see them in [net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start)
# set it globally
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
# and/or per server

server '160.16.108.158',
  user: 'root',
  roles: %w{web app},
  ssh_options: {
    user: 'root', # overrides user setting above
    keys: %w(/home/hidehiro/.ssh/id_rsa),
    forward_agent: false,
    auth_methods: %w(publickey password)
    # password: 'please use keys'
  }

# setting per server overrides global ssh_options
