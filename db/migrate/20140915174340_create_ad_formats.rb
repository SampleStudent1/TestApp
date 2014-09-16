class CreateAdFormats < ActiveRecord::Migration
  def change
    create_table :ad_formats do |t|
      t.string :name

      t.timestamps
    end
  end
end
