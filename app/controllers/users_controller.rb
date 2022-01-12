class UsersController < ApplicationController

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end

  def users_items
    user = User.find(params[:user_id])
    items = user.items
    render json: items
  end

  def specific_item
    user = User.find(params[:user_id])
    items = user.items
    item = items.find(params[:id])
    render json: item
  end

  def new_item
    user = User.find(params:[:user_id])
    item = user.items.create(item_params)
    render json: item, status: :created
  end
end
