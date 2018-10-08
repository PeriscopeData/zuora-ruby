# frozen_string_literal: true

module ZuoraPeriscope
  module Calls
    class Update < ZuoraPeriscope::Calls::Upsert
      def call_name
        :update
      end
    end
  end
end
