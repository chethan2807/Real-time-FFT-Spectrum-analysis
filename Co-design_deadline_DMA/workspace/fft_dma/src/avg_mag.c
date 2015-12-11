//**********************************************************************************************************************************************
//This module implements magnitude and moving window averaging functions 
//**********************************************************************************************************************************************

#include <stdio.h>
#include <malloc.h>
#include <math.h>
#include "xil_types.h"
#include "xbasic_types.h"


u8 bank_num = 0;

int magnitude(u32 mag_buf[], unsigned int window_buffer[], int n)
{
	register unsigned int  i;
	register unsigned int index = (bank_num * n); //index will be pointing from the begining of aaray
	register unsigned int next_index = (index + n);//next_index will be pointing from the end of aaray(128 memory locations each)
	for(i = 0; i < 64; i=i+1)
    {
		window_buffer[index] = mag_buf[i];
		if(i!=0) {
			window_buffer[next_index - i] = window_buffer[index];
		}
			index++;
			
    }
    if(bank_num == 7)  // there are 8 arrays of 128 location to perform moving window average 
        bank_num = 0;
    else
        bank_num++;	
	
    return 0;
}


int averaging(unsigned int window_buffer[], u8 avg_buffer[], int n, unsigned int noisePhase, unsigned int noise_buf[])
{
	register unsigned int avg_data, avg_data_chk =0;
	register unsigned int i,j;
	register unsigned int  m = n>>1;
    if(noisePhase) {
    	for(j = 0; j <m; j++) {
    		avg_data = 0;
            for(i = 0; i < 8; i++)
            {
                avg_data  += window_buffer[i*n+j];
            }
            if(j != 0){
            	noise_buf[j] 	= avg_data>>3;
            }
            else
            	noise_buf[j] 	= avg_data>>3;
            	noise_buf[n-j] 	= avg_data>>3;
    	}
    }

    else {
    	for(j = 0; j < m; j++) {
    		avg_data = 0;
    		for(i = 0; i < 8; i++)
    		{
    			avg_data  += window_buffer[i*n+j];
    		}
    			avg_data_chk = avg_data>>3;
            if(j != 0){
            	if(avg_data_chk > noise_buf[j] ){
            		avg_buffer[j] 	= (avg_data_chk   >>14);  // Symmetric property
            		avg_buffer[n-j] = (avg_data_chk   >>14);
            		}
            	else {
            		avg_buffer[j] 	= 0;
            		avg_buffer[n-j] = 0;
            		}
            }
            else {
            	if(avg_data_chk > noise_buf[j] ){
            		avg_buffer[j] 	= (avg_data_chk >>14);
            	}
            	else{
            		avg_buffer[j]	= 0;
            	}
            }
    	}
    }
    return 0;
}
