class CategoriesController < ApplicationController
    before_action :set_category, only: [:edit, :update, :destroy]

    def index
        @categories = Category.all
    end

    def new
        @category = Category.new
    end   

    def create
        @category = Category.new(category_params)
        respond_to do |format|
            if @category.save
                format.html {redirect_to categories_url}
            end
        end
    end

    def edit
        
    end

    def update
        respond_to do |format|
            if @category.update(category_params)
                format.html {redirect_to categories_url}
            end
        end
    end

    def destroy
        @category.destroy
        respond_to do |format|
            format.html {redirect_to categories_url}
        end
    end

    private
        def set_category
            @category = Category.find(params[:id])
        end

        def category_params
            params.require(:category).permit(:name, :description)
        end
end
