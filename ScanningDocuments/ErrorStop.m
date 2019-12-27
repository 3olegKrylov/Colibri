//
//  ErrorStop.m
//  ScanningDocuments
//
//  Created by 3oleg_krylov on 15/11/2019.
//  Copyright © 2019 Julian Schiavo. All rights reserved.
//
#import "ErrorStop.h"
#import  <objc/runtime.h>
#import <UIKit/UIKit.h>



    @implementation UITextViewWorkaround

    + (void)executeWorkaround {
        if (@available(iOS 13.2, *)) {
        }
        else {
            const char *className = "_UITextLayoutView";
            Class cls = objc_getClass(className);
            if (cls == nil) {
                cls = objc_allocateClassPair([UIView class], className, 0);
                objc_registerClassPair(cls);
    #if DEBUG
                printf("added %s dynamically\n", className);
    #endif
            }
        }
    }

    @end
