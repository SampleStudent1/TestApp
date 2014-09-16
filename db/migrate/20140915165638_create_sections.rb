class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :title
      t.integer :magazine_id

      t.timestamps
    end
  end
end
