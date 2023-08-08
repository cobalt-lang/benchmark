def mandelbrot(x, y, max_iter)
    zx, zy = 0, 0
    i = 0
    while zx * zx + zy * zy < 4 && i < max_iter do
        new_zx = zx * zx - zy * zy + x
        zy = 2 * zx * zy + y
        zx = new_zx
        i += 1
    end
    i
end

def render_mandelbrot(width, height, x_min, x_max, y_min, y_max, max_iter)
    pixels = []
    for y in 1..height do
        row = []
        for x in 1..width do
            px = x_min + (x_max - x_min) * (x - 1) / (width - 1)
            py = y_min + (y_max - y_min) * (y - 1) / (height - 1)
            i = mandelbrot(px, py, max_iter)
            row << i
        end
        pixels << row
    end
    pixels
end

render_mandelbrot(100, 100, -2, 2, -2, 2, 100)