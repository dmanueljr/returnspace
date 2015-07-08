class User < ActiveRecord::Base
<<<<<<< HEAD

  has_many :uploads
  has_many :senders, through: :uploads

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.email = auth.info.email
      user.save
    end
  end

=======
    has_many :uploads
    has_many :senders, through: :uploads
    has_secure_password
>>>>>>> 64a9bc026fd69c6a2efd8756f9c4b7dac9afaf79
end
