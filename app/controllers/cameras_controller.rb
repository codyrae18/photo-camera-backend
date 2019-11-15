class CamerasController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :create, :update]


  # GET /cameras
  def index
    @cameras = Camera.all

    render json: @cameras
  end

  # GET /cameras/1
  def show
    render json: @camera
  end

  # POST /cameras
  def create
    @camera = Camera.new(camera_params)

    if @camera.save
      render json: @camera, status: :created, location: @camera
    else
      render json: @camera.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cameras/1
  def update
    if @camera.update(camera_params)
      render json: @camera
    else
      render json: @camera.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cameras/1
  def destroy
    @camera.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camera
      @camera = Camera.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def camera_params
      params.fetch(:camera, {})
    end
end
