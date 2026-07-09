import string
import random

Ltr = string.ascii_letters
upper_Ltr = string.ascii_uppercase
lower_Ltr = string.ascii_lowercase
numbers = string.digits
punctuation = string.punctuation
lis = ["sihem", "password", "letters"]
password = random.choice(lis)
print(Ltr)
print(upper_Ltr)
print(lower_Ltr)
print(numbers)
print(punctuation)
print(password)
def password(length, strength):
    if strength.lower =='weak':
        lis = ["sihem", "password", "letters"]
        password = random.choice(lis)
        return password
    else:
        all_chars = Ltr + punctuation + numbers + upper_Ltr + lower_Ltr
        password = ""
        for i in range(length):
            password += random.choice(all_chars)
        return password
    if __name__ == "__main__":
        pass 
        print(password(length=12, strength='strong'))
    