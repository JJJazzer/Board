/*
 * file name: temp.c
 * author   : Yu Liu
 * email    : <ilhanwnz@hotmail.com>
 * time     : Thu 23 Aug 2018 09:19:15 AM CST
 */


int main(void)
{
	char *p;
	char *string = "1123";
	p = (char*) ((&string) + 4);
	return 0;
}
