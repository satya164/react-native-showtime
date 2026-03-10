#import "RNShowTime.h"
#if __has_include("RNShowTime/RNShowTime-Swift.h")
#import "RNShowTime/RNShowTime-Swift.h"
#else
#import "RNShowTime-Swift.h"
#endif
#import <React/RCTConvert.h>

@implementation RNShowTime

RCT_EXPORT_MODULE(ShowTime)

- (void)configure:(JS::NativeShowTime::NativeShowTimeOptions &)config {
  const auto configCopy = config;

  dispatch_async(dispatch_get_main_queue(), ^{
    if (configCopy.enabled() != nil) {
      [ShowTimeConfigHelper setEnabled:configCopy.enabled()];
    }

    if (configCopy.fillColorAuto().has_value() && configCopy.fillColorAuto().value()) {
      [ShowTimeConfigHelper setFillColorAuto];
    } else if (configCopy.fillColor().has_value()) {
      UIColor *color = [RCTConvert UIColor:@(configCopy.fillColor().value())];

      if (color != nil) {
        [ShowTimeConfigHelper setFillColor:color];
      }
    }

    if (configCopy.strokeColor().has_value()) {
      UIColor *color = [RCTConvert UIColor:@(configCopy.strokeColor().value())];

      if (color != nil) {
        [ShowTimeConfigHelper setStrokeColor:color];
      }
    }

    if (configCopy.strokeWidth().has_value()) {
      [ShowTimeConfigHelper setStrokeWidth:configCopy.strokeWidth().value()];
    }

    if (configCopy.size().has_value()) {
      [ShowTimeConfigHelper setSize:configCopy.size().value()];
    }

    if (configCopy.disappearAnimation() != nil) {
      [ShowTimeConfigHelper setDisappearAnimation:configCopy.disappearAnimation()];
    }

    if (configCopy.disappearDelay().has_value()) {
      [ShowTimeConfigHelper setDisappearDelay:configCopy.disappearDelay().value()];
    }

    if (configCopy.shouldShowMultipleTapCount().has_value()) {
      [ShowTimeConfigHelper setShouldShowMultipleTapCount:configCopy.shouldShowMultipleTapCount().value()];
    }

    if (configCopy.multipleTapCountTextColor().has_value()) {
      UIColor *color = [RCTConvert UIColor:@(configCopy.multipleTapCountTextColor().value())];

      if (color != nil) {
        [ShowTimeConfigHelper setMultipleTapCountTextColor:color];
      }
    }

    if (configCopy.shouldShowForce().has_value()) {
      [ShowTimeConfigHelper setShouldShowForce:configCopy.shouldShowForce().value()];
    }

    if (configCopy.shouldIgnoreApplePencilEvents().has_value()) {
      [ShowTimeConfigHelper setShouldIgnoreApplePencilEvents:configCopy.shouldIgnoreApplePencilEvents().value()];
    }
  });
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
  (const facebook::react::ObjCTurboModule::InitParams &)params
{
  return std::make_shared<facebook::react::NativeShowTimeSpecJSI>(params);
}

@end
