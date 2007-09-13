/*
 iHaxGamez - External process memory search-and-replace tool for MAC OS X
 Copyright (C) <2007>  <Raymond Wilfong>
 
 This program is free software; you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation; either version 2 of the License, or
 (at your option) any later version.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program; if not, write to the Free Software
 Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 
 You may contact Raymond Wilfong by email at rwilfong@rewnet.com
 */

#import "AppAddressData.h"


@implementation AppAddressData

- (id)init
{
    return [self initWithValues:0 val:@""];
}

- (id)initWithValues:(uint)addr val:(NSString *)val
{
    [super init];
    [self setAddress:addr];
    [self setValue:val];
    return self;
}

- (void)dealloc
{
    [value release];
    [super dealloc];
}

- (uint)address
{
    return address;
}

- (void)setAddress:(uint)val
{
    address = val;
}

- (NSString *)value
{
    return value;
}

- (void)setValue:(NSString *)val
{
    [value autorelease];
    value = [val copy];
}

@end
