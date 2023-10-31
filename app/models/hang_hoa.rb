class HangHoa < ApplicationRecord
  belongs_to :kho ,foreign_key: "MaKho", class_name: 'Kho'
  has_many :don_nhap_hangs
end
