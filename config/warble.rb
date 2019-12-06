Warbler::Config.new do |config|
  config.features = %w(compiled)
  config.includes = FileList["Gemfile*"] + FileList["bin/*"]
  config.executable = "bin/example.rb"
  config.bytecode_version = "1.8"
  config.jar_name = 'sorbet-jruby-example'
end
