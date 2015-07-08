class User < ActiveRecord::Base

  has_many :uploads
  has_many :senders, through: :uploads

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.id = auth.uid
      user.first_name = auth.info.givenName
      user.last_name = auth.info.familyName
      user.save
    end
  end

end
