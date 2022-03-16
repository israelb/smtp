module SMTP
  class Email
    module Substitute
      def self.build
        instance = Email.build
        sink = Email.register_telemetry_sink(instance)
        instance.sink = sink
        instance
      end

      class Email < ::SMTP::Email
        attr_accessor :sink

        def self.build
          instance = new
          instance.configure
          instance
        end

        def configure
          ::Telemetry.configure(self)
        end

        def send_email(to, from, subject, body)
          pp "Sending substitute email..."
        end

        def sent?(&block)
          sent = sink.recorded_once? do |record|
            record.signal == :sent
          end

          if !sent
            return false
          end

          if block.nil?
            return true
          end

          sink.recorded_once? do |record|
            block.call(
              record.data.to,
              record.data.from,
              record.data.subject
            )
          end
        end
      end
    end
  end
end
