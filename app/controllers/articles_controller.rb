class ArticlesController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)
        @article.user_id = current_user.id
        if @article.save
            redirect_to root_path
        else
            render 'new'
        end
    end

    def index
        @articles = Article.all
    end

    def article_params
        params.require(:article).permit(:body, :title)
    end

end
