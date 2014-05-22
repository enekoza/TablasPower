//
//  EZVViewVinos.m
//  TablasPower
//
//  Created by user22791 on 22/05/14.
//  Copyright (c) 2014 Eurohelp. All rights reserved.
//

#import "EZVViewVinos.h"
#import "Vino.h"

@interface EZVViewVinos ()

@end

@implementation EZVViewVinos

#pragma mark - DataSource y Delegado del tableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.modelo count ];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL" forIndexPath:indexPath];
    
    Vino *currentVino = [self.modelo objectAtIndex:indexPath.row];
    cell.textLabel.text = currentVino.nombreVino;
    
//    cell.textLabel.text = [self.modelo[indexPath.row] objectForKey:@"nombreVino"];
    
    return cell;
    
}

#pragma mark - Vistas
- (id)initWithStyle:(UITableViewStyle) style AndModel:(NSArray *)vinos{
    
    if(self=[super init]){
        _modelo = vinos;
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:style];
        
    }
    
    return self;
}

//
//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //HAsta aqui no esta disponible la vista
    // Do any additional setup after loading the view.
    
    // titulo
    self.title = @"Mis Vinos";
    
    
    //Asociar los protocolos delegados
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    //Decirle el tipo de celda qeu se va a usar
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CELL"];
    
    //Se dibuja la tabla en una posición determinada
    self.tableView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    
    [self.view addSubview:self.tableView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
