# module UsersHelper
#
#   # Returns the Gravatar (http://gravatar.com/) for the given user.
#   def gravatar_for(user, options = { size: 50 })
#     gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
#     size = options[:size]
#     gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
#     image_tag(gravatar_url, alt: user.name, class: "gravatar")
#   end
# end


module UsersHelper

  # 根据电子邮件来生成用户头像
  # 返回指定用户的 Gravatar
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

end
