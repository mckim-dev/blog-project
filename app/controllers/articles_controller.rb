class ArticlesController < ApplicationController
    before_action :find_article, only: [:show, :edit, :update, :destroy]
    before_action :require_login, except: [:show, :index]
    before_action :require_user_permissions, only: [:edit, :update, :destroy]

    def show
        
    end

    def index
        @articles = Article.paginate(page: params[:page], per_page: 4)
    end

    def new
        @article = Article.new  #creates empty initialization to prevent error
    end

    def edit
        
    end

    def create
        @article = Article.new(validateParams)
        @article.user = current_user
        if @article.save
          flash[:notice] = "Your article has been created and saved." #flash hash message notices and alerts will appear within the body template of the app html
          redirect_to @article
        else
          render 'new'
        end
    end

    def update
        
        if @article.update(validateParams)
            flash[:notice] = "Your article has been updated."
            redirect_to @article
        else
          render 'edit'
        end
    end

    def destroy
        
        @article.destroy
        redirect_to articles_path
    end

    private

    def find_article
      @article = Article.find(params[:id])
    end

    def validateParams
      params.require(:article).permit(:title, :description)
    end

    def require_user_permissions
      if current_user != @article.user && !current_user.admin?
        flash[:alert] = "You do not have permission to edit or delete another user's article."
        redirect_to @article
      end
    end

end 