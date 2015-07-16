# NJHDelegateSplitter
The NJHDelegateSplitter class is created to allow you to have two delegates. For example, if you want to have one UITableViewDelegate delegate and a separate UIScrollViewDelegate for the same UITableView.

## How do I install it?
### CocoaPods Installation
1. Add `pod ‘NJHDelegateSplitter’` to your project's Podfile.
2. Run `pod install`.

### Manual Installation
1. Clone this repo or click "Download ZIP" on the side.
2. Copy all of the files in the "NJHDelegateSplitter" folder into your project. You probably want to check the box that says "Copy items if needed" as well as make sure that the target you want to add the files to is checked.

This was created as I did not want to add BLKFlexibleHeightBar to all of my apps where this is where I discovered this pattern. You should totally check out his awesome navigationbar here https://github.com/bryankeller/BLKFlexibleHeightBar
