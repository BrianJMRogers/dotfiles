Vim�UnDo� ��nOt*�9�	ت~�|�H���|�@ׂ<��j#   !   9  "Are you sure you want to continue connecting (yes/no)"            S       S   S   S    Z�#'    _�                     
        ����                                                                                                                                                                                                                                                                                                                                                             Z���     �   	             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Z���     �   
             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Z���    �          #      #!/usr/bin/env expect5�_�                            ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �         #      staging_dir=$3�         #    5�_�                           ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �         #      target_dir=$45�_�                    	   "    ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �                # $3 is directory to delete    �         !           �         "      set host [lindex $argv 0]    �      	   #      "set host_password [lindex $argv 1]    �      
   #      "set dir_to_delete [lindex $argv 2]5�_�                            ����                                                                                                                                                                                                                                                                                                                            	           	   
       v   
    Z���    �               # $3 is directory to delete    �                5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���    �      
              �   	                 �   
             5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �   	             �   
          �               dir_to_delete=$35�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �         )      	/usr/bin/env expect<<EOF    �         *           �         +           �         +       5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �         (      	/usr/bin/env expect<<EOF    �         (       5�_�                            ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �         '      spawn ssh $host5�_�                            ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �         '      expect {5�_�                    '   
    ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �   &              
expect eof5�_�                    &        ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �   %   '   '      }5�_�                    '        ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �   &              expect eof	5�_�                    '       ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �   &              	expect eof	5�_�                    (       ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �   '              	EOF5�_�                    (       ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���    �   &   (          	expect eof	�   '              EOF5�_�                           ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �         )              send "$host_password\r"5�_�                           ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �          )              exp_continue5�_�                    #       ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �   "   $   )      &        send "rm -rf $dir_to_delete\r"5�_�                    $       ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �   #   %   )              send "exit\r"5�_�                           ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���     �         )              exp_continue5�_�                           ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���    �         )              send "yes\r"5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                          
       v   
    Z���    �         )      	spawn ssh $host5�_�                    !       ����                                                                                                                                                                                                                                                                                                                                                             Z��N    �       "   )          "$ "5�_�                    %       ����                                                                                                                                                                                                                                                                                                                            %          !          v       Z��     �   %   ,   *      		�   &   '   *    �   $   '   )          }5�_�                    &       ����                                                                                                                                                                                                                                                                                                                            %          !          v       Z��    �   %   '   /      		"# "5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Z���   
 �         /          "*assword:"5�_�      !                     ����                                                                                                                                                                                                                                                                                                                                                             Z���    �         /          "*assword*"5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                                             Z���    �         /          ":"5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                             Z��    �         /       5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                                             Z��    �         /      source rsyncmark.conf5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                                                             Z��)     �         0       �         0    5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                             Z��1     �         0      echo desintation_shell_prompt5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                             Z��3     �         0      echo desintation_shell_prompt]5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                             Z��4     �         0      echo [desintation_shell_prompt]5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                             Z��6     �         0       echo [d$esintation_shell_prompt]5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                             Z��8    �         0      echo [desintation_shell_prompt]5�_�   )   ,           *           ����                                                                                                                                                                                                                                                                                                                                                             Z��;    �         0       echo [$desintation_shell_prompt]5�_�   *   .   +       ,          ����                                                                                                                                                                                                                                                                                                                                                v       Z��N    �         0      source rsyncmark.conf    �         1       echo [$desintation_shell_prompt]    �         1      exit5�_�   ,   /   -       .   "       ����                                                                                                                                                                                                                                                                                                                                         3       v       Z��Z    �   !   #   0          "# "�   "   #   0    5�_�   .   0           /   '       ����                                                                                                                                                                                                                                                                                                                            +          '          v       Z��_     �   &   (   0      		"$ "       {   $      send "rm -rf $dir_to_delete\r"         send "exit\r"       }    5�_�   /   1           0   '       ����                                                                                                                                                                                                                                                                                                                            '          '          v       Z��`     �   %   '   +          }    �   &   (   +      		5�_�   0   2           1          ����                                                                                                                                                                                                                                                                                                                            &          &          v       Z��n    �         *          "*:"�         *    5�_�   1   3           2          ����                                                                                                                                                                                                                                                                                                                            &          &          v       Z��t    �         *      !    "destination_password_prompt"5�_�   2   4           3          ����                                                                                                                                                                                                                                                                                                                            &          &          v       Z��z     �         *      	# pull args from file    �         *      	ssh_args=$(./ssh_args.sh)5�_�   3   5           4           ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �   
      )   	   D# check that the args file exists and throw and error if it does not   if [ ! -f ssh_args.sh ]; then   @	echo [!] move_files: unable to find ssh args file [ssh_args.sh]       # else run the command   else   	# pull args from file       !	# use expect from here until EOF5�_�   4   6           5           ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �   
      !      !	# use expect from here until EOF5�_�   5   7           6          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �   
      !      !	# use expect from here until EOF5�_�   6   8           7          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !      	/usr/bin/env expect<<EOF5�_�   7   9           8          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !      	spawn ssh $ssh_args $host5�_�   8   :           9          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !      		expect {5�_�   9   ;           :          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !      ;    "Are you sure you want to continue connecting (yes/no)"5�_�   :   <           ;          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !          {5�_�   ;   =           <          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !            send "yes\r"5�_�   <   >           =          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !            exp_continue5�_�   =   ?           >          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !          }5�_�   >   @           ?          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !      "    "$destination_password_prompt"5�_�   ?   A           @          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !          {5�_�   @   B           A          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !            send "$host_password\r"5�_�   A   C           B          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !            exp_continue5�_�   B   D           C          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !          }5�_�   C   E           D          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !          "$desintation_shell_prompt"5�_�   D   F           E          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !         "$desintation_shell_prompt"5�_�   E   G           F          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !          {5�_�   F   H           G          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !      $      send "rm -rf $dir_to_delete\r"5�_�   G   I           H          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !            send "exit\r"5�_�   H   J           I          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !          }5�_�   I   K           J          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �         !      	}5�_�   J   L           K          ����                                                                                                                                                                                                                                                                                                                                                  v        Z��     �          !      	expect eof5�_�   K   M           L   !       ����                                                                                                                                                                                                                                                                                                                                                  v        Z��    �                  fi5�_�   L   O           M          ����                                                                                                                                                                                                                                                                                                                                                             Z� �    �         !        "$desintation_shell_prompt"5�_�   M   Q   N       O          ����                                                                                                                                                                                                                                                                                                                                                             Z��    �         !        "$desintation_shell_prompt "5�_�   O   R   P       Q          ����                                                                                                                                                                                                                                                                                                                                         0       v   0    Z�#$     �         !      9  "Are you sure you want to continue connecting (yes/no)"5�_�   Q   S           R          ����                                                                                                                                                                                                                                                                                                                                         0       v   0    Z�#%     �         !        "yes/no)"5�_�   R               S          ����                                                                                                                                                                                                                                                                                                                                         0       v   0    Z�#&    �         !        "(yes/no)"5�_�   O           Q   P          ����                                                                                                                                                                                                                                                                                                                               /                 v       Z�#     �         !      1  "/Are you sure you want to continue connecting    7	Are you sure you want to continue connecting (yes/no)"5�_�   M           O   N          ����                                                                                                                                                                                                                                                                                                                                                             Z�i     �         !        } 5�_�   ,           .   -          ����                                                                                                                                                                                                                                                                                                                                         3       v       Z��U     �         0          ""5�_�   *           ,   +          ����                                                                                                                                                                                                                                                                                                                                                             Z��D     �         1       �         1       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Z���     �         /          "*assword"5��