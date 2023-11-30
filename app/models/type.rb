class Type < ApplicationRecord
  has_many :libraries, dependent: :destroy, class_name: 'Biblioteka'
end
