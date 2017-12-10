class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show, :hide]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def hide
    respond_to do |format|
      format.js
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to '/'
      flash[:notice] = "Product has been created!"
    else
      render :new
    end
  end

  def edit
  end

  # def update
  # respond_to do |format|
  #   if @product.update(product_params)
  #     format.html { redirect_to @product, notice: 'Album was successfully updated.' }
  #     format.json { render :show, status: :ok, location: @product }
  #   else
  #     format.html { render :edit }
  #     format.json { render json: @product.errors, status: :unprocessable_entity }
  #   end
  # end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    # respond_to do |format|
    #   format.html { redirect_to products_path }
    #   format.js
    # end
    redirect_to '/'
    flash[:notice] = "Product has been deleted"
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
