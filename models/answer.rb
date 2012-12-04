class Answer
  include DataMapper::Resource
  
  property :id,   Serial
  property :name,  String
  property :value, String 
  
  belongs_to :test
  
end