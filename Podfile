target 'TableView' do
    # IMPORTANT: Make sure use_frameworks! is included at the top of the file
    use_frameworks!

    pod 'UICircularProgressRing'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |configuration|
      configuration.build_settings['SWIFT_VERSION'] = "3.0"
    end
  end
end
