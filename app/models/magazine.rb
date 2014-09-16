class Magazine < ActiveRecord::Base
  has_many :ads, :dependent => :destroy
  has_many :sections
  has_many :articles, through: :sections
  accepts_nested_attributes_for :ads
end
