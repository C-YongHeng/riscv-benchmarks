/* Copyright (C) 2012 Embecosm Limited and University of Bristol

   Contributor: Daniel Torres <dtorres@hmc.edu>

   This file is part of Embench and was formerly part of the Bristol/Embecosm
   Embedded Benchmark Suite.

   SPDX-License-Identifier: GPL-3.0-or-later */

#include <support.h>
#include <stdint.h>
#include <stdlib.h>
#include "util.h"

//defined in the assembly file, either crt0.S for speed or dummy.S for size
void start_trigger(){
   printf("start_cycles= %d\n", read_csr(mcycle));
}
void stop_trigger(){
   printf("stop_cycles= %d\n", read_csr(mcycle));
}

void
initialise_board ()
{
}