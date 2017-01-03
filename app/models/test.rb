class Test < ActiveRecord::Base
  has_many :tabs
  
  def severity_title
    if self.severity == "danger"
      "<span class='label label-danger'>Danger</span>".html_safe
    elsif self.severity == "warning"
      "<span class='label label-warning'>Warning</span>".html_safe
    elsif self.severity == "info"
      "<span class='label label-info'>Low</span>".html_safe
    elsif self.severity == "success"
      "<span class='label label-success'>None</span>".html_safe
    else
      "Error".html_safe
    end
  end
end