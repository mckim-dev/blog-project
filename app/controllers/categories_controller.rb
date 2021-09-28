class CategoriesController < ApplicationController
    before_action :require_admin, except: [:show, :index] 
    
    def new
      @category = Category.new
    end

    def create
      @category = Category.new(category_params)
      if @category.save
        flash[:notice] = "The category has been successfully created."
        redirect_to @category
      else
        render 'new'
      end
    end

    def show
      @category = Category.find(params[:id])
    end

    def index
        @categories = Category.paginate(page: params[:page], per_page: 4)
        
    end

    private

    def category_params
        params.require(:category).permit(:name)
    end

    def require_admin
      if !(logged_in? && current_user.admin?)
        flash[:alert] = "You do not have permission to perform this action -Admin"
        redirect_to categories_path
      end
    end

end