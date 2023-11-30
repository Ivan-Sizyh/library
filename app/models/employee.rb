class Employee < ApplicationRecord
  belongs_to :library, class_name: 'Biblioteka'
end
