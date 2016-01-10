Rails.application.routes.draw do

  devise_for :admins
  root 'page#index'

  get '/products', to: 'page#products', as: 'products'

  get '/about', to: 'page#about', as: 'about'
  get '/contact', to: 'page#contact', as: 'contact'
  get '/admin', to: 'admin#dash', as: 'admin'
  get '/terms-of-service', to: 'page#terms', as: "terms"
  get '/private-policy', to: 'page#policy', as: "policy"

  get 'admin/newsletter', to: 'admin#newsletter', as: "admin_newsletter"
  get 'admin/newsletter/users', to: 'admin#newsletterusers', as: "admin_newsletter_users"
  get 'admin/newsletter/new', to: 'admin#newnewsletter', as: "admin_newsletter_new"
  post 'admin/newsletter', to: 'admin#createnewsletter'
  get 'admin/newsletter/:id', to: 'admin#shownewsletter', as: "admin_show_newsletter"
  get 'admin/newsletter/:id/edit', to: 'admin#editnewsletter', as: "admin_edit_newsletter"
  patch 'admin/newsletter/:id', to: 'admin#updatenewsletter', as: "admin_update_newsletter"
  delete 'admin/newsletter/:id', to: 'admin#destroynewsletter', as: "admin_destroy_newsletter"

  post 'admin/newsletter/users', to: 'admin#createnewsmailer'
  delete 'admin/newsletter/users/:id', to: 'admin#destroynewsmailer', as: "admin_destroy_newsmailer"

  namespace :admin do
    resources :categories do
      resources :items
    end
  end




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
