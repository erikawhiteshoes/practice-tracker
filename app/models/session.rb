class Session < ActiveRecord::Base
  has_many :instruments, dependent: :destroy
end
