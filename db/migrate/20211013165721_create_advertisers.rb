class CreateAdvertisers < ActiveRecord::Migration[6.1]
  def change
    create_table :advertisers do |t|
      t.string :name
      t.string :contact
      t.text :about

      t.timestamps
    end
  end
end
