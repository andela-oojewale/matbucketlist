module Commons
  extend ActiveSupport::Concern

  def model_obj_saver(model_obj)
    model = model_obj.class.name
    if model_obj.save
      render json: model_obj, status: 201
    else
      render json: { error: "Could not create #{model}" }, status: 501
    end
  end

  def permitted
    params.permit(:q, :page, :limit, :name, :id, :status, :bucketlist_id)
  end

  def user_params
    params.permit(:username, :password)
  end
end
