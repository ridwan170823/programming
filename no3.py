def is_prime(n):
    if n <= 1:
        return False
    if n <= 3:
        return True
    if n % 2 == 0 or n % 3 == 0:
        return False
    i = 5
    while i * i <= n:
        if n % i == 0 or n % (i + 2) == 0:
            return False
        i += 6
    return True

def minimize_bottles(X, primes):
    bottles_needed = [0] * len(primes)
    for i in range(len(primes) - 1, -1, -1):
        bottles_needed[i] = X // primes[i]
        X %= primes[i]
    return bottles_needed

def main():
    primes = [p for p in range(2, 31) if is_prime(p)]
    X = int(input("Enter the amount of water (between 100 and 10000000): "))
    
    if 100 <= X < 10000000:
        bottles_needed = minimize_bottles(X, primes)
        total_bottles = sum(bottles_needed)
        
        for i, bottles in enumerate(bottles_needed):
            print(f"Botol {primes[i]} = {bottles} botol")
        
        print(f"Total botol yang dibutuhkan: {total_bottles} botol")
    else:
        print("Input tidak valid. Pastikan X berada di antara 100 dan 10000000.")

if __name__ == "__main__":
    main()
