class User < ActiveRecord::Base
    has_many :uploads
    has_many :senders, through: :uploads
end
