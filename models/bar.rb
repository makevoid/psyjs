class Bar

  include DataMapper::Resource
  
  property :id, Serial
  property :name, String
  
  has n, :coffees

end