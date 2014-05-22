//
//  EZVCustomCell.m
//  TablasPower
//
//  Created by user22791 on 22/05/14.
//  Copyright (c) 2014 Eurohelp. All rights reserved.
//

#import "EZVCustomCell.h"

@implementation EZVCustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
    //Se ejecuta al cargar elnib. Si se neceita modificar algun aspecto del xib, este es el lugar adecuao
    //Se ejecuta una única vez. Modificaciones genéricas para todas las celds se ralizana aqui p.e.
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
