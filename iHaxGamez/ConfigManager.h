//
//  ConfigManager.h
//  iHaxGamez
//
//  Created by Xiliang Chen on 11-12-15.
//  Copyright (c) 2011年 Xiliang Chen. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Carbon/Carbon.h>

@interface ConfigManager : NSObject

+ (void)installHotKeys;

+ (NSArray *)hotKeyConfigs;

+ (void)openSearchWindow;

@end

@interface HotKeyConfig : NSObject {
@private
    EventHotKeyRef _hotKeyRef;
    EventHotKeyID _hotKeyID;
    BOOL _enabled;
    UInt32 _key;
    UInt32 _modifiers;
}

@property (nonatomic, strong) NSString *name;
@property (nonatomic) BOOL enabled;
@property (nonatomic) UInt32 key;
@property (nonatomic) UInt32 modifiers;
@property (nonatomic) SEL selector;

@end
