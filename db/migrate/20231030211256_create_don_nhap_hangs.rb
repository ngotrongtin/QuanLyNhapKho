class CreateDonNhapHangs < ActiveRecord::Migration[7.0]
  def change
    create_table :don_nhap_hangs do |t|
      t.string :MaHD, unique: true, null: false
      t.string :MaQL,null: false
      t.date :NgayTao
      t.text :GhiChu
      t.integer :SoLuong
      t.float :DonGia
      t.string :MaHH,null: false

      t.timestamps
    end
  end
end
