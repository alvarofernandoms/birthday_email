# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def birthday(user)
    @user = user
    I18n.locale = user.locale

    mail to: @user.email
  end
end
