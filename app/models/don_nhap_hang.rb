class DonNhapHang < ApplicationRecord
  belongs_to :hang_hoa
  belongs_to :nha_cung_cap
end
