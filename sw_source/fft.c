/*****************************************************************
 Inputs: data[] : array of complex* data points of size 2*NFFT+1.
		data[0] is unused,
		* the n'th complex number x(n), for 0 <= n <= length(x)-1, is stored as:
			data[2*n+1] = real(x(n))
			data[2*n+2] = imag(x(n))
 N : FFT order NFFT. This MUST be a power of 2 and >= length(x).
 Outputs:data[] : The FFT results are stored in data, overwriting the input.
********************************************************************/
#include <stdio.h>
#include <malloc.h>
#include <math.h>
#define PI      M_PI    /* pi to machine precision, defined in math.h */
#define TWOPI   (2.0*PI)

void fft(double data[], int N )
{
    int n, c_stage, m, j, n_stage, i;
    double wtemp, wr, wpr, wpi, wi, theta;
    double tempr, tempi;
    n = N << 1;
    j = 0;
	c_stage = 2; // Current FFT stage
    while (n > c_stage) {
        n_stage = 2*c_stage;//Next stage is n_stage^th point FFT (like 2 point FFT; 4 point FFT ; 8 point FFT)
        theta = TWOPI/(-c_stage);// (Theta = -(2pi/N))
        wtemp = sin(0.5*theta);// cosx =1- 2sin^2(x/2)
        wpr = -2.0*wtemp*wtemp;
        wpi = sin(theta);
        wr = 1.0;
        wi = 0.0;
		
		if( c_stage == 2) {
			for (m = 0; m < c_stage; m += 2) {
			    for (i = m; i <= n; i += n_stage) {
			        j =i + c_stage;
			        tempr = data[j];
			        data[j]   = data[i]   - data[j];
		            data[i] += tempr;
		        }
		       
		       }
		}
		
		else if ( c_stage == 4){
		
			for (m = 0; m < c_stage; m += 2) {
				for (i = m; i <= n; i += n_stage) {
					j =i + c_stage;
					tempr = wr*data[j];
					tempi = wi*data[j];
					data[j]   = data[i]   - tempr;
					data[j+1] = data[i+1] - tempi;
					data[i] += tempr;
					data[i+1] += tempi;
				}
				wr = (wtemp = wr)*wpr - wi*wpi + wr;
				wi = wi*wpr + wtemp*wpi + wi;
			}
			
		}
		else {
		
			for (m = 0; m < c_stage; m += 2) {
				for (i = m; i <= n; i += n_stage) {
					j =i + c_stage;
					tempr = wr*data[j]   - wi*data[j+1];
					tempi = wr*data[j+1] + wi*data[j];
					data[j]   = data[i]   - tempr;
					data[j+1] = data[i+1] - tempi;
					data[i] += tempr;
					data[i+1] += tempi;
				}
				wr = (wtemp = wr)*wpr - wi*wpi + wr;
				wi = wi*wpr + wtemp*wpi + wi;
			}
			
		}
        c_stage = n_stage;
    }
}
