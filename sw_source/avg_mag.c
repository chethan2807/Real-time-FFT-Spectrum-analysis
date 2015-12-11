//**********************************************************************************************************************************************
//This module implements magnitude and moving window averaging functions 
//**********************************************************************************************************************************************

#include <stdio.h>
#include <malloc.h>
#include <math.h>
#include "xil_types.h"
#include "xbasic_types.h"


u8 bank_num = 0;

int magnitude(double fft_buf[], unsigned int window_buffer[], int n)
{
	unsigned int  i, j=0;
	unsigned int index 		= (bank_num * n); //index will be pointing from the begining of aaray
	unsigned int next_index = (index + n);//next_index will be pointing from the end of aaray(128 memory locations each)
	j	  =0;
	for(i = 0; i <= n; i+=2)
    {
        window_buffer[index] = (unsigned int) (pow(fft_buf[i], 2) + pow(fft_buf[i+1], 2));
       if(j != 0){
        	window_buffer[next_index - j] = window_buffer[index]; // Symmetric property
       }
       j++;
       index++;
    }
	index = (index -1) <<1;
	
    if(bank_num == 7)  // there are 8 arrays of 128 location to perform moving window average 
        bank_num = 0;
    else
        bank_num++;	
	
    return 0;
}


int averaging(unsigned int window_buffer[], u8 avg_buffer[], int n, unsigned int noisePhase, unsigned int noise_buf[])
{
    unsigned int avg_data, avg_data_chk =0;
    int i,j;
    unsigned int  m = n>>1;
    if(noisePhase) {
    	for(j = 0; j <=m; j++) {
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
    	for(j = 0; j <= m; j++) {
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
            		avg_buffer[j] 	= (avg_data_chk >>12);
            	}
            	else{
            		avg_buffer[j]	= 0;
            	}
            }
    	}
    }
    return 0;
}
