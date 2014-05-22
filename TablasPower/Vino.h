//
//  Vino.h
//  TablasPower
//
//  Created by user22791 on 22/05/14.
//  Copyright (c) 2014 Eurohelp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vino : NSObject

@property(strong,nonatomic) NSString *nombreVino;
@property(strong,nonatomic) NSString *denominacion;
@property(strong,nonatomic) NSString *cosecha;

- (id)initWithVino:(NSString *) aVino andDO:(NSString *) denoOrigen andCosecha:(NSString *) laCosecha;
@end
