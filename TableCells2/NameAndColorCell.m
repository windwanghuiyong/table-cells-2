//
//  NameAndColorCell.m
//  TableCells
//
//  Created by wanghuiyong on 22/01/2017.
//  Copyright © 2017 MyOrganization. All rights reserved.
//

#import "NameAndColorCell.h"

@interface NameAndColorCell ()	// 类扩展

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;	// 右侧标签
@property (strong, nonatomic) IBOutlet UILabel *colorLabel;

@end

@implementation NameAndColorCell

// 设置右侧标签的值, 数据源改变时, 相应标签属性就会改变
- (void)setName:(NSString *)name {
    if (![name isEqualToString:_name]) {
        _name = [name copy];
        self.nameLabel.text = _name;
    }
}

- (void)setColor:(NSString *)color {
    if (![color isEqualToString:_color]) {
        _color = [color copy];
        self.colorLabel.text = _color;
    }
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
