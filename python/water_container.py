def getDistance(i, j, array):
    return (array.index(j) - array.index(i))


def getVolume(i, j, array):
    width = getDistance(i, j, array)
    height = min(i, j)

    volume = width*height

    print(volume)
    return volume


def maxVolum(array):
    height1 = array[0]
    height2 = array[len(array) - 1]

    currentVol = 0

    while array.index(height1) != (len(array)-1):
        if getVolume(height1, height2, array) >= currentVol:
            currentVol = getVolume(height1, height2, array)
        else:
            height1 = array[array.index(height1) + 1]
            print(1)

    
    print(getVolume(height1,height2,array))


inputArray = []
n = int(input())

for _ in range(n):
    inputArray.append(int(input()))

maxVolum(inputArray)
