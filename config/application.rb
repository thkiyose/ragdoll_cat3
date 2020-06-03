require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)

module DevExam
  class Application < Rails::Application
    config.generators do |g|
      g.assets false
      g.helper false
    end
    config.action_view.field_error_proc = Proc.new { |html_tag, instance| html_tag }
  end
end
