#include<iostream>
using namespace std;
int main()
{
	float A,B,X,Y;
	cout<<"������A,B,X:";
	cin>>A;
	cin>>B;
	cin>>X;
	cout<<"�������������ֵ:";
	cin>>Y;
	if(A<=1 && B==0)
		X=X/A;
	if((A==2)||(X>1))
		X=X+1;
	cout<<"�����XֵΪ:";
	cout<<X<<endl;
	return 0;
}
