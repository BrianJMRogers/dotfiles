Vim�UnDo� �� ��L�ʞX,�38m!��T�M��p�0}�i�          f=fopen("add.txt","r");                             Z5j    _�                             ����                                                                                                                                                                                                                                                                                                                                                             Z5c�    �                   �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Z5il    �                  (int main(int argc, char const *argv[]) {�               �                  /* code */     return 0;   }    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Z5it     �               int sockfd;5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Z5iu     �               char fname[25];5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Z5iu     �      	         int len;5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                  V        Z5iv     �      
         $struct sockaddr_in servaddr,cliaddr;5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                  V        Z5iv     �   	            %sockfd=socket(AF_INET,SOCK_STREAM,0);5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                  V        Z5ix     �   
            "bzero(&servaddr,sizeof(servaddr));5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                  V        Z5iy     �               servaddr.sin_family=AF_INET;5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                  V        Z5iz     �               +servaddr.sin_addr.s_addr=htonl(INADDR_ANY);5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                  V        Z5iz     �               'servaddr.sin_port=htons(atoi(argv[1]));5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Z5iz     �               .inet_pton(AF_INET,argv[1],&servaddr.sin_addr);5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Z5i{     �               0connect(sockfd,(SA*)&servaddr,sizeof(servaddr));5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Z5i|     �               char buffer[100];5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Z5i|     �               FILE *f;5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Z5i}     �               f=fopen("add.txt","r");5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Z5i}     �               fscanf(f,"%s",buffer);5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Z5i~     �               write(sockfd,buffer,100);5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Z5i    �               )printf("the file was sent successfully");5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Z5i�     �                #include<arpa/inet.h>�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        Z5i�    �               +#include<sys/socket.h>#include<arpa/inet.h>5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       Z5i�     �                   f=fopen("add.txt","r");�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       Z5i�    �               "    f=fopen("Screenshot.png","r");5�_�                           ����                                                                                                                                                                                                                                                                                                                               $                 v       Z5j     �               +    f=fopen("~/DesktopScreenshot.png","r");5�_�                           ����                                                                                                                                                                                                                                                                                                                               $                 v       Z5j	    �                   f=fopen("~/Desktop,"r");5�_�                           ����                                                                                                                                                                                                                                                                                                                               $                 v       Z5j     �                   f=fopen("~/Desktop/,"r");5�_�                            ����                                                                                                                                                                                                                                                                                                                               $                 v       Z5j    �                   f=fopen("~/Desktop/","r");5��