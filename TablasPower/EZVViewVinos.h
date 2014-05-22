//
//  EZVViewVinos.h
//  TablasPower
//
//  Created by user22791 on 22/05/14.
//  Copyright (c) 2014 Eurohelp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Vino.h"
@interface EZVViewVinos : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (strong,nonatomic) NSArray *modelo;
@property (strong,nonatomic) UITableView *tableView;

- (id)initWithStyle:(UITableViewStyle) style AndModel:(NSArray *)vinos;

@end
