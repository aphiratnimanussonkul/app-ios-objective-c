#import <Foundation/Foundation.h>
@protocol SampleProtocolDelegate <NSObject>
@required
- (void)processCompleted;
@end

@interface SampleProtocol : NSObject {
    id <SampleProtocolDelegate> _delegate;
}

@property (nonatomic, strong) id delegate;
-(void)startSampleProcess;

@end
