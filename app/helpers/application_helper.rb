module ApplicationHelper


  # used to hide the cart if empty - see application.html.erb
  def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes['style'] = "display: none"
    end
    content_tag('div', attributes, &block)
  end

end
