# To deliver this notification:
#
# YouthBirthdayNotification.with(post: @post).deliver_later(current_user)
# YouthBirthdayNotification.with(post: @post).deliver(current_user)

class YouthBirthdayNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  #
  param :casa_case

  # Define helper methods to make rendering easier.

  def message
    "Your youth, case number: #{params[:casa_case].case_number} has a birthday next month."
  end

  def title
    "Youth Birthday Notification"
  end

  def url
    casa_case_path(params[:casa_case].id)
  end
end
