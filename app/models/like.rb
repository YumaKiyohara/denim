class Like < ApplicationRecord
  belongs_to :denim
  belongs_to :user
  validates_uniqueness_of :denim_id, scope: :user_id
end
