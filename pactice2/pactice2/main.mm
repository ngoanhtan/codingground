//
//  main.m
//  helloApple
//
//  Created by robe on 7/17/13.
//  Copyright (c) 2013 robe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Added.h"
#import "helloC.h"

void bai1()
{
    NSMutableArray *mArray = [NSMutableArray arrayWithCapacity:3];
    NSString * tmp = @"hello";
    [mArray addObject:tmp];
    [mArray addObject:tmp];
    [mArray addObject:tmp];
    [mArray addObject:tmp];
    //[mArray insertObject:tmp atIndex:-1];
    NSLog(@"%@",[mArray objectAtIndex:3]);
}
void bai2()
{
    NSMutableDictionary* mDirect = [NSMutableDictionary new];
    [mDirect setObject:@"nguyen van cha" forKey:@"father"];
    [mDirect setObject:@"nguyen thi me" forKey:@"mother"];
    [mDirect setObject:@"nguyen thi me" forKey:@"conroi's mother"];
    [mDirect setObject:@"nguyen van con" forKey:@"child"];
    [mDirect setObject:@"nguyen van con roi" forKey:@"child"];
    
    NSLog(@"%@",[mDirect objectForKey:@"child"]);
    NSLog(@"%@",[mDirect objectForKey:@"con de"]);
}
void bai3()
{
    NSNumber* num1 = [NSNumber numberWithFloat:3.4f] ;
    NSNumber* num2 = [NSNumber numberWithFloat:1.4f] ;
    NSNumber* num3 = [Added sumNumber:[NSNumber numberWithFloat:3.4f]:[NSNumber numberWithFloat:1.4f]];
    NSLog(@"sum %@ + %@ = %@",num1,num2,num3) ;

    
}
void bai4()
{
    NSArray *arr = @[@"Raspberry",
                      @"Peach",
                      @"BlackBerry",
                      @"Apple",
                      @"BlueBerry",
                      @"Banana"];
    
    NSArray *sortedArray = [arr sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    NSLog(@"%@",sortedArray);
}
void bai5()
{
    unsigned char buf[50];
    char * tmp;
    char * tmp2;
    NSMutableData* mulData = [NSMutableData dataWithBytes:buf length:50];

    tmp = (char*)[mulData mutableBytes];
    
    for (int i = 0;i< [mulData length];i++)
    {
        tmp[i] = i;
    }

    [mulData writeToFile:@"text.txt" atomically:true];
    
    NSData* data = [NSData dataWithContentsOfFile:@"text.txt"];
    
    tmp2 =  (char*)[data bytes];
    for (int i = 0;i< [data length];i++)
    {
        NSLog(@"%d",tmp2[i]);
    }
}
void bai7()
{
    // literal

    NSNumber *intt = @23;
    NSNumber *floatt = @1.4f;
    NSNumber *yes = @YES;
    NSLog(@"literal");

    NSLog(@"%@",intt);
    NSLog(@"%@",floatt);
    NSLog(@"%@",yes);
    
    // boxed
	NSLog(@"boxed");
    NSNumber *intt2 = @(23-4);
    NSNumber *floatt2 = @(1.4f+2.0f);

    NSLog(@"%@",intt2);
    NSLog(@"%@",floatt2);
}
void bai8()
{
    NSArray *arr = @[@"Raspberry",
                     @"Peach",
                     @"BlackBerry",
                     @"Apple",
                     @"BlueBerry",
                     @"Banana"];
    NSLog(@"Subscripting %@",arr[1]);
    
    NSMutableArray *arr_copy = [arr mutableCopy];
    arr_copy[6] = @"set string 1";
    arr_copy[7] = @"set string 2";
    arr_copy[8] = @"set string 3";
    arr_copy[9] = @"set string 4";
    
    
}
void bai6()
{
    Added * added1 = [[Added alloc]init];
    Added * added2 = [Added new];
    Added * added3 = [Added new];
    NSMutableArray * mulArr = [NSMutableArray new];
    [mulArr insertObject:added1 atIndex:0];
    [mulArr removeObject:added1];
    [mulArr dealloc];
    
    NSMutableDictionary *dir = [NSMutableDictionary new];
    [dir setValue:added2 forKey:@"key1"];
    [dir setValue:added1 forKey:@"key2"];
    [dir removeObjectForKey:@"key1"];
    [dir removeAllObjects];
    [dir dealloc];
}
void bai9()
{
    NSArray *arr = @[@"Raspberry",
                     @"Peach",
                     @"BlackBerry",
                     @"Apple",
                     @"BlueBerry",
                     @"Banana"];
    //NSLog(@"Subscripting %@",arr[1]);
    
    NSMutableArray *arr_copy = [arr mutableCopy];
    NSDictionary *dir = [NSDictionary new];
    arr_copy[6] = dir;
    
    
    
}
void helloC::CallToOO(){
    NSLog(@"OO, you call me ! ");
}
void bai10()
{
    helloC  helloC;
    helloC.CallfromOO();
}
int main(int argc, const char * argv[])
{		

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");

        bai1();
        bai2();
        bai3();
        bai4();
        bai5();
        bai6();
        bai7();
        bai8();
        bai9();
        bai10();
    }
    return 0;
}

