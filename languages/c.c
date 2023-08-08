#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

int mandelbrot(double complex c, int max_iter) {
    double complex z = 0;
    int i;
    for (i = 0; i < max_iter && cabs(z) < 2; i++) {
        z = z * z + c;
    }
    return i;
}

int** render_mandelbrot(int width, int height, double x_min, double x_max, double y_min, double y_max, int max_iter) {
    int** pixels = malloc(height * sizeof(int*));
    for (int y = 0; y < height; y++) {
        pixels[y] = malloc(width * sizeof(int));
        for (int x = 0; x < width; x++) {
            double complex c = x_min + (x_max - x_min) * x / (width - 1) + (y_min + (y_max - y_min) * y / (height - 1)) * I;
            pixels[y][x] = mandelbrot(c, max_iter);
        }
    }
    return pixels;
}

int main() {
    int** pixels = render_mandelbrot(100, 100, -2.0, 2.0, -2.0, 2.0, 100);
    return 0;
}