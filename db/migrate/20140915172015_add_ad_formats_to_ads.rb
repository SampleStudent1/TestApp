class AddAdFormatsToAds < ActiveRecord::Migration
  def change
    add_column :ads, :ad_formats, :string
  end
end
