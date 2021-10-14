class CreateBanners < ActiveRecord::Migration[6.1]
  def change
    drop_table :banners
    create_table :banners do |t|
      t.string :title
      t.text :body
      t.references :advertiser, null: false, foreign_key: true

      t.timestamps
    end
  end
end
