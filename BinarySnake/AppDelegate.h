//
//  AppDelegate.h
//  BinarySnake
//
//  Created by 科盛数聚 on 2019/3/14.
//  Copyright © 2019年 John. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

