//
//  QBEchoObject.m
//  QBEchoObject
//
//  Created by Glebus on 03.10.12.
//
//

#import "QBEchoObject.h"
#import <Quickblox/Quickblox.h>

@implementation QBEchoObject

static QBEchoObject *instance = nil;

+ (QBEchoObject *)instance
{
    @synchronized(self)
    {
        if (!instance)ff
        {
            instance = self.new;
        }
    }
	
    return instance;
}

- (void)completedWithResult:(Result *)result context:(void *)contextInfo
{
    ((__bridge void (^)(Result * result))(contextInfo))(result);
    Block_release(contextInfo);
}

- (void)completedWithResult:(Result *)result
{
	
}

@end
