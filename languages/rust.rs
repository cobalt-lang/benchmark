fn mandelbrot(x: f64, y: f64, max_iter: u32) -> u32 {
    let mut zx = 0.0;
    let mut zy = 0.0;
    let mut i = 0;
    while zx * zx + zy * zy < 4.0 && i < max_iter {
        let new_zx = zx * zx - zy * zy + x;
        zy = 2.0 * zx * zy + y;
        zx = new_zx;
        i += 1;
    }
    i
}

fn render_mandelbrot(width: u32, height: u32, x_min: f64, x_max: f64, y_min: f64, y_max: f64, max_iter: u32) -> Vec<Vec<u32>> {
    let mut pixels = vec![vec![0; width as usize]; height as usize];
    for y in 0..height {
        for x in 0..width {
            let px = x_min + (x_max - x_min) * x as f64 / (width - 1) as f64;
            let py = y_min + (y_max - y_min) * y as f64 / (height - 1) as f64;
            let i = mandelbrot(px, py, max_iter);
            pixels[y as usize][x as usize] = i;
        }
    }
    pixels
}

fn main(){
    let pixels = render_mandelbrot(100, 100, -2.0, 2.0, -2.0, 2.0, 100);
}