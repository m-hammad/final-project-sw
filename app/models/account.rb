class Account < ActiveRecord::Base
  # attr_accessor :name, :account_type_id

  belongs_to :account_type
  has_many :transactions

  def self.accountsWithTypes()

  end

end
