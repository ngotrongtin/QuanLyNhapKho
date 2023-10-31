Rails.application.routes.draw do
  resources :hang_hoas
  resources :don_nhap_hangs
  resources :nha_cung_caps
  resources :khos
  resources :quan_lys

  root 'hang_hoas#index'
end
