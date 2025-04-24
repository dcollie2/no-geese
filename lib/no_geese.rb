# frozen_string_literal: true

require 'rails/railtie'

# This module is designed to reassure you that no geese are present in the application.
module NoGeese
  # When a model is called, display a message ensuring that no geese are present in the application.
  class Railtie < ::Rails::Railtie
    initializer 'no_geese.display_message_on_model_call' do
      ActiveSupport::Notifications.subscribe(/active_record/) do |_name, _start, _finish, _id, _payload|
        puts 'You can relax. There are no geese here.'
      end
    end
  end

  def self.gem_version
    Gem::Version.new('0.1.0')
  end
end
