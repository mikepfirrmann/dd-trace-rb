require 'securerandom'

module Datadog
  module Runtime
    # For runtime identity
    module Identity
      module_function

      # Retrieves number of classes from runtime
      def id
        @pid ||= Process.pid
        @id ||= SecureRandom.uuid

        # Check if runtime has changed, e.g. forked.
        if Process.pid != @pid
          @pid = Process.pid
          @id = SecureRandom.uuid
        end

        @id
      end
    end
  end
end
