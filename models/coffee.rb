class Coffee
 include DataMapper::Resource
 property :id,   Serial
 property :name, String

  belongs_to :bar

end
