# Label-efficient Deep Learning for Surgical Video Analysis
***HKUST ECE/CPEG FYP(2022-23) Group 107***

Collaboration with [HoHohs](https://github.com/HoHohs)

Implementing Rendezvous(RDV) recognition model with cross-pseudo semi-supervising(CPS) method to recognize the surgical action triplets(used instruments, actions performed and target anatomies) of the surgical video dataset, CholecT45.

For more details about the dataset, CholecT45, please visit the [official website](https://github.com/CAMMA-public/cholect45).

There are more details about this project in the [report](https://docs.google.com/document/d/1vgWkxOzHt1CHmJH6P07ugJKy10Bi0ZmO/edit).

| mAP               | Instrument(I) | Verb(V) | Target(T) | IVT    |
| ----------------- | ------------- | ------- | --------- | ------ |
| Fully supervision | 0.8212        | 0.5598  | 0.3809    | 0.2221 |
| CPS               | 0.8382        | 0.6265  | 0.3869    | 0.2360 |

AP (Average precision) is a metric in measuring the accuracy of recognitions. Average precision computes the average precision value for recall value over 0 to 1. 1 means that all recognition results match the ground truths and vice versa. 

The overall performance of using semi-supervised learning with CPS is improved while comparing with that of using simple training methods. The mean average precision of surgical action triplets recognition(mAP of IVT) on the dataset, CholecT45 is increased by about 0.0139. Also, the semi-supervised learning with CPS can use part of the data that does not require labelling. This method improves the performance and reduces the labelling cost at the same time. 

