//
//  ImageCell.m
//  SDWebImageSample
//
//  Created by code4fun on 2/24/16.
//  Copyright © 2016 chiasekienthucit.com. All rights reserved.
//

#import "ImageCell.h"

@implementation ImageCell

@synthesize imageSource;
@synthesize imageView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
