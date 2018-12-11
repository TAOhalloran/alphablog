class Article < ActiveRecord::Base
  
  # ensures :symbol           true,  
  
  validates :title, presence: true, length{ minimum: 3, maximum: 50}
  validates :description, presence: true, length{ minimum: 10, maximum: 1000}
  
end
