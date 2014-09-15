class Magazine < ActiveRecord::Base
  has_many :ads, :dependent => :destroy
  accepts_nested_attributes_for :ads
end
