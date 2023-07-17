class Usuario < ApplicationRecord
    has_many :publicaciones

    accepts_nested_attributes_for :publicaciones, allow_destroy: true
  
end
