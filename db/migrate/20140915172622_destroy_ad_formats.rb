class DestroyAdFormats < ActiveRecord::Migration
  def change
    drop_table :ad_formats
  end
end
