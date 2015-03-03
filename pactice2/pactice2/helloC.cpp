//
//  helloC.cpp
//  practice2
//
//  Created by robe on 3/3/15.
//  Copyright (c) 2015 ngoanhtan. All rights reserved.
//

#include "helloC.h"

#include "stdio.h"
bool canCallMe = false;
    
void helloC::CallfromOO()
{
    printf("C, are you there !\n");
    CallToOO();
}