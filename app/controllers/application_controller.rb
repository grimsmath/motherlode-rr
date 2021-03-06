class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_product
    product = Category.where(parent_id: nil).first
    @current_product = product || Category.new({name: 'Product Undefined'})
  end

  def current_products
    products = Category.where(parent_id: nil)
    @current_products = products || Category.new({name: 'No Products Defined'})
  end

  helper_method :current_user, :current_product, :current_products
end
