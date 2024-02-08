module ApplicationHelper

  def formatted_date(date)
    date.strftime('%A, %d %b, %Y')
  end
end
