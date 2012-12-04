path = File.expand_path '../../', __FILE__
APP = "psyjs"

require "bundler/setup"
Bundler.require :default
module Utils
  def require_all(path)
    Dir.glob("#{path}/**/*.rb") do |model|
      require model
    end
  end
end
include Utils

env = ENV["RACK_ENV"] || "development"
user = "pairing:pa1r1ng@"
DataMapper.setup :default, "mysql://#{user}localhost/psyjs_#{env}"
require_all "#{path}/models"
DataMapper.finalize