# frozen_string_literal: true

class CheckUsersBirthdayJob < ApplicationJob
  @users = User.where(birthdate: Time.zone.today)
  @users.each do |user|
    SendBirthdayEmailJob.perform_later(user) if user.consented_to?(Consent.find_by(key: "email"))
  end
end
