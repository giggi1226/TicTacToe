/*
 PROGRAMMER: Giselle Pacheco
 PANTHERID: 2348330
 CLASS: COP4655
 INSTRUCTOR: Steve Luis
 ASSIGNMENT: HW3
 DUE: Sept 10
 */
#import <Foundation/Foundation.h>
#import "GameBoard.h"

@implementation GameBoard

@synthesize xAndO;

-(NSString*) update: (NSString*) prevState at:(int)index
{
    
    NSString *newState;
    char oldState = [prevState characterAtIndex:0];
    
    switch (oldState)
    {
        case 'X':
            newState = @"O";
            break;
        case 'O':
            newState = @" ";
            break;
        case ' ':
            newState = @"X";
            break;
        default:
            break;
    }
    
    [xAndO replaceObjectAtIndex:index withObject:newState];
    
    return newState;
}


- (void)initialize
{
    xAndO = [[NSMutableArray alloc] init];
    
    NSInteger i = 0;
    
    while (i < 9)
    {
        [xAndO addObject:@" "];
        i++;
    }

}
@end