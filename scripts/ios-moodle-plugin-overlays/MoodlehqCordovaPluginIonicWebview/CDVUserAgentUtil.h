#import <Foundation/Foundation.h>

/**
 * Shim: Cordova iOS distribuito via SPM (Capacitor 8) non espone più CDVUserAgentUtil nell’umbrella pubblico.
 * L’API originale rilasciava un lock sullo user-agent del WKWebView; qui usiamo un no-op sicuro se il token è nil.
 */
@interface CDVUserAgentUtil : NSObject

+ (void)releaseLock:(id _Nullable)lockToken;

@end
