class Ad < ActiveRecord::Base
  belongs_to :magazine
  
  def ad_formats=(array)
    self[:ad_formats]=(array.compact.join(", "))
  end
  
  def ad_formats 
    self[:ad_formats].split(", ")
  end
  
  def has_format?(string)
    if self.ad_formats.include?(string)
      return true
    end
  end 
 
end
