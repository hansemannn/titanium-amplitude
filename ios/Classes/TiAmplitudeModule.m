/**
 * titanium-amplitude
 *
 * Created by Your Name
 * Copyright (c) 2021 Your Company. All rights reserved.
 */

#import "TiAmplitudeModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import <Amplitude/Amplitude.h>

@implementation TiAmplitudeModule

#pragma mark Internal

- (id)moduleGUID
{
  return @"fc1beffe-515b-4549-9be3-155483a95b6d";
}

- (NSString *)moduleId
{
  return @"ti.amplitude";
}

- (void)initialize:(id)apiKey
{
  ENSURE_SINGLE_ARG(apiKey, NSString);
  [[Amplitude instance] initializeApiKey:apiKey];
}

- (void)logEvent:(NSArray *)args
{
  NSString *eventName = (NSString *)[args objectAtIndex:0];

  if (args.count == 2) {
    NSDictionary *params = (NSDictionary *)[args objectAtIndex:1];
    [[Amplitude instance] logEvent:eventName withEventProperties:params];
  } else {
    [[Amplitude instance] logEvent:eventName];
  }
}

@end
