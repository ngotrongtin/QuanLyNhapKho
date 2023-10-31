class Kho < ApplicationRecord
  self.primary_key = "MaKho"
  has_many :hang_hoas, foreign_key: "MaKho", class_name: "HangHoa", dependent: :destroy
  belongs_to :quan_ly, foreign_key: "MaQL" ,class_name: "QuanLy"
  
end
