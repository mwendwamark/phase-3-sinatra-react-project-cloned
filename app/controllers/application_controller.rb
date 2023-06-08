class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here

  get "/estates" do
    houses = Estate.all
    houses.to_json
  end

  get "/blogs" do
    content = Blog.all
    content.to_json
  end

  get "/owners" do
    owners = Owner.all
    owners.to_json
  end

  post "/estates" do
    house = Estate.create(
      location: params[:location],
      image_url: params[:image_url],
      description: params[:description],
      rent: params[:rent],
    )
  end

  post "/owners" do
    owner = Owner.create(
      name: params[:name],
      email: params[:email],
    )
  end

  post "/blogs" do
    blog = Blog.create(
      comments: params[:comments],
      ratings: params[:ratings],
      likes: params[:likes]
    )
  end

  patch "/owners/:id" do
    owner = Owner.find(params[:id])
    owner.update(
      name: params[:name],
      email: params[:email],
    )
    owner.to_json
  end

  patch "/blogs/:id" do 
    blog = Blog.find(params[:id])
    blog.update(
      likes: params[:likes]
    )
  end

  delete "/blogs/:id" do
    blog = Blog.find(params[:id])
    blog.delete
    blog.to_json
  end

  delete "/estates/:id" do 
    house = Estate.find(params[:id])
    house.delete
    house.to_json
  end
end
