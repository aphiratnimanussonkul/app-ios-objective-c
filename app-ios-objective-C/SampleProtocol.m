#import "SampleProtocol.h"

@implementation SampleProtocol

-(void)startSampleProcess {
    [NSTimer scheduledTimerWithTimeInterval: 3 target:self.delegate selector:@selector(processCompleted) userInfo:nil repeats:NO];
}

@end
