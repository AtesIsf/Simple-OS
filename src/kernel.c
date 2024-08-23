#include "klib/ktty.h"

void kmain() 
{
	/* Initialize terminal interface */
	terminal_initialize();

	terminal_writestring("Kernel Live\n");
	terminal_writestring("...");
}

