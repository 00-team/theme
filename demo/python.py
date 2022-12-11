
from random import choices
from string import ascii_letters


class Person:
    name: str
    age: int = 1

    def __inti__():
        pass

    def ggez(self, cool):
        print(cool)


def main():

    letters: list[str] = choices(ascii_letters, k=20)
    word = ''.join(letters)
    print(word)

    for i in range(10, 20):
        pass

    if True == False:
        return 'broken'


if __name__ == '__main__':
    main()
