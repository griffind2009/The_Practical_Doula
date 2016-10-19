class Client < ActiveRecord::Base
  has_many :basics
  has_many :births
  has_many :prenatals
  has_many :postparta
end
