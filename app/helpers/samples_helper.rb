module SamplesHelper
  # TEMP HACK this would be a real link to the actual post
  def link_to_post_path(content_type)
    "/samples/#{content_type}"
  end
end
