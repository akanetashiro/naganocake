Rails.application.routes.draw do
  namespace :admin do
    get 'orders/show'
  end
  namespace :admin do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
  end
  namespace :admin do
    get 'genres/index'
    get 'genres/edit'
  end
  namespace :admin do
    get 'products/index'
    get 'products/new'
    get 'products/show'
    get 'products/edit'
  end
  namespace :admin do
    get 'sessions/new'
  end
  get 'index/edit'
  namespace :public do
    get 'orders/new'
    get 'orders/log'
    get 'orders/thanx'
    get 'orders/index'
    get 'orders/show'
  end
  namespace :public do
    get 'cart_items/index'
  end
  namespace :public do
    get 'customers/show'
    get 'customers/edit'
  end
  namespace :public do
    get 'sessions/new'
  end
  namespace :public do
    get 'registrations/new'
  end
  namespace :public do
    get 'items/index'
    get 'items/show'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
