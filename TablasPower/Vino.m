//
//  Vino.m
//  TablasPower
//
//  Created by user22791 on 22/05/14.
//  Copyright (c) 2014 Eurohelp. All rights reserved.
//

#import "Vino.h"

@implementation Vino

- (id)initWithVino:(NSString *) aVino andDO:(NSString *) denoOrigen andCosecha:(NSString *) laCosecha{
    
    if(self = [super init]){
        _nombreVino=aVino;
        _denominacion=denoOrigen;
        _cosecha=laCosecha;
    }
    return self;
}

@end
