class QuoteRequestsController < ApplicationController
  before_action :set_quote_request, only: [:show, :update, :destroy]

  def index
    @quote_requests = QuoteRequest.all

    render json: @quote_requests
  end

  def show
    render json: @quote_request
  end

  def create
    @quote_request = QuoteRequest.new(quote_request_params)

    if @quote_request.save
      render json: @quote_request, status: :created
    else
      render json: @quote_request.errors, status: :unprocessable_entity
    end
  end

  def update
    if @quote_request.update(quote_request_params)
      head :no_content
    else
      render json: @quote_request.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @quote_request.destroy

    head :no_content
  end

  def set_quote_request
    @quote_request = QuoteRequest.find(params[:id])
  end
  private :set_quote_request

  # TODO: find out what should be within the permit parentheses
  def quote_request_params
    params.require(:quote_request).permit(:email, :phone, :event_type, :event_date, :color_scheme, :description)
  end
  private :quote_request_params



end
