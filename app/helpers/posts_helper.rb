module PostsHelper
  def format_title(post)
    post.title.titleize
  end
end
