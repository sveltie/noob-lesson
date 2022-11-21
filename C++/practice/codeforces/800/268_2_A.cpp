// iostream, vector, and algorithm
#include <bits/stdc++.h>

// g++ -O2 -Wall 268_2_A.cpp -o 268_2_A
using namespace std;

#define FLLTEQ(i,a,b) for (int i = a; i <= b; i++)
#define FLLT(i,a,b) for (int i = a; i < b; i++)

typedef vector<int> vi;
typedef unordered_set<int> usi;

int main() {
    int n;
    int total = 0;
    int vecval = 0;
    vi XY;

    cin >> n;

    FLLT(i, 0, 2) {
        int p;
        cin >> p;
        FLLT(j, 0, p) {
            int a;
            cin >> a;
            XY.push_back(a);
        }
    }

    usi s(XY.begin(), XY.end());
    XY.assign(s.begin(), s.end());

    FLLT(i, 0, n + 1) total += i;
    FLLT(i, 0, int(XY.size())) {
        vecval += XY[i];
    }
    string res = (vecval == total) ? "I become the guy." : "Oh, my keyboard!";
    cout << res << "\n";
}