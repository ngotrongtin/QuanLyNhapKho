class CreateKhos < ActiveRecord::Migration[7.0]
  def change
    create_table :khos do |t|
      t.string :MaKho, unique: true
      t.string :MaQL
      t.string :TenKho
      t.integer :SLTonKho

      t.timestamps
    end
  end
end
