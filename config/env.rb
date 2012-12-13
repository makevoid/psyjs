path = File.expand_path '../../', __FILE__
PATH = path
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
db = "mysql://#{user}localhost/psyjs_#{env}"
db = "sqlite://psyjs.db"
DataMapper.setup :default, db
require_all "#{path}/models"
DataMapper.finalize

Raven.generate