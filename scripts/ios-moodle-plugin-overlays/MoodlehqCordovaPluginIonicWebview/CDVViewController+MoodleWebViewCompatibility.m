#import <Cordova/CDV.h>
#import <objc/runtime.h>
#import "CDVWKWebViewEngine.h" // dichiarazione category MoodleWebViewCompatibility

@implementation CDVViewController (MoodleWebViewCompatibility)

static char kMoodleStartPageKey;
static char kMoodleErrorURLKey;
static char kMoodleCommandQueueKey;
static char kMoodleUserAgentLockTokenKey;

- (void)setStartPage:(NSString *)startPage {
    objc_setAssociatedObject(self, &kMoodleStartPageKey, startPage, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)startPage {
    return objc_getAssociatedObject(self, &kMoodleStartPageKey);
}

- (void)setErrorURL:(NSString *)errorURL {
    objc_setAssociatedObject(self, &kMoodleErrorURLKey, errorURL, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)errorURL {
    return objc_getAssociatedObject(self, &kMoodleErrorURLKey);
}

- (void)setCommandQueue:(id<MoodleCDVCommandQueue>)commandQueue {
    objc_setAssociatedObject(self, &kMoodleCommandQueueKey, commandQueue, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id<MoodleCDVCommandQueue>)commandQueue {
    return objc_getAssociatedObject(self, &kMoodleCommandQueueKey);
}

- (void)setUserAgentLockToken:(id)userAgentLockToken {
    objc_setAssociatedObject(self, &kMoodleUserAgentLockTokenKey, userAgentLockToken, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)userAgentLockToken {
    return objc_getAssociatedObject(self, &kMoodleUserAgentLockTokenKey);
}

@end
