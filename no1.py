def form_smallest_number(sequence):
  digits = [1, 2, 3, 4, 5, 6, 7, 8, 9] 
  number = [] 
  stack = []

  for char in sequence:
    if char == "M":
      stack.append(digits.pop(0))
    elif char == "N":
      number.append(digits.pop(0))
      while stack:
        number.append(stack.pop())

  number.append(digits.pop(0))
  while stack:
    number.append(stack.pop())

  return "".join(map(str, number))
    
sequence = input("Masukkan urutan M/N: ")
sequence = sequence.upper()

while True:
  if not all(char in 'MN' for char in sequence) or len(sequence) > 8:
    print("Input tidak valid. Pastikan hanya mengandung karakter M dan N, serta panjang maksimal 8 karakter.")
    break
  output = form_smallest_number(sequence)

  print(f"Masukan {sequence} Output {output}")

  choice = input("Apakah Anda ingin melanjutkan? (y/n): ")
  choice = choice.lower()

  if choice == "n":
    break
  else:
    sequence = input("Masukkan urutan M dan N: ")
