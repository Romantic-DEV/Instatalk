class AppearanceChannel < ApplicationCable::Channel
  def subscribed
    stream_from "appearance_channel"

    debugger
    unless current_user.online == true
      current_user.update(online: true)
      user_appearance_action(current_user.id, "appear")
    end
  end

  def unsubscribed
    unless ActionCable.server.connections.map(&:current_user).include?(current_user)
      current_user.update(online: false)
      user_appearance_action(current_user.id, "disappear")
    end
  end

  def user_appearance_action(user_id, action)
    ActionCable.server.broadcast "appearance_channel", user_id: user_id, action: action, nickname: current_user.nickname
  end
end
