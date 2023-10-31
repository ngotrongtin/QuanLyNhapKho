class CreateNhaCungCaps < ActiveRecord::Migration[7.0]
  def change
    create_table :nha_cung_caps do |t|
      t.string :MaNCC, unique: true
      t.string :TenNCC
      t.string :SDT
      t.string :Fax
      t.text :DiaChi
      t.string :MaHD

      t.timestamps
    end
  end
end
