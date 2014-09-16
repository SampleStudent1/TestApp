class Section < ActiveRecord::Base
  belongs_to :magazine
  has_many :articles
end
