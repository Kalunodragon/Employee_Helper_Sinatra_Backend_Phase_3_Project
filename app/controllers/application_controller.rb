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
    LegoSet.all.to_json
  end

end
