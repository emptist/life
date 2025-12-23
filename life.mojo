from gridv1 import Grid

fn grid_str(grid: Grid) -> String:
    # Create an empty String
    str = String()

    # Iterate through rows 0 through rows-1
    for row in range(grid.rows):
        # Iterate through columns 0 through cols-1
        for col in range(grid.cols):
            if grid.data[row][col] == 1:
                str += "*"  # If cell is populated, append an asterisk
            else:
                str += " "  # If cell is not populated, append a space
        str += "\n"     # Add a newline between rows, but not at the end
    return str

def main():
    data = [
        [0, 1, 0, 0, 0, 0, 0, 0],
        [0, 0, 1, 0, 0, 0, 0, 0],
        [1, 1, 1, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0],
    ]
    start = Grid(8, 8, data^)
    result = grid_str(start)
    print(result)
    
    # this will fail because data^ means data is shifted ownership to Grid
    # so we cannot use data anymore, since data is uninitialized now 
    # print(data)