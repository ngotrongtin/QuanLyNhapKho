class CreateQuanLies < ActiveRecord::Migration[7.0]
  def change
    create_table :quan_lies do |t|
      t.string :MaQL, unique: true, null: false
      t.string :Ho
      t.string :Ten
      t.date :NgaySinh
      t.string :SDT

      t.timestamps
    end
  end
end
