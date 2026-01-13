class ClocksController < ApplicationController
  def index
    @db_time= ActiveRecord::Base.connection.execute("SELECT NOW();").values[0][0]
    @server_time = Time.now
  end
end
