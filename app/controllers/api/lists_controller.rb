class Api::ListsController < ApiController
   #before_action :authenticated?

   def create
    user = User.find(params[:user_id])
    list = user.lists.build(list_params)

    if list.save
      render json: list, status: 201
    else
      render json: { errors: 'Need List Name' }, status: :unprocessable_entity
    end
  end


  private

  def list_params
    params.require(:list).permit(:name, :permissions)
  end

end
