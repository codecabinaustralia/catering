Rails.application.routes.draw do
  
  get 'dashboard/IngredientTotals'

  resources :ingredients
  get 'settings/general'

  resources :preloaded_meals

  #import paths
  post 'import_preloaded_meals' => 'preloaded_meals#import_preloaded_meals'
  post 'import_patients' => 'patients#import_patients'

  get 'display_orders' => 'order#display_orders'
  get 'display_pdf_orders' => 'order#display_pdf_orders'

  get 'display_orders_meal' => 'order#display_orders_meal'
  get 'menu_overview' => 'order#menu_overview'

  resources :meals
  get 'bulk_delete' => 'meals#bulk_delete'
  
  resources :meal_options
  resources :meal_categories
  resources :patients do
    get 'build_order' => 'order#build_order'
    post 'patient_meal' => 'patients#patients_meal'
    get 'patient_meal' => 'patients#patients_meal'
    get 'remove_patient_meal' => 'patients#remove_patient_meal'
  end
  resources :wards
  resources :sites
	#resources

 	#devise
    devise_for :users
    #custom routes
    get 'static/home'
    #root
	root to: "static#home"	

end
