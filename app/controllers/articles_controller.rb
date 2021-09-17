class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end

    def index
        @articles = Article.all
    end

    def new
        @article = Article.new  #creates empty initialization to prevent error
    end

    def create
        @article = Article.new(params.require(:article).permit(:title, :description))
        if @article.save
          flash[:notice] = "Your article has been created and saved." #flash hash message notices and alerts will appear within the body template of the app html
          redirect_to @article
        else
          render 'new'
        end
    end

    def update
    end

    def edit
    end
    
end 