class TagsController < ApplicationController
  before_action :require_authentication, only: [:destroy]

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end
end
