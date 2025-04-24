# frozen_string_literal: true

require 'test_helper'
require 'minitest/autorun'
require_relative '../lib/no_geese'

class NoGeeseTest < Minitest::Test
  def test_no_geese_message_on_model_call
    # Simulate an ActiveRecord operation
    assert_output(/You can relax. There are no geese here./) do
      ActiveSupport::Notifications.instrument('active_record.sql') do
        # Simulate a database query or operation
      end
    end
  end
end
