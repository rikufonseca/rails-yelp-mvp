Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: [:index, :show, :new, :create ] do
    # ici nous faisons un nestage parce que lorsque nous allons creer un review nous auront tjrs besoin de l'id d'un restaurant
    resources :reviews, only: [:create]
  end
end

# une collection c une route qui ca sert a faire des listes, un tri dans un model
# un member, c des sous pages d'une table, une colonne.
# un nestage c une autres tables, qui est rattache a une autre table par un id dont nous avons besoin pour notre action
