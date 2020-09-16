# relaynet_pytorch

PyTorch Implementation of ReLayNet. There are still some bugs and issues in the code, we are working on fixing them.

Coded by Abhijit Guha Roy and Shayan Siddiqui (https://github.com/shayansiddiqui)

If you use this code for any academic purpose, please cite:

A. Guha Roy, S. Conjeti, S.P.K.Karri, D.Sheet, A.Katouzian, C.Wachinger, and N.Navab, "ReLayNet: retinal layer and fluid segmentation of macular optical coherence tomography using fully convolutional networks," Biomed. Opt. Express 8, 3627-3642 (2017) 
Link: https://arxiv.org/abs/1704.02161

Enjoy!! :)

### Common Errors

if labels mask has negative values (void is -1) it throws this error

RuntimeError: cuDNN error: CUDNN_STATUS_NOT_INITIALIZED
Exception raised from createCuDNNHandle at ..\aten\src\ATen\cudnn\Handle.cpp:9 (most recent call first):
00007FFE055075A200007FFE05507540 c10.dll!c10::Error::Error [<unknown file> @ <unknown line number>]


## these lines prevent the error
## RuntimeError: Sizes of tensors must match except in dimension 3. Got 166 and 167 (The offending index is 0)
## which seems like an input size/kernel dimension mismatch