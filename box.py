import sys,time

password = sys.argv[1]

if password == '123':
    print('BOX OPENED =)')
elif password == '666':
    print('๐งจ')
    time.sleep(1)
    print('tick')
    time.sleep(0.5)
    print('tick')
    time.sleep(0.1)
    print('๐ฅ ๐ฅ BOOM!!! ๐ฅ ๐ฅ')
else:
    print('BOX CLOSED =(')