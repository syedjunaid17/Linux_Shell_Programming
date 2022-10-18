#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <string.h>

int main()
{
        char *data = "This data is from parent";
        int fd;

        fd = open("./test.txt",  O_RDWR | O_CREAT | O_TRUNC, 0777);
        if(fd == -1)
                perror("Error in opening the file");

        pid_t pid = fork();
        if(pid > 0)   //Parent process
        {
                if(fd != -1)
                {
                        printf("Value of the fd from parent process is <%d>\n", fd);
                        write(fd, data, strlen(data));
                }
                sleep(2);
        }
        else
        {
                char buffer[100] = {0};
                sleep(1);
                printf("Value of the fd from child process is <%d>\n", fd);
                //lseek(fd, 0, SEEK_SET);

                read(fd, buffer, sizeof(buffer));
                printf("Data read from the child process is <%s>\n", buffer);
        }

        return 0;
}
