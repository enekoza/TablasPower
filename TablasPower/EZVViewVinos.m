//
//  EZVViewVinos.m
//  TablasPower
//
//  Created by user22791 on 22/05/14.
//  Copyright (c) 2014 Eurohelp. All rights reserved.
//

#import "EZVViewVinos.h"
#import "Vino.h"

#define kCustomPARCell @"CELDA_CUSTOM"
#define kCustomIMPARCell @"OTRA_CELDA"


@interface EZVViewVinos ()

@end

@implementation EZVViewVinos

#pragma mark - DataSource y Delegado del tableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.modelo count ];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL" forIndexPath:indexPath];
//    EZVCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OTRA_CELDA" forIndexPath:indexPath];
    
    int i = indexPath.row;
     Vino *currentVino = [self.modelo objectAtIndex:indexPath.row];
    if ((i%2)==0){
        EZVCustomCell *cell = [tableView dequeueReusableCellWithIdentifier:kCustomPARCell forIndexPath:indexPath];
        cell.vineLabel.text = currentVino.nombreVino;
        cell.yearLabel.text = currentVino.cosecha;
//        cell.imageVine.image = currentVino.photo;
        return cell;
    }else{
        OtraCustomCell  *cell = [tableView dequeueReusableCellWithIdentifier:kCustomIMPARCell forIndexPath:indexPath];
         cell.vineYearLabel.text = [NSString stringWithFormat:@"%@ - %@", currentVino.nombreVino, currentVino.cosecha];
        return cell;
    }
    
    

    
    
    
//    cell.backgroundColor = [UIColor purpleColor];
    
    
   
    //cell.textLabel.text = currentVino.nombreVino;
    

   
//    cell.textLabel.text = [self.modelo[indexPath.row] objectForKey:@"nombreVino"];
    
    
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 120;
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

-(void)pinTableView{
    
    //Asociar los protocolos delegados
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    //Decirle el tipo de celda qeu se va a usar
    //[self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CELL"];
    //[self.tableView registerClass:[EZVCustomCell class] forCellReuseIdentifier:@"CELDA_CUSTOM"];
    [self.tableView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellReuseIdentifier:@"CELDA_CUSTOM"];
    [self.tableView registerClass:[OtraCustomCell class] forCellReuseIdentifier:@"OTRA_CELDA"];
    
    
    //Se dibuja la tabla en una posición determinada
    self.tableView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    
    
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor orangeColor];
    
    
    
    [self.view addSubview:self.tableView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //HAsta aqui no esta disponible la vista
    // Do any additional setup after loading the view.
    
    // titulo
    self.title = @"Mis Vinos";
    
    [self pinTableView];
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
