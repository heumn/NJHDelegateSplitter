@import Foundation;
@import UIKit;

/**
 * The NJHDelegateSplitter class is created to allow you to have two delegates. 
 * For example, if you want to have one UITableViewDelegate delegate and a separate UIScrollViewDelegate for the same UITableView
 */
@interface NJHDelegateSplitter : NSObject <NSObject>

/**
 * The first delegate.
 */
@property (nonatomic, weak) id<NSObject> firstDelegate;

/**
 * The second delegate.
 */
@property (nonatomic, weak) id<NSObject> secondDelegate;

/**
 * A convenience initializer that sets the first and the second delegate.
 * @param The existing layout attributes.
 * @return A delegate splitter instance, or nil of initialization fails.
 */
- (instancetype)initWithFirstDelegate:(id<NSObject>)firstDelegate secondDelegate:(id<NSObject>)secondDelegate;

@end

