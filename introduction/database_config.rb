require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'mysql2',
  :database => 'metaprogramming',
  :username => 'root',
  :password => 'ar4nhas',
  :host => 'localhost',
  :port => 8000
)
