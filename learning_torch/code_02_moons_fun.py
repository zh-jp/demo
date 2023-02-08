import torch.nn as nn
import torch
import numpy as np
import matplotlib.pyplot as plt

class LogicNet(nn.Module):
    def __init__(self, inputdim, hiddendim, outputdim):
        super(LogicNet, self).__init__()
        # 定义全连接层
        self.Linear1 = nn.Linear(inputdim, hiddendim)
        # 定义全连接层
        self.Linear2 = nn.Linear(hiddendim, outputdim)
        # 定义交叉熵函数
        self.criterion = nn.CrossEntropyLoss()
    # 搭建用两个全连接层组成的网络模型
    def forward(self, x):
        x = self.Linear1(x)
        x = torch.tanh(x)
        x = self.Linear2(x)
        return x
    # 实现LogicNet的预测类接口
    def predict(self, x):
        pred = torch.softmax(self.forward(x), dim=1)
        return torch.argmax(pred, dim=1)
    # 实现LogicNet类的损失值接口
    def getloss(self, x, y):
        y_pred = self.forward(x)
        loss = self.criterion(y_pred, y)
        return loss
# 定义函数计算移动平均损失值
def moving_average(a, w=10):
    if len(a) < w:
        return a[:]
    return [val if idx < w else sum(a[(idx-w):idx])/w for idx, val in enumerate(a)]

def plot_loss(losses):
    avgloss = moving_average(losses)
    plt.figure(1)
    plt.subplot(211)
    plt.plot(range(len(avgloss)), avgloss, 'b--')
    plt.xlabel('step number')
    plt.ylabel('Training loss')
    plt.title('step number vs. Training loss')
    plt.show 

# 封装支持Numpy的预测接口
def predict(x, model):
    x = torch.from_numpy(x).type(torch.FloatTensor)
    ans = model.predict(x)
    return ans.numpy()
# 在直角坐标系中可视化模型
def plot_decision_boundary(pred_func, X, Y):
    x_min, x_max = X[:,0].min() - .5, X[:,0].max() + .5
    y_min, y_max = X[:,1].min() - .6, X[:,1].max() + .5
    h = 0.01
    xx, yy = np.meshgrid(np.arange(x_min, x_max, h), np.arange(y_min, y_max, h))
    Z = pred_func(np.c_[xx.ravel(), yy.ravel()])
    Z = Z.reshape(xx.shape)
    plt.contourf(xx, yy, Z, cmap=plt.cm.Spectral)
    plt.title('Linear predict')
    arg = np.squeeze(np.argwhere(Y==0), axis = 1)
    arg2 = np.squeeze(np.argwhere(Y==1), axis = 1)
    plt.scatter(X[arg, 0], X[arg, 1], s=100, c='b', marker='+')
    plt.scatter(X[arg2,0], X[arg2, 1], s=40, c='r', marker='o')
    plt.show()
