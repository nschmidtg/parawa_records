class Api::V1::CategoriesController < ApplicationController

  def index
    json_response "", true, categories_params, :ok
  end
  
  private

  def categories_params
    Category.all.map{|x| {"id" => x.id, "name" => x.name, "posts" => x.posts.pluck(:id) } }
  end
end
  