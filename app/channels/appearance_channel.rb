class AppearanceChannel < ApplicationCable::Channel
  def subscribed
    stream_from "appearance_channel"

    @list_name = 'current_users_nicknames'
    $redis.rpush(@list_name, nickname)

    user_appearance_action
  end

  def unsubscribed
    $redis.lrem(@list_name, 1, nickname)

    user_appearance_action
  end

  def user_appearance_action
    @users = $redis.lrange(@list_name, 0, -1).uniq
    ActionCable.server.broadcast "appearance_channel", users: @users
  end

  def nickname
    current_user.nickname
  end
end
