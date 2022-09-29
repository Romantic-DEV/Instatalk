class AppereanceChannel < ApplicationCable::Channel
  def subscribed
    current_user.update(online: true)

    stream_from "appereance_channel"

    give_online_users
  end

  def unsubscribed
    current_user.update(online: false)
  end

  def give_online_users
    users = User.where(online: true).map(&:nickname)
    ActionCable.server.broadcast "appereance_channel", message: users
  end
end
