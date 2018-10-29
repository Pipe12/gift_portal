class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(products_params)

    if @product.save
      redirect_to products_path
    else
      render new_product_path
    end
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(products_params)
      redirect_to product_path
    else
      redirect_to edit_product_path
    end
  end

  def destroy
    @product = Product.find(params[:id])

    @product.destroy
    redirect_to products_path
  end

  private
    def products_params
      params.require(:product).permit(:name, :description, :cost)
    end
end
