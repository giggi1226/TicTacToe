/*  
PROGRAMMER: Giselle Pacheco
PANTHERID: 2348330
CLASS: COP4655
INSTRUCTOR: Steve Luis
ASSIGNMENT: HW3
DUE: Sept 10
*/

@interface GameBoard : NSObject

@property NSMutableArray *xAndO;

-(NSString*) update: (NSString*) prevState at:(int)index;

-(void) initialize;


@end
