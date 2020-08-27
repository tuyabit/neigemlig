Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/help'
  get 'users/removeImage'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :motts
  resources :motds

  # resources :motts do
  #   resources :comments, only: [:create, :destroy]
  # end



  # get "motds/show/:id" => "motds#show"

  get 'signup' => "users#new"

  resources :users, only: [:index, :show, :create, :edit, :update, :removeImage]

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  # delete 'logout'  => 'sessions#destroy'
  get 'logout'  => 'sessions#destroy'

  resources :users do
    resources :mlqdas, only: [:create, :destroy]
  end

  resources :users do
    resources :mlqdcs, only: [:create, :destroy]
  end

  resources :users do
    resources :mlqdds, only: [:create, :destroy]
  end

  resources :users do
    resources :mlqdes, only: [:create, :destroy, :edit, :update]
  end

  resources :users do
    resources :userimages
  end

  resources :users do
    resources :payimages
  end

  resources :users do
    resources :userangaars
  end

  resources :mails, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :mailtexts, only: [:create, :destroy, :edit, :update]
    resources :rmails, only: [:create, :destroy, :edit, :update]

    resources :rmails, only: [:create, :destroy, :edit, :update] do
      resources :rmailtexts, only: [:create, :destroy, :edit, :update]
    end
  end

  resources :users do
    resources :userpays
  end

  resources :shoppays

  resources :users do
    resources :useradds
  end

  resources :motds do
    resources :commotds, only: [:create, :destroy, :edit, :update]
    resources :motts, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
      resources :comments, only: [:create, :destroy, :edit, :update]

      # resources :mottimages
      resources :mottimages, only: [:create, :destroy, :edit, :update] do
        resources :mottimagetxts, only: [:create, :destroy, :edit, :update]
      end
      resources :mottimages, only: [:create, :destroy, :edit, :update] do
        resources :mottpictxts, only: [:create, :destroy, :edit, :update]
      end
      resources :mottimages, only: [:create, :destroy, :edit, :update] do
        resources :mottvidtxts, only: [:create, :destroy, :edit, :update]
      end

    end

    resources :motts, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
      resources :payunits, only: [:create, :destroy, :edit, :update] do
        resources :payunitjahs
      end

    end

  end

  resources :users do
    resources :usermals do
      resources :malcounts do
        resources :malhens
      end
    end
  end

  resources :users do
    resources :userjobs do
      resources :userjobpjs do
        resources :userjobpjhuns do
          resources :userjobpjhunjahs
        end
      end
    end
  end

  resources :users do
    resources :userjuuds
  end

  resources :users do
    resources :usergers
  end

  resources :users do
    resources :usergets
  end

  Rails.application.routes.draw do
     resources :motds
     root 'motds#index'
   end

  resources :users do
    resources :usershops do
      resources :usershopimgs
      resources :usershopunes do
        resources :usershopunejahs
        resources :usershopuneimgs
      end
    end
  end

  resources :users do
    resources :userjuudjdls do
      resources :userjuudjdlimgs
    end
  end

  resources :users do
    resources :usermdegdels
  end

  resources :users do
    resources :mlqdfs do
      resources :mlqdfchats
    end
  end

  resources :users do
    resources :mlqdbs do
      resources :mlqdbcheers
    end
  end


end
