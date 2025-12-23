@fieldwise_init
struct Grid(Copyable):
    var rows: Int
    var cols: Int
    var data: List[List[Int]]

    # since we are using @fieldwise_init, we get a constructor for free
    # fn __init__(out self, rows: Int, cols: Int, var data: List[List[Int]]):
    #     self.rows = rows
    #     self.cols = cols
    #     self.data = data^