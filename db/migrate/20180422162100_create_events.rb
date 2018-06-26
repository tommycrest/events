class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :datefrom
      t.string :dateto
      t.string :description_ukr
      t.string :description_ru
      t.string :description_en
      t.string :hourfrom
      t.string :hourto
      t.string :image
      t.string :location
      t.string :eventname_ua
      t.string :eventname_ru
      t.string :eventname_en

      t.timestamps
    end
  end
end
