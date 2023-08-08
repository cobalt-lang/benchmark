using System;

class Program {
    static int Mandelbrot(Complex c, int max_iter) {
        Complex z = 0;
        int i;
        for (i = 0; i < max_iter && z.Magnitude < 2; i++) {
            z = z * z + c;
        }
        return i;
    }

    static int[,] RenderMandelbrot(int width, int height, double x_min, double x_max, double y_min, double y_max, int max_iter) {
        int[,] pixels = new int[height, width];
        for (int y = 0; y < height; y++) {
            for (int x = 0; x < width; x++) {
                Complex c = new Complex(x_min + (x_max - x_min) * x / (width - 1), y_min + (y_max - y_min) * y / (height - 1));
                pixels[y, x] = Mandelbrot(c, max_iter);
            }
        }
        return pixels;
    }

    static void Main() {
        int[,] pixels = RenderMandelbrot(100, 100, -2.0, 2.0, -2.0, 2.0, 100);
    }
}

class Complex {
    public double Real { get; set; }
    public double Imaginary { get; set; }

    public Complex(double real, double imaginary) {
        Real = real;
        Imaginary = imaginary;
    }

    public static Complex operator +(Complex a, Complex b) {
        return new Complex(a.Real + b.Real, a.Imaginary + b.Imaginary);
    }

    public static Complex operator *(Complex a, Complex b) {
        return new Complex(a.Real * b.Real - a.Imaginary * b.Imaginary, a.Real * b.Imaginary + a.Imaginary * b.Real);
    }

    public double Magnitude {
        get { return Math.Sqrt(Real * Real + Imaginary * Imaginary); }
    }
}