class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(products_params)

    if @product.save
      puts 'Vamos bien'
      redirect_to categories_path
    else
      puts 'Something is wrong'
    end
  end

  def index
    @products = Product.all
  end

  private
    def products_params
      params.require(:product).permit(:name, :description, :cost)
    end
end
