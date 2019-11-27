module PaperTrail
  module Background
    module Sidekiq
      def perform(version_class, attributes, event)
        puts "VERSION ATTRIBUTES"
        puts attributes.inspect
        version = version_class.constantize.create!(JSON.parse(attributes)) if attributes.present?
      end
    end
  end
end
