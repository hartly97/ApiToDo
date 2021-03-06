class Api::UsersController < ApiController

  before_action :authenticated?

  def index
      users = User.all
      render json: users, each_serializer: UserSerializer
  end

  def create
    user = User.new(user_params)

     if user.save
       # # 5 - look for a serializer named UserSerializer and use it to serialize user.
       render json: user
     else
       # # 6 - If saving the user fails (due to a missing user name or password)
       render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
     end
   end

   def destroy
     begin
       user = User.find(params[:id])
       user.destroy
       # #1
       render json: {}, status: :no_content
     rescue ActiveRecord::RecordNotFound
       render :json => {}, :status => :not_found
     end
   end

   private
   def user_params
     params.require(:user).permit(:name, :password)
   end
end
