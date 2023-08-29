//
//  main.m
//  Lab 1
//
//  Created by Ion Sebastian Rodriguez Lara on 28/08/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        BOOL needsInput = true;
        char inputChar[255];
        char choice[255];
        NSString *inputString;
        NSString *newString;
        
        
        while (true) {
            if(needsInput) {
                printf("Type your input:\n");
                fgets(inputChar, 255, stdin);
                inputString = [NSString stringWithUTF8String:inputChar];
                needsInput = false;
            }
            //printf("Your string is %s\n", inputChar);
            printf("Operations:\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It\n7. New Input\n");
            fgets(choice, 255, stdin);
            int number = atoi(choice);
            if(number == 1) {
                //Capitalize
                newString = inputString.localizedUppercaseString;
                NSLog(@"Capitalized String: %@", newString);
                continue;
            } else if(number == 2) {
                
            } else if(number == 3) {
                
            } else if(number == 4) {
                
            } else if(number == 5) {
                
            } else if(number == 6) {
                
            } else if(number == 7) {
                needsInput = true;
                continue;
            } else {
                printf("Invalid Input");
                continue;
            }
            
        }
    }
    return 0;
    
}
