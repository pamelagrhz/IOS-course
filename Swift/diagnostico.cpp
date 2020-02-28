#include <iostream>
#include <math.h> 

using namespace std;
string name;

int arr[] = {1,9,6,8,3,5};
int n = sizeof(arr)/ sizeof(arr[0]);

double x;

void ordenar(int arr[], int n) {
    
   int i, j, min, aux;
   for (i = 0; i < n - 1; i++) {
      min = i;
      for (j = i + 1; j < n; j++)
         if (arr[j] < arr[min])
            min = j;
            
          aux = arr[i];
          arr[i] = arr[min];
          arr[min] = aux;
   }
}

int main()
{
    cout<<"Ingresa tu nombre\n";
    cin>>name;
    cout<<"Hola " + name <<endl ;
    
    cout<<"arreglo:"<<endl;
    for (int i = 0; i < n; i++)
    cout<< arr[i] <<" ";
    cout<<endl;
    ordenar(arr, n);
    cout<<"ordenado:\n";
    for (int i = 0; i < n; i++)
    cout<< arr[i] <<" ";
    
    cout<<"\nIngresa un número \n";
    cin>>x;
    cout<<pow(x , x)<<"\n";
    cout<<"Fin :)";
    
    return 0;
}



