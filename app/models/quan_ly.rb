class QuanLy < ApplicationRecord
  has_many :khos
  self.primary_key = "MaQL"
end
