module Commons

  extend ActiveSupport::Concern

  included do
    # Add any callbacks here later.
  end

  def model_obj_saver(model_obj)
    model = model_obj.class.name
    if model_obj.save
      render json: { response: "#{model} created" }, status: 201
    else
      render json: { error: "Could not create #{model}" }, status: 501
    end
  end

end