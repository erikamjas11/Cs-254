/*  CS 254 Program 2
|   Author: Erik Marrero
|   Date: 9/12/2019
|
|   Harmonic Numbers
*/



#include <iostream>
#include <iomanip>
using namespace std;



int main() {
	
	int n;
	cout << "Enter a number for n:"; 
	cin >> n;
	
	//Variables
	float floatSumUp = 0.0, floatSumDown = 0.0;
	double doubleSumUp = 0.0, doubleSumDown = 0.0;
	
	//Calulations for each sum
	for (int i = 1; i <= n; i++) {
		floatSumUp = floatSumUp + 1 / float(i);}
	for (int i = n; i >= 1; i--) {
		floatSumDown = floatSumDown + 1 / float(i);}
	for (int i = 1; i <= n; i++) {
		doubleSumUp = doubleSumUp + 1 / double(i);}
	for (int i = n; i >= 1; i--) {
		doubleSumDown = doubleSumDown + 1 / double(i);}
	
	// Print out calculations to screen 
	cout << fixed << setprecision(20);
	cout << "Upward Sum(float):" << floatSumUp << "\n";
	cout << "Downward Sum(float):" << floatSumDown << "\n";
	cout << "Upward Sum(double):" << doubleSumUp << "\n";
	cout << "Downward Sum(double):" << doubleSumDown << "\n";
	
	return 0;
}