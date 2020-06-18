class ArticlesController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    def new
        @article = Article.new
    end

    def create
    end

    def index
    end

end
