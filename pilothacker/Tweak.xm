%hook PilotAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    BOOL flag = %orig;
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"🍻 Tweak has installed" message:nil delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
#pragma clang diagnostic pop

    return flag;
}
%end

%hook SubscriptionsManager
+ (BOOL)deviceOwnsBaseSubscription:(id)arg1 subscriptions:(id)arg2 time:(double)arg3 {
    return YES;
}

- (BOOL)deviceOwnsBaseSubscription {
	return YES;
}
%end

%hook FeatureManager
+ (BOOL)featureSubscriptionIsValid:(long long)arg1 {
	return YES;
}
%end

%hook DownloadsDatabaseManager
- (BOOL)downloadHasSubscription:(id)arg1 {
	return YES;
}
%end