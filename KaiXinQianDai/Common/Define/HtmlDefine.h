//
//  HtmlDefine.h
//  KaiXinQianDai
//
//  Created by xiaoning on 2018/11/27.
//  Copyright © 2018年 xiaoning. All rights reserved.
//

#ifndef HtmlDefine_h
#define HtmlDefine_h

#ifdef DEBUG

static NSString * const BaseHTMLUrl = @"http://static.vip-black.com";

#else

static NSString * const BaseHTMLUrl = @"http://static.vip-black.com";

#endif


static NSString * const RegisterProtocol_HTMLUrl = @"/register/protocol.html";
static NSString * const LoanPage_LoanMarketList_HTMLUrl = @"/app/index.html";
static NSString * const MarketPage_LoanMarketList_HTMLUrl = @"/app/list.html";


#endif /* HtmlDefine_h */
