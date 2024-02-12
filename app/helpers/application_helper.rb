module ApplicationHelper

  def formatted_date(date)
    date.strftime('%A, %d %b, %Y') if date.present?
  end
end
