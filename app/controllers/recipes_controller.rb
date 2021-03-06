class RecipesController < ApplicationController
    before_action :require_login
    
    def index
        @recipes = Recipe.all
    end
    
    def show
        @recipe = Recipe.find(params[:id])
    end
    
    def new
       @recipe = Recipe.new
    end
    
    def create
        @recipe = Recipe.new(recipe_params)
        if @recipe.save
            redirect_to recipe_path(@recipe), notice: "Recipe created!"
        else
            @errors = @recipe.errors.full_messages
            render :new
        end
    end
        
    
    def destroy
        recipe = Recipe.find(params[:id])
        recipe.destroy
        redirect_to recipes_path, notice: "Deleted recipe #{recipe.name}"
    end
    
    private
    def recipe_params
        params.require(:recipe).permit(:name, :description)
    end
end
