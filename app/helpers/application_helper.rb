module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "MYNesia"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def gravatar_for(user)
  	gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
  	gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id}"
  	image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
