fPascal::Integer->Integer->Integer
fPascal 0 0 = 1
fPascal row col | row >= 0 && col >= 0 = fPascal (row - 1) (col - 1) + fPascal (row - 1) (col)
  | otherwise = 0

fPascalRow::Integer->Integer->[Integer]
fPascalRow _ 0 = [1]
fPascalRow a b = [fPascal a b] ++ fPascalRow a (b-1)

fDreieck::Integer->[[Integer]]
fDreieck 0 = [[1]]
fDreieck a = [fPascalRow a a] ++ fDreieck (a-1)