class ServerTimeController < ApplicationController
  def db_time
    @db_time= ActiveRecord::Base.connection.execute("SELECT NOW();").values[0][0]
    @server_time = Time.now

    render :server_time
  end
end
