#include <sys/socket.h>
#include <netdb.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int main() {
	clock_t launch, now;
        struct addrinfo ainfo, *res, *res0;
        int err;

        memset(&ainfo, 0, sizeof ainfo);

        ainfo.ai_family = PF_UNSPEC;
        ainfo.ai_socktype = SOCK_DGRAM;

        launch = clock();
	now = clock();
        err = getaddrinfo("web-legit", NULL, &ainfo, &res0);
        if (err) {
		exit(1);
        }
       	
	while (1 > (double)(now - launch) / CLOCKS_PER_SEC){
		struct addrinfo ainfo, *res0;
		now = clock();
		err = getaddrinfo("web-legit", NULL, &ainfo, &res0);
	}

        freeaddrinfo(res0);

	return 0;
}


