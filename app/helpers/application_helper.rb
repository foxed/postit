module ApplicationHelper
  def fix_url(url)
    url.starts_with?("http") ? url : "http://#{url}"
  end

  def pretty_date(dt)
  	dt.strftime("%m/%d/%Y 1:%M%P %Z") # format is : 09/22/2013 6:45pm
  end
end
