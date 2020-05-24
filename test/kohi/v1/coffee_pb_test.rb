# frozen_string_literal: true

require 'minitest/autorun'

require_relative '../../../lib/kohi/v1/coffee_pb'

module Kohi
  module V1
    class TestCoffeePb < ::Minitest::Test
      def test_load_definitions
        milk = Milk.new(amount: 0.1)
        beans = Bean.new(amount: 0.2)
        coffee = Coffee.new(milk: milk, water: 0.7, beans: beans, ice: true)

        assert_in_delta coffee.milk.amount, 0.1
        assert_in_delta coffee.beans.amount, 0.2
        assert_in_delta coffee.water, 0.7
        assert coffee.ice
      end
    end
  end
end
