class ServerController < ApplicationController
  def server_time
    @server_time = Time.now
    render :server_time
  end
end
