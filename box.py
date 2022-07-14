import sys,time

password = sys.argv[1]

if password == '123':
    print('BOX OPENED =)')
elif password == '666':
    print('🧨')
    time.sleep(1)
    print('tick')
    time.sleep(0.5)
    print('tick')
    time.sleep(0.1)
    print('💥 💥 BOOM!!! 💥 💥')
else:
    print('BOX CLOSED =(')