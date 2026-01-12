class ServerTimeController < ApplicationController
  def db_time
    @db_time = ActiveRecord::Base.connection.execute("SELECT CURRENT_TIMESTAMP;")[0]["CURRENT_TIMESTAMP"]
    @server_time = Time.now

    render :server_time
  end
end
