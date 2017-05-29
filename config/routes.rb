Rails.application.routes.draw do

  namespace :bold, :defaults => {:format => :json} do 
    namespace :v1 do 
      scope module: 'members' do
        resources :members, only: [:index]
      end
    end
  end

end
