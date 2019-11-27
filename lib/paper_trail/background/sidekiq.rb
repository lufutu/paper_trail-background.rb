module PaperTrail
  module Background
    module Sidekiq
      def perform(version_class, attributes, event)
        version = version_class.constantize.create!(attributes.instance_of?(String) ? JSON.parse(attributes) : attributes)
      end
    end
  end
end
