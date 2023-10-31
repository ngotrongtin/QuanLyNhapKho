class Kho < ApplicationRecord
  self.primary_key = "MaKho"
  has_many :hang_hoas
  belongs_to :quan_ly, foreign_key: "MaQL" ,class_name: "QuanLy"
  
end
