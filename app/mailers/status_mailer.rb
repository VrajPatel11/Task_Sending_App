# frozen_string_literal: true

class StatusMailer < ApplicationMailer
  def new_status_email
    @status = params[:status]
    mail(to: 'patelvraj1132000@gmail.com', subject: "Training-Status-#{@status.date}")
  end
end
