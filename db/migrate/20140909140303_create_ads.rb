class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.integer :magazine_id
      t.string :vendor
      t.string :copy

      t.timestamps
    end
  end
end
