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
    @product = Product.find(params[:id])
    # if @product.edit(product_params)
    #   respond_to do |format|
    #     format.html { redirect_to @product, notice: 'Album was successfully edited.' }
    #     format.json { render :show, status: :ok, location: @product }
    #   end
    # else
    #   respond_to do |format|
    #     format.html { render :edit }
    #     format.json { render json: @product.errors, status: :unprocessable_entity }
    #   end
    # end
  end


  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'Product was successfully updated. Check the bottom of the product list for updated product.' }
        format.json { render :show, status: :ok, location: @product }
      end
    else
      respond_to do |format|
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_path }
      format.js
    end
    flash[:notice] = "Product has been deleted"
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
