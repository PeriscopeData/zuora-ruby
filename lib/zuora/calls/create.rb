# frozen_string_literal: true

module ZuoraPeriscope
  module Calls
    class Create < Zuora::Calls::Upsert
      def call_name
        :create
      end
    end
  end
end
