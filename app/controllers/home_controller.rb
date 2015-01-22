class HomeController < ApplicationController
  before_action :set_joke, only: [:show, :edit, :update, :destroy]

  def index
    @jokes = Joke.all
  end
  
end
