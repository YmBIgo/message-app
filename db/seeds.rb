# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# user

user1 = User.new(:email => "hogehoge@hoge.com", :password => "hogehoge")
user1.save!
user2 = User.new(:email => "hogehoge@example.com", :password => "hogehoge")
user2.save!
user1.update(:first_name => "太郎", :family_name => "山田", :self_introduction => "SFC3年です。よろしく", :age => "22")
user2.update(:first_name => "花子", :family_name => "湘南", :self_introduction => "SFC新入生！", :age => "18")

# room

room1 = Room.new(:name => "新規チャット")
room1.save!

entry1 = Entry.new(:user_id => 1, :room_id => 1)
entry2 = Entry.new(:user_id => 2, :room_id =>1)
entry1.save!
entry2.save!

# message

message1 = Message.new(:content => "おはよう", :user_id => 1)
message2 = Message.new(:content => "宿題やった？", :user_id => 2)
message3 = Message.new(:content => "まだやってない", :user_id => 1)
message1.save!
message2.save!
message3.save!


