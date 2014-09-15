class CreateSampleTable < ActiveRecord::Migration
  def change
    create_table :sample_tables do |t|
      t.string :sample
    end
  end
end
