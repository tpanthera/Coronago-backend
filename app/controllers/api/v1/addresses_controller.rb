class Api::V1::AddressesController < ApiController
  before_action :validate_session

  def create
    address = Address.new(address_params)
    if address.save
      render json: {message: 'Address added', user: address.as_json.except(:created_at, :updated_at)}
    else
      render json: {message: 'Failed to add address'}, status: :unprocessable_entity
    end
  end

  private

  def address_params
    params.require(:address).permit(:latitude, :longitude, :tag)
  end
end