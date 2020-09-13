class Api::V1::CategoriesController < ApplicationController

  def index
    json_response "", true, JSON.parse(Category.all.to_json(include: :posts)), :ok
  end
  
end
  