class Publicacione < ApplicationRecord
    belongs_to :usuario, dependent: :destroy
end
