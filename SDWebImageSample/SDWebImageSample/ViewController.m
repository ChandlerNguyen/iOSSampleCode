//
//  ViewController.m
//  SDWebImageSample
//
//  Created by code4fun on 2/24/16.
//  Copyright © 2016 chiasekienthucit.com. All rights reserved.
//

#import "ViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "ImageCell.h"

static NSString *const kImageCell = @"kImageCell";

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.dataSource = @[@"http://i0.wp.com/hypebeast.com/image/2013/01/hot-toys-iron-man-3-mark-xlii-collectible-bust_1.jpg?w=1410",
                        @"http://t0.gstatic.com/images?q=tbn:ANd9GcT4PZc648WRoXzxEdLQA9zMGqBx93_um_HxvsjgYhoY3AvDtkzI",
                        @"http://i0.wp.com/hypebeast.com/image/2013/03/hot-toys-iron-man-3-iron-patriot-collectible-bust-2.jpg?w=930",
                        @"http://t3.gstatic.com/images?q=tbn:ANd9GcTf_6e7G9pIiw7ZlRRPfdq63NP-jRA6tmstL1ji-ZFEVnTkDjSp",
                        @"http://4.bp.blogspot.com/-KlZshKtr0DM/UWDGlG1YqtI/AAAAAAAAAFc/Qt89IIY3s6s/s1600/iron-man-3.jpg"
                        ];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView registerNib:[UINib nibWithNibName:@"ImageCell" bundle:[NSBundle mainBundle]]
         forCellReuseIdentifier:kImageCell];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 200;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dataSource count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *menuItem = self.dataSource[indexPath.row];
    
    ImageCell *cell = [self.tableView dequeueReusableCellWithIdentifier:kImageCell];
    
    
    [cell.imageView sd_setImageWithURL:[NSURL URLWithString:menuItem]
                      placeholderImage:[UIImage imageNamed:@"Hisoka.jpg"]];
    cell.imageSource.text = menuItem;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
