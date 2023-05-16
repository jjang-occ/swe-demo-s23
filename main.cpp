#include <iostream>
#include <cstring>
#include <string>
#include "sha256.h"

using std::cout;
using std::endl;



int main(int argc, char** argv) {

    cout << sha256("Test") << endl;
  
  return 0;
}
