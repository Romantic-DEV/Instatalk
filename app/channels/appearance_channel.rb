class AppearanceChannel < ApplicationCable::Channel
  def subscribed
    current_user.update(online: true)
    stream_from "appearance_channel"
    user_appearance_action(current_user.id, "appear")
  end

  def unsubscribed
    current_user.update(online: false)
    user_appearance_action(current_user.id, "disappear")
  end

  def user_appearance_action(user_id, action)
    ActionCable.server.broadcast "appearance_channel", user_id: user_id, action: action, nickname: current_user.nickname
  end
end
