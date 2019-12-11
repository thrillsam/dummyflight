class CategoryController < ApplicationController
  layout :find_layout
  power :admin_only
  def index
  end
end
