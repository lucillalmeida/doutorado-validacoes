import numpy

file = open('Temperaturas.csv', mode='r')
data = file.read()
file.close()

number_timesteps = data.count('Timestep')
block_size = data.count('\n') // number_timesteps
data = data.split('\n')
print('number of time steps = {0:d}'.format(number_timesteps))
print('data block size = {0:d}'.format(block_size))

temperature = numpy.zeros((number_timesteps, block_size - 3), dtype=numpy.float64)
t = numpy.zeros((number_timesteps), dtype=numpy.float64)
y = None

for step in range(number_timesteps):
    block = data[step * block_size : (step + 1) * block_size]
    t[step] = float(block[1].split(',')[1])
    temperature[step] = numpy.loadtxt(block, dtype=numpy.float64, delimiter=',', skiprows=3, usecols=4)
    if step == 0:
        y = numpy.loadtxt(block, dtype=numpy.float64, delimiter=',', skiprows=3, usecols=1)

print(t)
print(y)
print(temperature[0])
print(temperature[-1])

print(y.shape, temperature[10].shape, t[10])
print(t.shape, temperature[:, -1].shape, y[-1])
