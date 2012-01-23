guard 'coffeescript',
  :output => 'tmp/spec/javascripts' do
    watch(%r{^spec/javascripts/(.+)[sS]pec\.js\.coffee$})
end

guard 'coffeescript',
  :output => 'tmp/spec/javascripts/helpers' do
    watch(%r{^spec/javascripts/helpers/(.+)\.js\.coffee$})
end

jquery_path = File.join(Gem.loaded_specs['jquery-rails'].full_gem_path, 'vendor/assets/javascripts')
guard 'sprockets',
  :destination => 'tmp/javascripts',
  :asset_paths => ['vendor/assets/javascripts', jquery_path] do
    watch('vendor/assets/javascripts/joosy.js.coffee')
end

guard 'shell' do
  watch(%r{^vendor/assets/javascripts/(?!joosy\.js).+\.js}) do
    `touch vendor/assets/javascripts/joosy.js.coffee`
  end
end

puts 'HI! Hit <Enter> to generate all stuff.'