//
//  ViewController.m
//  FruitCart
//
//  Created by David Evans on 1/29/13.
//  Copyright (c) 2013 DavidEvans. All rights reserved.
//

#import "ViewController.h"
#import "Fruit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _cart = [NSMutableArray arrayWithCapacity:0];
    
    for(int i = 0; i < 50; i++){
        NSString * fruitName = [NSString stringWithFormat:@"Banana %d", i];
        
        if((i % 10) == 0){
            fruitName = [NSString stringWithFormat:@"Free Banana %d", i];
        }
        Fruit * anonFruit = [[Fruit alloc] initWithWithName:fruitName andColor:@"Yellow" andShape:@"Curved"];
        [_cart addObject:anonFruit];
    }
    
    
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
    return @"Fruit";
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
    
    Fruit * tempFruit = [_cart objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [tempFruit name];
    cell.detailTextLabel.text = [tempFruit color];
    return cell;
}

@end
