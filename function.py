import numpy as np
import array as ar
import torch

def convert(logit, label):
    count = []
    num = 0
    for i in range(label.shape[0]):
        for j in range(label.shape[1]):
            if(label[i][j] == 1):
                num += 1
            if(j == label.shape[1] - 1):
                count.append(num)
                num = 0

    arr = logit
    for i in range(len(count)):
        for j in range(count[i]):
            logit[i][logit[i] == arr[i].max()] = 1
            max = torch.argmax(arr[i])
            arr[i][max] = 0

    for i in range(logit.shape[0]):
        for j in range(logit.shape[1]):
            if(logit[i][j] == 0):
                logit[i][j] = 1

    for i in range(logit.shape[0]):
        for j in range(logit.shape[1]):
            if(logit[i][j] != 1):
                logit[i][j] = 0
    
    return logit
