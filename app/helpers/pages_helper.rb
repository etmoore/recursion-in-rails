module PagesHelper

  def page_list(pages)
    html = "<ul>".html_safe
    pages.each do |page|
      html += "<li>#{link_to page.title, page_path(page)}</li>".html_safe
    end
    html += "</ul>".html_safe
    html
  end

  # The %Q{} syntax is just another way of creating a string
  # All strings must be made `html_safe`
  def page_breadcrumbs(page)
    html = '<ol class="breadcrumb">'.html_safe
    html += %Q{<li>#{link_to "Pages", pages_path }</li>}.html_safe
    html += %Q{<li>Replace me...</li>}.html_safe
    html += %Q{<li class="active">The last one gets an active class</li>}.html_safe
    html += "</ol>".html_safe
    html
  end

end
