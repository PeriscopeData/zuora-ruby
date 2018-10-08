# frozen_string_literal: true

module ZuoraPeriscope
  class Object < Hash
    include Hashie::Extensions::MethodAccess
  end
end
