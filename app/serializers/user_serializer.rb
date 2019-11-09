class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :username, :image
  def image
    Rails.application.routes.url_helpers.rails_blob_path(object.image, only_path:true)
  end

end
