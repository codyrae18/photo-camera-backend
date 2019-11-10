class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers


  attributes :post_image

  def post_image
    Rails.application.routes.url_helpers.rails_blob_path(object.post_image, only_path:true)
  end

end
