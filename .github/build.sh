curl -Ls https:  install.tuist.io | bash
swiftLint install
tuist install 4.20.0
tuist fetch
tuist generate
xcodebuild clean -quiet
xcodebuild build-for-testing\
    -workspace 'TodoList.xcworkspace' \
    -scheme 'TodoList' \
    -destination 'platform=iOS Simulator,name=iPhone 14 Pro'