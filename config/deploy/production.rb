# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

# server "example.com", user: "deploy", roles: %w{app db web}, my_property: :my_value
# server "example.com", user: "deploy", roles: %w{app web}, other_property: :other_value
# server "db.example.com", user: "deploy", roles: %w{db}



# role-based syntax
# ==================

# Defines a role with one or multiple servers. The primary server in each
# group is considered to be the first unless any hosts have the primary
# property set. Specify the username and a domain or IP for the server.
# Don't use `:all`, it's a meta role.

# role :app, %w{deploy@example.com}, my_property: :my_value
# role :web, %w{user1@primary.com user2@additional.com}, other_property: :other_value
# role :db,  %w{deploy@example.com}



# Configuration
# =============
# You can set any configuration variable like in config/deploy.rb
# These variables are then only loaded and set in this stage.
# For available Capistrano configuration variables see the documentation page.
# http://capistranorb.com/documentation/getting-started/configuration/
# Feel free to add new variables to customise your setup.



# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/user_name/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# The server-based syntax can be used to override options:
# ------------------------------------
# server "example.com",
#   user: "user_name",
#   roles: %w{web app},
#   ssh_options: {
#     user: "user_name", # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: "please use keys"
#   }
server '35.75.50.222', user: 'ec2-user', roles: %w{app db web}

set :ssh_options, {
  keys: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCvj67l1ir+Wc6sl5yyiG5YVsJn0XU/u5MbDOPHOa4X+EQ1rhFKs6SSLXFMVcVH8UBss8Zues+wcP//I6FWCwxIee7JLjRm7kkau54/g2C15XmmBxJuMfJYc9gArxWTtT2EM0U3ZxMc0pTNjjbK8CQ9VY37bD6P7XI9U3g+yJyye5SCj/2JPTDqioVoy4/GZnO4+Qwkqg/m9WAQkOQ+YwWcsps0Z0NgM0G2r2u489LXt++buHrfsiWFzQlyNak8KlBAf6sl57ddy2jD1jcNVRsMlI0JPVQ7IzjpHuf/EYNnfz1XgwLxBmvHC4AU2s4vByZbzvdBxyZiyi4O8BLWQ/Q08YqSQ3skTGTfW9BQoPBgukB/c/jcMUyy8k5doASOYwD0asfDRDvQlQWAQdKc/dqAqBJROHNJOV2vTNxRs9SxS2K+w1i2l2RWmlVSygv4wURPDUA7GuR+Cy+y6Gb2vYrxAncXQBOCmmOwAdyeYtmnuoiHpPrRAYE7EgIWXmx7KJ6Fk+QGWznbQrM+a332AL0ocNDaPRBZ8SgH+WkB9vQT2h7l1T65lsU9Y6OLMCCcV6F4v0IFjLA3M3JfoLDt4NEGt49ppnN2suR0E5mdUKorjGwsH525i2pGcZsTC63fxATVtnrv88vzzNqtePs6gXO8s6SBHY/bkXrE1HYua2y9aQ== ec2-user@ip-10-0-0-151.ap-northeast-1.compute.internal,
  forward_agent: true,
  auth_methods: %w[publickey]
}