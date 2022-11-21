// iostream, vector, and algorithm
#include <bits/stdc++.h>

// g++ -O2 -Wall 143_2_A.cpp -o 143_2_A
using namespace std;

#define FLLTEQ(i,a,b) for (int i = a; i <= b; i++)
#define FLLT(i,a,b) for (int i = a; i < b; i++)

typedef vector<vector<int>> vvi;
typedef vector<int> vi;

int main() {
    ios::sync_with_stdio(false);
    cin.tie(NULL);

    vvi mtx;
    int res = 0;
    int n;

    cin >> n;
    FLLT(i, 0, n) {
        vi row;
        FLLT(j, 0, 3) {
            int val;
            cin >> val;
            row.push_back(val);
        }
        mtx.push_back(row);
    }
    
    FLLT(i, 0, n) {
        int temp = 0;
        FLLT(j, 0, 3) {
            if (mtx[i][j] != 0) {
                temp++;
            }
        }
        if (temp > 1) {
            res++;
        }
    }

    cout << res << "\n";
    return 0;
}