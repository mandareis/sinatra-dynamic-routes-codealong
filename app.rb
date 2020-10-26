require_relative "config/environment"
require "pry"

class App < Sinatra::Base

  # This is a sample static route.
  get "/" do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    # @nums = params[:num1 / :num2]
    "#{params[:num1].to_i * params[:num2].to_i}"
  end
end
