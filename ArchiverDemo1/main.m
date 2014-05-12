//
//  main.m
//  ArchiverDemo1
//
//  Created by Tom on 5/12/14.
//  Copyright (c) 2014 Tom. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
//-------------NSKeyedArchiver--------------
        /****归档对象****/
//        NSArray *array = @[@"abc", @"123", @1234];
//        NSString *homePath = NSHomeDirectory();
//        NSString *path = [homePath stringByAppendingPathComponent:@"test.archive"];
//        
//        NSLog(@"path: %@", path);
//        
//        BOOL success = [NSKeyedArchiver archiveRootObject:array toFile:path];
//        if (success) {
//            NSLog(@"archive success");
//        }
        
        /****解归档****/
//        NSString *homePath = NSHomeDirectory();
//        NSString *path = [homePath stringByAppendingPathComponent:@"test.archive"];
//        
//        NSArray *array = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
//        NSLog(@"%@", array);
        
//-------------NSData and NSKeyedArchiver--------------
//        NSString        *homePath   = NSHomeDirectory();
//        NSString        *path       = [homePath stringByAppendingPathComponent:@"archiver2.archive"];
//        NSMutableData   *data       = [NSMutableData data];
//        NSKeyedArchiver *archiver   = [[NSKeyedArchiver alloc]initForWritingWithMutableData: data];
//        NSArray         *array      = @[@"jack", @"tom"];
//
//        [archiver encodeInt:100 forKey:@"age"];
//        [archiver encodeObject:array forKey:@"names"];
//        [archiver finishEncoding];
//        [archiver release];
//        
//        BOOL success = [data writeToFile:path atomically:YES];
//        if (success) {
//            NSLog(@"archive success");
//        }
        
        NSString *homePath = NSHomeDirectory();
        NSString *path = [homePath stringByAppendingPathComponent:@"archiver2.archive"];
        
        NSData *data = [NSData dataWithContentsOfFile:path];
        NSKeyedUnarchiver *unArchiver = [[NSKeyedUnarchiver alloc]initForReadingWithData:data];
        
        int age = [unArchiver decodeIntForKey:@"age"];
        NSArray *namesArray = [unArchiver decodeObjectForKey:@"names"];
        [unArchiver release];
        NSLog(@"age = %d, array = %@", age, namesArray);
    }
    return 0;
}

