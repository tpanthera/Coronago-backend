class Api::V1::UsersController < ApiController
  def create
    user = User.new(user_params)
    if user.save
      render json: {message: 'User created', user: user.as_json.except(:created_at, :updated_at)}
    else
      render json: {message: 'Failed to create user'}, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :mobile_number, :age, :gender)
  end
end