class CreateHangHoas < ActiveRecord::Migration[7.0]
  def change
    create_table :hang_hoas do |t|
      t.string :MaHH, unique: true, null: false
      t.string :TenHH
      t.integer :SoLuong
      t.string :MaKho,null: false

      t.timestamps
    end
  end
end
