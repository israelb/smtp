module SMTP
  class Email
    module Controls
      module Email
        def self.to
          "recipient@example.com"
        end

        def self.from
          "sebderr@example.com"
        end

        def self.subject
          "Test Subject"
        end

        def self.body
          "Test Body"
        end
      end
    end
  end
end
