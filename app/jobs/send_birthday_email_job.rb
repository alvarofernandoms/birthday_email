# frozen_string_literal: true

class SendBirthdayEmailJob < ApplicationJob
  queue_as :default

  def perform(user)
    UserMailer.birthday(user).deliver_later
  end
end
