class PostmanWorker
  include Sidekiq::Worker

  def perform(content, count)
    content = JSON.load(content)
    ReminderMailer.contact_email(content['user'], content['email'], content['message'], content['friend']).deliver
  end

   sidekiq_retries_exhausted do |msg|
    Sidekiq.logger.warn "Failed #{msg['class']} with #{msg['args']}: #{msg['error_message']}"
  end

end
