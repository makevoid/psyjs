class Test
  include DataMapper::Resource
  
  TYPES = ["ADA", "Matrici di Raven"]
  
  property :id,   Serial
  property :test_type, Integer
  
  belongs_to :user
  has n, :answers
  
end