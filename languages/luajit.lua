function mandelbrot(x, y, max_iter)
    local zx, zy = 0, 0
    local i = 0
    while zx * zx + zy * zy < 4 and i < max_iter do
        local new_zx = zx * zx - zy * zy + x
        zy = 2 * zx * zy + y
        zx = new_zx
        i = i + 1
    end
    return i
end

function render_mandelbrot(width, height, x_min, x_max, y_min, y_max, max_iter)
    local pixels = {}
    for y = 1, height do
        local row = {}
        for x = 1, width do
            local px = x_min + (x_max - x_min) * (x - 1) / (width - 1)
            local py = y_min + (y_max - y_min) * (y - 1) / (height - 1)
            local i = mandelbrot(px, py, max_iter)
            table.insert(row, i)
        end
        table.insert(pixels, row)
    end
    return pixels
end

render_mandelbrot(100, 100, -2, 2, -2, 2, 100)