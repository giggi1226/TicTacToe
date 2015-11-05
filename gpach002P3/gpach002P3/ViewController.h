/*
 PROGRAMMER: Giselle Pacheco
 PANTHERID: 2348330
 CLASS: COP4655
 INSTRUCTOR: Steve Luis
 ASSIGNMENT: HW3
 DUE: Sept 10
 */

#import <UIKit/UIKit.h>
#import "GameBoard.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *boardButtons;
@property (strong, nonatomic) IBOutlet UILabel *displayWin;      //to

@property GameBoard *gameBoard ;

-(BOOL)didWin;

//actions
- (IBAction)buttonPressed:(id)sender;
- (IBAction)pressedReset:(id)sender;





@end

