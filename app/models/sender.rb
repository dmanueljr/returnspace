class Sender < ActiveRecord::Base
    has_many :uploads
    has_many :users, through: :uploads
end
