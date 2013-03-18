module ApplicationHelper

  def title(content)
    content_for(:title, content)
  end

  def page_title
    delimiter = "| "
    if content_for?(:title)
      "#{delimiter}#{content_for(:title)}"
    end
  end

  def icon(name, title="")
    raw "<i class='icon-#{name}'></i>#{title}"
  end

end
