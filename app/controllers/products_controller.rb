class ProductsController < ApplicationController
  def index
  @product=Product.all
  end

  def new
  	@product = Product.new
  end
def create
  @product = Product.new(product_params)
   if @product.save
	 redirect_to :action=>"index"
   else
      render "new"
    end
end
  def edit
  end

  def show
  end
  private
  def product_params
    params.require(:product).permit!
  end
end
