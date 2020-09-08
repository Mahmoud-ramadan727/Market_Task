class Category < ApplicationRecord
    belongs_to :parent, class_name: 'Category', optional: true, foreign_key: :parent_id
    has_many :children, class_name: 'Category', dependent: :destroy
  
    has_many :items
end
