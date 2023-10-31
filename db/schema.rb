# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_30_211330) do
  create_table "don_nhap_hangs", force: :cascade do |t|
    t.string "MaHD", null: false
    t.string "MaQL", null: false
    t.date "NgayTao"
    t.text "GhiChu"
    t.integer "SoLuong"
    t.float "DonGia"
    t.string "MaHH", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hang_hoas", force: :cascade do |t|
    t.string "MaHH", null: false
    t.string "TenHH"
    t.integer "SoLuong"
    t.string "MaKho", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "khos", force: :cascade do |t|
    t.string "MaKho", null: false
    t.string "MaQL", null: false
    t.string "TenKho"
    t.integer "SLTonKho"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nha_cung_caps", force: :cascade do |t|
    t.string "MaNCC", null: false
    t.string "TenNCC"
    t.string "SDT"
    t.string "Fax"
    t.text "DiaChi"
    t.string "MaHD", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quan_lies", force: :cascade do |t|
    t.string "MaQL", null: false
    t.string "Ho"
    t.string "Ten"
    t.date "NgaySinh"
    t.string "SDT"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
