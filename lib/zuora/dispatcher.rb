# frozen_string_literal: true

module ZuoraPeriscope
  module Dispatcher
    # Maps a SOAP call name and args to its corresponding class.

    class << self
      def create
        ZuoraPeriscope::Calls::Create
      end

      def update
        ZuoraPeriscope::Calls::Update
      end

      def login
        ZuoraPeriscope::Calls::Login
      end

      def subscribe
        ZuoraPeriscope::Calls::Subscribe
      end

      def amend
        ZuoraPeriscope::Calls::Amend
      end

      def query
        ZuoraPeriscope::Calls::Query
      end

      def query_more
        ZuoraPeriscope::Calls::QueryMore
      end

      def delete
        ZuoraPeriscope::Calls::Delete
      end

      def generate
        ZuoraPeriscope::Calls::Generate
      end

      def method_missing
        raise "Unknown SOAP API call name: #{call_name}.
              Must be one of :create, :update, :login,
              subscribe, :amend, or :delete."
      end
    end
  end
end
