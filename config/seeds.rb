path = File.expand_path "../../", __FILE__
require "#{path}/config/env"

user = User.create username: "ciccio"

test  = user.tests.create test_type: 0
test.answers.create key: 0, value: 0
test.answers.create key: 1, value: 1


