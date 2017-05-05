module UserHelperHelper
  def avatar_for(user)
    if user.avatar?
      image_tag user.avatar
    else
      image_tag "default.png"
    end

  end
end
