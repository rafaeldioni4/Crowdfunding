class Member
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActiveModel::SecurePassword

  has_secure_password

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :password_digest
  field :address
  field :description

  # ==================================================================== 
  # User Back-end Validation

  EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i

  validates_presence_of :first_name, :last_name, :email, :password_digest, :address
  validates :email, uniqueness: true, format: EMAIL_REGEX 

  # ==================================================================== 

end
