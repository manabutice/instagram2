class Post < ApplicationRecord
  belongs_to :user

  # ここに追加
  has_many :photos, dependent: :destroy
end
