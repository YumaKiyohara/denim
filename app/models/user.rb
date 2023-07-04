class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :denims, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_denims, through: :likes, source: :denim

  def already_liked?(denim)
    self.likes.exists?(denim_id: denim.id)
  end

end  