class HomeController < ApplicationController
  skip_before_action :authenticate_user, only: [:index]

  def index
    render json: {
      statut: 200, 
      service: 'blog_api', 
      version: '0.1.0', 
      auteur: 'Titouax', 
      description: 'Une api pour un blog',
    }, status: :ok
  end
end