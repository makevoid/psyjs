path = File.expand_path "../../", __FILE__
require "#{path}/config/env"

# p User.first.username

# DataMapper.auto_migrate!

#user = User.create username: "ciccio"
#test  = user.tests.create test_type: 0
#test.answers.create name: 0, value: 1

#p User.first.tests.first.answers
#Coffee.create name: "Macchiato,Freddo"


#p Coffee.all 
caffe = Coffee.first name: "Macchiato"

p caffe
