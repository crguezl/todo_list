require 'data_mapper'
DataMapper::Logger.new($stdout, :debug)

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/todo_list.db")

class Item
  include DataMapper::Resource
  property :id, Serial
  property :content, Text, :required => true
  property :done, Boolean, :required => true, :default => false
  property :created, DateTime
end

DataMapper.finalize.auto_upgrade!
