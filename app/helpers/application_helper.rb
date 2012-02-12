module ApplicationHelper
  def title
    base_title = "zum Blog abgewandelte 'sample_app'"
    if @title.nil?
     base_title
    else 
     "#{base_title} | #{@title}"
    end
  end
end

