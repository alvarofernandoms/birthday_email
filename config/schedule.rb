set :output, 'log/whenever.log'

every 1.day, at: '11:30 am' do
  runner 'CheckUsersBirthdayJob.perform_later'
end