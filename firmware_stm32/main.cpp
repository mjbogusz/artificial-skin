#include "mbed.h"

AnalogIn analogIn[4] = {
	AnalogIn(A0),
	AnalogIn(A1),
	AnalogIn(A2),
	AnalogIn(A3)
};

DigitalOut led(LED2);
DigitalOut digitalOut[4] = {
	DigitalOut(D0),
	DigitalOut(D1),
	DigitalOut(D2),
	DigitalOut(D3)
};

Serial serial(SERIAL_TX, SERIAL_RX);

int main() {
	float value = 0;

	serial.baud(115200);

	while(1) {
		for (int i = 0; i < 4; ++i) {
			digitalOut[0] = 0;
			digitalOut[1] = 0;
			digitalOut[2] = 0;
			digitalOut[3] = 0;
			digitalOut[i] = 1;

			for (int j = 0; j < 4; ++j) {
				value = analogIn[j].read() * 3300;
				serial.printf("%.0f", value);
				if (j < 3) {
					serial.printf(", ");
				}
			}
			serial.printf("; ");
			wait(0.001);
		}

		serial.printf("\n");
		led = !led;
		wait(0.1);
	}
}
