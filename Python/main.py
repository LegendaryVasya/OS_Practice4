# from datetime import datetime
#
# i = int(input('Введите i: '))
# b = int(input('Введите b: '))
# c = int(input('Введите с: '))
#
#
# def f(i, b, c):
#     if i == 0: return 0
#     x = 0
#     for n in range(1, 100000001):
#         x += b * 2 + c - i
#     print('Ответ:', x)
#     # return x + f(i - 1)
#     return f(i - 1, b, c) + x
#
#
# if __name__ == "__main__":
#     start = datetime.now()
#     f(i, b, c)
#     print('Времени затрачено', datetime.now() - start)
import datetime as dt

a = 0
b = 2
c = 3
iterations = 100000000

start = dt.datetime.now()

for i in range(iterations):
    a += b * 2 + c - i

end = dt.datetime.now()

exec_time = ((end - start).seconds * 1000000 + (end-start).microseconds) / 1000000
print(f'Python: {exec_time} seconds')
