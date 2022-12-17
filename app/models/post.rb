class Post < ApplicationRecord
  belongs_to :user

  # ここに追加
  has_many :photos, dependent: :destroy

  accepts_nested_attributes_for :photos

end
