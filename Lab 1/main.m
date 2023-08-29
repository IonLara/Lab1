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
        NSMutableString *mutableString;
        NSInteger numberized;
        unichar questionMark = 0x003F;
        unichar exclamation = 0x0021;
        
        
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
                //Uppercase
                newString = inputString.localizedUppercaseString;
                NSLog(@"Uppercase String: %@", newString);
                continue;
            } else if(number == 2) {
                //Lowercase
                newString = inputString.localizedLowercaseString;
                NSLog(@"Lowercase String: %@", newString);
            } else if(number == 3) {
                //Numberize
                numberized = [inputString integerValue];
                if(numberized == 0 && ![inputString  isEqual: @"0\n"]) {
                    NSLog(@"Failed to convert to integer!");
                } else {
                    NSLog(@"Integer value is: %ld", (long)numberized);
                }
            } else if(number == 4) {
                //Canadianize
                NSCharacterSet *newlineCharacterSet = [NSCharacterSet newlineCharacterSet];
                newString = [inputString stringByTrimmingCharactersInSet:newlineCharacterSet];
                mutableString = [newString mutableCopy];
                [mutableString appendString:@", eh?"];
                NSLog(@"Canadianized String: %@", mutableString);
            } else if(number == 5) {
                //Respond
                NSCharacterSet *newlineCharacterSet = [NSCharacterSet newlineCharacterSet];
                newString = [inputString stringByTrimmingCharactersInSet:newlineCharacterSet];
                unichar lastChar = [newString characterAtIndex:newString.length - 1];
                if(lastChar == questionMark){
                    NSLog(@"I don't know.");
                } else if(lastChar == exclamation){
                    NSLog(@"Whoa, calm down!");
                } else {
                    NSLog(@"What am I supposed to say then?");
                }
            } else if(number == 6) {
                //De-Space
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
