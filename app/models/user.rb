class User < ApplicationRecord
  enum gender: [:male, :female, :other]

  has_one :wallet

  after_commit :create_wallet, on: [:create]

  def create_wallet
    wallet.create
  end
end
