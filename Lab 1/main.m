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
        
        while (true) {
            if(needsInput) {
                printf("Type your input:\n");
                fgets(inputChar, 255, stdin);
                needsInput = false;
            }
            //printf("Your string is %s\n", inputChar);
            printf("Operations:\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It\n7. New Input\n");
            fgets(choice, 255, stdin);
            int number = (int)choice;
            if(number == 1) {
                
            } else if(number == 2) {
                
            } else if(number == 3) {
                
            } else if(number == 4) {
                
            } else if(number == 5) {
                
            } else if(number == 6) {
                
            } else if(number == 7) {
                needsInput = true;
            } else {
                
            }
            
        }
    }
    return 0;
    
}
