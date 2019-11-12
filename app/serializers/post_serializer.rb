class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers


  attributes :id, :user_id, :post_image, :category_id

  def post_image
    Rails.application.routes.url_helpers.rails_blob_path(object.post_image, only_path:true)
  end

end
