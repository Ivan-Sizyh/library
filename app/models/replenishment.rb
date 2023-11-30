class Replenishment < ApplicationRecord
  belongs_to :library, class_name: 'Biblioteka'
  belongs_to :employee
  belongs_to :found
end
