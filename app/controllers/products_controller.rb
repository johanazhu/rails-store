class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end
    
    def add_to_cart 
        @product = Product.find(params[:id])
        # redirect_to :back
        redirect_back(fallback_location: root_path)
        flash[:notice] = "已加入购物车"
    end
end
