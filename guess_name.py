import random

names = ["chethan", "nishanth", "Kumar", "tharun", "arun"]

secret_name = random.choice(names)

print("Welcome to Guess My Name!")
print("Choose from:", ",".join(names))

attempts = 3

while attempts > 0:
    guess = input("Enter your guess: ")

    if guess.lower() == secret_name.lower():
        print("🎉 Correct! You guessed the name.")
        break
    else:
        attempts -= 1
        print(f"Wrong guess! Attempts left: {attempts}")

if attempts == 0:
    print(f"Game Over! The correct name was {secret_name}")