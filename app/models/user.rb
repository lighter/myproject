class User < ActiveRecord::Base
  # before_save {self.email = email.downcase} # 在儲存之前，把email變成小寫
  has_secure_password

  # 這一行設定必須欄位 + 長度設定
  validates :name, presence: true, length: { maximum: 30 }

  # validates :email, format:{ with: /\A[^@]+@[^@]+\z/ }, uniqueness: true
  # 檢查獨特性，不分大小寫
  validates :email, format:{ with: /\A[^@]+@[^@]+\z/ }, uniqueness: { case_sensitive: false}

end
