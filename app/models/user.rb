class User < ApplicationRecord
  enum gender: [:male, :female, :other]
end
