#include <iostream>
using namespace std;
#define N 5
#define M 4
int main()
{
    int koll,j,i;
    setlocale(LC_ALL, "");
    int mas[N][M];
    cout << "Введите эллементы матрицы: /n";
    for (int i = 0; i < N; i++)
        for (int j = 0; j < M; j++)
        {
            cout << "[" << i << "][" << j << "]= ";
            cin >> mas[i][j];
        }
    for ( j = 0; j<M; j++)
    {
        for (i = 0; i < N&&mas[i][j] != 0; i++);
            if (i == N)koll++;
    }
    cout << koll << " строк не содержат не одного, не нулевого элемента.";
    system("pause");
    return 0;
}