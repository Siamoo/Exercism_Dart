class GameOfLife {
  List<List<int>> _grid;

  GameOfLife(this._grid);

  void tick() {
    _grid = nextGeneration(_grid);
  }

  List<List<int>> matrix() => _grid;

  List<List<int>> nextGeneration(List<List<int>> grid) {
    if (grid.isEmpty || grid[0].isEmpty) {
      return grid;
    }

    int rows = grid.length;
    int cols = grid[0].length;

    List<List<int>> newGrid =
        List.generate(rows, (_) => List.filled(cols, 0));

    var directions = [
      [-1, -1], [-1, 0], [-1, 1],
      [0, -1],          [0, 1],
      [1, -1],  [1, 0], [1, 1],
    ];

    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        int liveNeighbors = 0;

        for (var d in directions) {
          int newRow = r + d[0];
          int newCol = c + d[1];

          if (newRow >= 0 && newRow < rows &&
              newCol >= 0 && newCol < cols) {
            liveNeighbors += grid[newRow][newCol];
          }
        }

        if (grid[r][c] == 1) {
          if (liveNeighbors == 2 || liveNeighbors == 3) {
            newGrid[r][c] = 1;
          }
        } else {
          if (liveNeighbors == 3) {
            newGrid[r][c] = 1;
          }
        }
      }
    }

    return newGrid;
  }
}
