class Api::V1::PostsController < ApplicationController
  
    def index
      json_response "", true, Post.all, :ok
    end
  
    private
  
  end
  