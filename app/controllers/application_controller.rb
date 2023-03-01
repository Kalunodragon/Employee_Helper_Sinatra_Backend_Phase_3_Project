class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
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

  # get "/lego_sets/:value" do
  #   type = if (params[:value] == "alphabetical")
  #     LegoSet.all.order(name: :ASC).to_json
  #   elsif (params[:value] == "peices")
  #     LegoSet.all.order(peices: :DESC).to_json
  #   elsif (params[:value] == "set_number")
  #     LegoSet.all.order(set_number: :ASC).to_json
  #   elsif (params[:value] == "theme_id")
  #     LegoSet.all.order(theme_id: :ASC).to_json
  #   else (params[:value])
  #     LegoSet.all.to_json
  #   end
  # end

end
