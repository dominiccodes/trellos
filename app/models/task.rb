class Task < ApplicationRecord
	belongs_to :user
	
  FORMAT = AutoHtml::Pipeline.new(
    AutoHtml::HtmlEscape.new,
    AutoHtml::Markdown.new,
  )

  def text=(t)
    super(t)
    self[:text_html] = FORMAT.call(t)
  end
end

