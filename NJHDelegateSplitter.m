#import "NJHDelegateSplitter.h"

@implementation NJHDelegateSplitter

- (instancetype)initWithFirstDelegate:(id<NSObject>)firstDelegate secondDelegate:(id<NSObject>)secondDelegate {
    if (self = [super init]){
        _firstDelegate = firstDelegate;
        _secondDelegate = secondDelegate;
    }

    return self;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    SEL aSelector = [anInvocation selector];

    if ([self.firstDelegate respondsToSelector:aSelector]) {
        [anInvocation invokeWithTarget:self.firstDelegate];
    }

    if ([self.secondDelegate respondsToSelector:aSelector]) {
        [anInvocation invokeWithTarget:self.secondDelegate];
    }
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    NSMethodSignature *medthodSignature = nil;

    if ([(NSObject *)self.firstDelegate methodSignatureForSelector:aSelector]) {
        medthodSignature = [(NSObject *)self.firstDelegate methodSignatureForSelector:aSelector];
    }

    else if ([(NSObject *)self.secondDelegate methodSignatureForSelector:aSelector]) {
        medthodSignature = [(NSObject *)self.secondDelegate methodSignatureForSelector:aSelector];
    }

    return medthodSignature;
}

- (BOOL)respondsToSelector:(SEL)aSelector {
    BOOL respondsToSelector = NO;
    if ([self.firstDelegate respondsToSelector:aSelector] || [self.secondDelegate respondsToSelector:aSelector]) {
        respondsToSelector = YES;
    }
    return respondsToSelector;
}

@end
