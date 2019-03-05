module Datadog
  module Contrib
    module GRPC
      # gRPC integration constants
      module Ext
        APP = 'grpc'.freeze
        ENV_ANALYTICS_ENALBED = 'DD_GRPC_ANALYTICS_ENABLED'.freeze
        ENV_ANALYTICS_SAMPLE_RATE = 'DD_GRPC_ANALYTICS_SAMPLE_RATE'.freeze
        SERVICE_NAME = 'grpc'.freeze
        SPAN_CLIENT = 'grpc.client'.freeze
        SPAN_SERVICE = 'grpc.service'.freeze
      end
    end
  end
end
