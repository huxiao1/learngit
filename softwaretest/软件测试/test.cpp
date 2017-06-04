#include<iostream>
using namespace std;
int main()
{
	float A,B,X,Y;
	cout<<"请输入A,B,X:";
	cin>>A;
	cin>>B;
	cin>>X;
	cout<<"请输入你的期望值:";
	cin>>Y;
	if(A>=1 && B==0)
		X=X/A;
	if((A==2)||(X>1))
		X=X+1;
	cout<<"输出的X值为:";
	cout<<X<<endl;
	return 0;
}
