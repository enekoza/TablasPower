//
//  OtraCustomCell.m
//  TablasPower
//
//  Created by user22791 on 22/05/14.
//  Copyright (c) 2014 Eurohelp. All rights reserved.
//

#import "OtraCustomCell.h"

@implementation OtraCustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        _vineYearLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    }
    return self;
}

//No tenemos XIB
-(void)layoutSubviews{
    // Initialization code
    
    CGRect rect = CGRectMake(0, 0, 200, 100);
    _vineYearLabel.frame = rect;
    _vineYearLabel.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    _vineYearLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:22];
    
    _vineYearLabel.textColor = [UIColor colorWithRed:0.95 green:0.51 blue:0.14 alpha:1.00];
    [self addSubview:_vineYearLabel];
}

// Solo para clases con XIBh
- (void)awakeFromNib
{
    // Initialization code
//    
//    CGRect rect = CGRectMake(0, 0, 200, 100);
//    _vineYearLabel.frame = rect;
//    _vineYearLabel.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
//    _vineYearLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:22];
//    
//    _vineYearLabel.textColor = [UIColor colorWithRed:0.95 green:0.51 blue:0.14 alpha:1.00];
//    [self addSubview:_vineYearLabel];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
