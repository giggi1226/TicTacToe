/*
 PROGRAMMER: Giselle Pacheco
 PANTHERID: 2348330
 CLASS: COP4655
 INSTRUCTOR: Steve Luis
 ASSIGNMENT: HW3
 DUE: Sept 10
 */

#import "ViewController.h"
#import "GameBoard.h"

@implementation ViewController

@synthesize gameBoard ;
@synthesize boardButtons;
@synthesize displayWin;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    gameBoard = [[GameBoard alloc] init];
    [gameBoard initialize];
    
    int i = 0;
    while(i < [boardButtons count])
    {
        [[boardButtons objectAtIndex:i] setTitle:@" " forState:UIControlStateNormal];
        i++;
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

//Pressed any of the buttons on the board(excluding reset)
- (IBAction)buttonPressed:(id)sender
{
    int tag = (int)[sender tag]; //initializes tag to tag number of button
    
    NSString *val = [[[boardButtons objectAtIndex:tag] titleLabel] text];
    
    NSString *updated = [gameBoard update: val at: tag];
    
    [[boardButtons objectAtIndex:tag] setTitle: updated forState:UIControlStateNormal];
    
    
     if ([self didWin])
        displayWin.text = [NSString stringWithFormat:@"%@ is the winner", [[boardButtons objectAtIndex:tag] currentTitle]];
    
    
    
}

- (IBAction)pressedReset:(id)sender {
    
    int i = 0;
    
    while(i < [boardButtons count])
    {
        [[boardButtons objectAtIndex:i] setTitle:@" " forState:UIControlStateNormal];
        i++;
    }
    displayWin.text = [NSString stringWithFormat:@" "];
    [gameBoard initialize];
    
}

-(BOOL) didWin
{
    //HORIZONTAL
    if (([[[boardButtons objectAtIndex:0] currentTitle] isEqualToString:[[boardButtons objectAtIndex:1] currentTitle]])
        
        && ([[[boardButtons objectAtIndex:1] currentTitle] isEqualToString:[[boardButtons objectAtIndex:2] currentTitle]])
        
        &&(![[[boardButtons objectAtIndex:0] currentTitle] isEqualToString:@" "] ))
        return YES;
    
    else if (([[[boardButtons objectAtIndex:3] currentTitle] isEqualToString:[[boardButtons objectAtIndex:4] currentTitle]])
             && ([[[boardButtons objectAtIndex:4] currentTitle] isEqualToString:[[boardButtons objectAtIndex:5] currentTitle]])
             
              &&(![[[boardButtons objectAtIndex:3] currentTitle] isEqualToString:@" "] ))
        return YES;
    
    else if (([[[boardButtons objectAtIndex:6] currentTitle] isEqualToString:[[boardButtons objectAtIndex:7] currentTitle]])
             && ([[[boardButtons objectAtIndex:7] currentTitle] isEqualToString:[[boardButtons objectAtIndex:8] currentTitle]])
             
              &&(![[[boardButtons objectAtIndex:6] currentTitle] isEqualToString:@" "] ))
        return YES;
    
    
    //VERTICAL
    else if (([[[boardButtons objectAtIndex:0] currentTitle] isEqualToString:[[boardButtons objectAtIndex:3] currentTitle]])
             && ([[[boardButtons objectAtIndex:3] currentTitle] isEqualToString:[[boardButtons objectAtIndex:6] currentTitle]])
             
              &&(![[[boardButtons objectAtIndex:0] currentTitle] isEqualToString:@" "] ))
        return YES;
    
    else if (([[[boardButtons objectAtIndex:1] currentTitle] isEqualToString:[[boardButtons objectAtIndex:4] currentTitle]])
             && ([[[boardButtons objectAtIndex:4] currentTitle] isEqualToString:[[boardButtons objectAtIndex:7] currentTitle]])
             
              && (![[[boardButtons objectAtIndex:1] currentTitle] isEqualToString:@" "] ))
        return YES;
    
    else if (([[[boardButtons objectAtIndex:2] currentTitle] isEqualToString:[[boardButtons objectAtIndex:5] currentTitle]])
             && ([[[boardButtons objectAtIndex:5] currentTitle] isEqualToString:[[boardButtons objectAtIndex:8] currentTitle]])
             
              &&(![[[boardButtons objectAtIndex:2] currentTitle] isEqualToString:@" "] ))
        return YES;
    
    
    //DIaGANAL
    else if (([[[boardButtons objectAtIndex:0] currentTitle] isEqualToString:[[boardButtons objectAtIndex:4] currentTitle]])
             && ([[[boardButtons objectAtIndex:4] currentTitle] isEqualToString:[[boardButtons objectAtIndex:8] currentTitle]])
             
              &&(![[[boardButtons objectAtIndex:0] currentTitle] isEqualToString:@" "] ))
        return YES;
    
    else if (([[[boardButtons objectAtIndex:2] currentTitle] isEqualToString:[[boardButtons objectAtIndex:4] currentTitle]])
             && ([[[boardButtons objectAtIndex:4] currentTitle] isEqualToString:[[boardButtons objectAtIndex:6] currentTitle]])
             
              &&(![[[boardButtons objectAtIndex:2] currentTitle] isEqualToString:@" "] ))
        return YES;
   
     else return NO;
}

@end
