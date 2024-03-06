#include <stdio.h>
int digits[100] = {0};
int main()
{
	int n;
	scanf("%d", &n);
	int isPalindrome = 1;
	// 判断输入的整数是否是回文数

	// 将n的每一位存入数组digits
	int i = 0;
	while (n > 0)
	{
		digits[i] = n % 10;
		n = n / 10;
		i++;
	}

	// 判断是否是回文数
	int j = 0;
	while (j < i / 2)
	{
		if (digits[j] != digits[i - j - 1])
		{
			isPalindrome = 0;
			break;
		}
		j++;
	}

	if (isPalindrome == 1)
	{
		printf("Y\n");
	}
	else
	{
		printf("N\n");
	}
	return 0;
}
