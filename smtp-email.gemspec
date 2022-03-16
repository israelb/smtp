# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = "smtp-email"
  s.version = "0.0.0"
  s.summary = " "
  s.description = " "

  s.authors = ["email@domain.com"]
  s.homepage = "http://domain.com"
  s.licenses = ["TODO"]

  s.require_paths = ["lib"]
  s.files = Dir.glob("{lib}/**/*")
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency "mail"
  s.add_runtime_dependency "evt-log"
  s.add_runtime_dependency "evt-settings"
  s.add_runtime_dependency "evt-telemetry"
  
  s.add_development_dependency "test_bench"
  s.add_development_dependency "byebug"
end
