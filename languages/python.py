def mandelbrot(x, y, max_iter):
    zx, zy = 0, 0
    i = 0
    while zx * zx + zy * zy < 4 and i < max_iter:
        new_zx = zx * zx - zy * zy + x
        zy = 2 * zx * zy + y
        zx = new_zx
        i += 1
    return i

def render_mandelbrot(width, height, x_min, x_max, y_min, y_max, max_iter):
    pixels = []
    for y in range(height):
        row = []
        for x in range(width):
            px = x_min + (x_max - x_min) * x / (width - 1)
            py = y_min + (y_max - y_min) * y / (height - 1)
            i = mandelbrot(px, py, max_iter)
            row.append(i)
        pixels.append(row)
    return pixels

render_mandelbrot(100, 100, -2, 2, -2, 2, 100)