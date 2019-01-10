class NotifyMailer < ApplicationMailer
    def notify_kristen(table)
        @table = table
    mail(to: 'ryanmont@gmail.com', subject: "New Attendee Activity")
    end
end
