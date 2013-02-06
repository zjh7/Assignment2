//
//  ViewController.m
//  FruitCart
//
//  Created by David Evans on 1/29/13.
//  Copyright (c) 2013 DavidEvans. All rights reserved.
//

#import "ViewController.h"
#import "Vegetable.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _cart = [NSMutableArray arrayWithCapacity:0];
    
    //for(int i = 0; i < 50; i++){
        NSString * vegetableName = [NSString stringWithFormat:@"Potato"];
    Vegetable * anonVegetable = [[Vegetable alloc] initWithWithName:vegetableName andColor:@"Brown" andShape:@"Oblong"];
        [_cart addObject:anonVegetable];
        NSString * vegetableName2 = [NSString stringWithFormat:@"Onion"];
    Vegetable * anonVegetable2 = [[Vegetable alloc] initWithWithName:vegetableName2 andColor:@"White" andShape:@"Bulbous"];
        [_cart addObject:anonVegetable2];
        NSString * vegetableName3 = [NSString stringWithFormat:@"Pumpkin"];
    Vegetable * anonVegetable3 = [[Vegetable alloc] initWithWithName:vegetableName3 andColor:@"Orange" andShape:@"Round"];
        [_cart addObject:anonVegetable3];
    //}
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Vegetable";
}

-(int) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_cart count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"TableViewCell"];
    }
    
    Vegetable * tempVegetable = [_cart objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [tempVegetable name];
    cell.detailTextLabel.text = [tempVegetable color];
    return cell;
}

@end
