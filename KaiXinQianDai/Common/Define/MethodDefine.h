//
//  MethodDefine.h
//  KaiXinQianDai
//
//  Created by xiaoning on 2018/11/26.
//  Copyright © 2018年 xiaoning. All rights reserved.
//

#ifndef MethodDefine_h
#define MethodDefine_h

#define KXQDImage(nane)                       [UIImage imageNamed:name]
#define KXQDString(string,args...)            [NSString stringWithFormat:string, args]
#define KXQDHexColor(string)                  [UIColor colorWithHexString:string]
#define KXQDHexColorAlpha(string, value)      [UIColor colorWithHexString:string alpha:value]
#define KXQDFont(size)                        [UIFont systemFontOfSize:size]
#define KXQDBoldFont(size)                    [UIFont boldSystemFontOfSize:size]
#define KXQDUrl(string)                       [NSURL URLWithString:string]


#define Strong                                @property (nonatomic, strong)
#define Weak                                  @property (nonatomic, weak)
#define Copy                                  @property (nonatomic, copy)
#define Assign                                @property (nonatomic, assign)

#define NULLString(string) ((![string isKindOfClass:[NSString class]])||[string isEqualToString:@""] || (string == nil) || [string isEqualToString:@""] || [string isKindOfClass:[NSNull class]]||[[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0 || [string isEqualToString:@"(null)"])



#endif /* MethodDefine_h */
