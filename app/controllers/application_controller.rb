require 'pry'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # All Get Requests
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/lego_set/:id" do
    search = if (params[:id] == "random")
      LegoSet.find(rand(1..LegoSet.all.size)).to_json
    else
      LegoSet.find(params[:id]).to_json
    end
  end

  get "/lego_sets" do
    LegoSet.all.order(name: :ASC).to_json(include: { theme: { only: [:theme]}, notes: { only: [:body]}})
  end

  get "/themes" do
    Theme.all.order(theme: :ASC).to_json(only: :theme)
  end

  # All Post Requests
  post  "/lego_sets" do
    id_for_theme = Theme.find_or_create_by(theme: params[:theme]).id

    lego_set = LegoSet.create(
      name: params[:name],
      set_number: params[:setNumber],
      peices: params[:pieces],
      age: params[:age],
      theme_id: id_for_theme
    )
    lego_set.to_json
  end

  # All Patch Requests
  patch "/lego_sets/patch" do
    id_for_theme = Theme.find_or_create_by(theme: params[:theme]).id
    set_to_update = LegoSet.find(params[:set_id])

    set_to_update.update(
      name: params[:name],
      set_number: params[:setNumber],
      peices: params[:pieces],
      age: params[:age],
      theme_id: id_for_theme
    )
    set_to_update.to_json(include: { theme: { only: [:theme]}, notes: { only: [:body]}})
  end

  # All Delete Requests
  delete "/lego_set/:id" do
    set_to_delete = LegoSet.find_by(id: params[:id])
    set_to_delete.destroy
    set_to_delete.to_json
  end

end
