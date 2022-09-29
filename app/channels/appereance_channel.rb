class AppereanceChannel < ApplicationCable::Channel
  def subscribed
    current_user.update(online: true)
  end

  def unsubscribed
    current_user.update(online: false)
  end
end
