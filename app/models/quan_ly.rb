class QuanLy < ApplicationRecord
  has_many :khos, foreign_key: "MaQL", class_name: "Kho", dependent: :destroy
  self.primary_key = "MaQL"
end
