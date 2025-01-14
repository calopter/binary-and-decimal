# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  val = 0
  len = binary_array.count
  
  binary_array.each_with_index do |bit, index|
    pow = len.pred - index
    val += 2 ** pow * bit 
  end
  
  return val
end
