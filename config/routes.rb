Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  root 'static_pages#home'#sets homepage- tells requests for.../ to be rooted to the home action
end
