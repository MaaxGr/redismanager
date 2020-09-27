class ConnectionsController < ApplicationController

  def index
    @connections = Connection.all
  end

  def show
    @connection = Connection.find(params[:id])

    redis = Redis.new(host: @connection.hostname, port: @connection.port)

    @keys = redis.keys()
  end

  def new
  end

  def create
    @connection = Connection.new(connection_params)
    @connection.save
    redirect_to @connection
  end

  private
    def connection_params
      params.require(:connection).permit(:name, :hostname, :port, :password)
    end

end
