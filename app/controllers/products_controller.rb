class ProductsController < ApplicationController
  def index
  @product=Product.all
  end

  def new
  	@product = Product.new
  end
def create
  image_object=product_params[:image]
  product_params.delete(:image)
  @product = Product.new(product_params)
   if @product.save
    image_object[:photo].map { |img|
      Image.create(:photo=>img, :entity_type=>@product.class.name, :entity_id=>@product.id)
    }
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
