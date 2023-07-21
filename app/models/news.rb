class News < ApplicationRecord
    has_many :comments, dependent: :destroy
    accepts_nested_attributes_for :comments, allow_destroy: true
    belongs_to :user
end