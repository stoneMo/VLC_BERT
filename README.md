# VLC-BERT (11747-project)

## Authors 
Shentong Mo,  Jingfei Xia,  Ihor Markevych

## Abstract
Visual and linguistic pre-training aims to learn vision and language representations together, which can be transferred to visual-linguistic downstream tasks. In this work, we first explore three previous models for pre-training visual and language representations together. Then we evaluate those pre-trained models on two main downstream tasks, including Visual Question Answering (VQA) and Visual Commonsense Reasoning (VCR). Our goal is to propose a novel network based on BERT for pre-training visual and linguistic representations contrastively, namely **VLC-BERT**, which applies a contrastive learning framework during the pre-training stage. Compared with three baselines, our VLC-BERT pre-trained models are expected to achieve comparable or better results when transferred to VQA and VCR tasks. 

## Baselines

We firstly reproduce several existing models and take them as a baselines that we aim to improve with VLC-BERT. Please see the details about those baselines in each branch on this repo.
1. [ViLBERT](https://github.com/stoneMo/VLC-BERT/tree/ViLBERT)
2. [VisualBERT](https://github.com/stoneMo/VLC-BERT/tree/VisualBERT)
3. [VL-BERT](https://github.com/stoneMo/VLC-BERT/tree/VLBERT)

## VLC-BERT

We apply contrastive pre-training for visual-linguistic data and fine-tune with adaptation network in order to build VLC-BERT. We use batch size of 512 for 10 epochs for pre-training with Adam optimizer.

## Running Command 


### VQA 
```
# coco pre-training
python train.py -folder ../experiments/vqa/coco_pre_train_vlc -config ../configs/vqa/coco-pre-train.json

# fine-tuning
python train.py -folder ../experiments/vqa/vqa_finetune_vlc -config ../configs/vqa/fine-tune.json

```

### VCR
```
# coco pre-training
python train.py -folder ../experiments/vcr/coco_pre_train_vlc -config ../configs/vcr/coco-pre-train.json

# qa fine-tuning
python train.py -folder ../experiments/vcr/vcr_finetune_qa_vlc -config ../configs/vcr/fine-tune-qa.json

# qar fine-tuning 
python train.py -folder ../experiments/vcr/vcr_finetune_qar_vlc -config ../configs/vcr/fine-tune-qar.json

```

## References

[1]Ashish Vaswani, Noam Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones, Aidan N. Gomez,Lukasz Kaiser, and Illia Polosukhin. Attention is all you need. InAdvances in Neural Informa-tion Processing Systems, page 5998–6008, 2017.

[2]Jacob Devlin, Ming-Wei Chang, Kenton Lee, and Kristina Toutanova. BERT: Pre-training ofdeep bidirectional transformers for language understanding.arXiv preprint arXiv:1810.04805,2018.

[3]Jiasen Lu,  Dhruv Batra,  Devi Parikh,  and Stefan Lee.   Vilbert:  Pretraining task-agnosticvisiolinguistic representations for vision-and-language tasks. InAdvances in Neural InformationProcessing Systems, pages 13–23, 2019.7

[4]Liunian Harold Li, Mark Yatskar, Da Yin, Cho-Jui Hsieh, and Kai-Wei Chang. Visualbert: Asimple and performant baseline for vision and language.arXiv preprint arXiv:1908.03557,2019.

[5]Weijie Su, Xizhou Zhu, Yue Cao, Bin Li, Lewei Lu, Furu Wei, and Jifeng Dai. VL-BERT: Pre-training of generic visual-linguistic representations. InInternational Conference on LearningRepresentations, 2020.

[6]Ting Chen, Simon Kornblith, Mohammad Norouzi, and Geoffrey Hinton. A simple frameworkfor contrastive learning of visual representations.  InInternational Conference on MachineLearning, pages 1597–1607, 2020.

[7]Ting Chen,  Simon Kornblith,  Kevin Swersky,  Mohammad Norouzi,  and Geoffrey Hinton.Big Self-Supervised Models are Strong Semi-Supervised Learners.  InAdvances in NeuralInformation Processing Systems, pages 22243–22255, 2020.

[8]Xinlei Chen, Haoqi Fan, Ross Girshick, and Kaiming He. Improved baselines with momentumcontrastive learning.arXiv preprint arXiv:2003.04297, 2020.

[9]Prannay Khosla, Piotr Teterwak, Chen Wang, Aaron Sarna, Yonglong Tian, Phillip Isola, AaronMaschinot, Ce Liu, and Dilip Krishnan. Supervised contrastive learning. InAdvances in NeuralInformation Processing Systems, pages 18661–18673, 2020.

[10]Alec Radford, Jong Wook Kim, Chris Hallacy, Aditya Ramesh, Gabriel Goh, Sandhini Agar-wal, Girish Sastry, Amanda Askell, Pamela Mishkin, Jack Clark, Gretchen Krueger, and IlyaSutskever.   Learning transferable visual models from natural language supervision.arXivpreprint arXiv:2103.00020, 2021.

[11]Alec Radford, Jeff Wu, Rewon Child, David Luan, Dario Amodei, and Ilya Sutskever. LanguageModels are Unsupervised Multitask Learners. 2019.

[12]Tom B. Brown, Benjamin Mann, Nick Ryder, Melanie Subbiah, Jared Kaplan, Prafulla Dhariwal,Arvind Neelakantan, Pranav Shyam, Girish Sastry, Amanda Askell, Sandhini Agarwal, ArielHerbert-Voss, Gretchen Krueger, Tom Henighan, Rewon Child, Aditya Ramesh, Daniel M.Ziegler, Jeffrey Wu, Clemens Winter, Christopher Hesse, Mark Chen, Eric Sigler, MateuszLitwin, Scott Gray, Benjamin Chess, Jack Clark, Christopher Berner, Sam McCandlish, AlecRadford, Ilya Sutskever, and Dario Amodei.  Language models are few-shot learners.arXivpreprint arXiv:2005.14165, 2020.

[13]Yuqi Huo, Manli Zhang, Guangzhen Liu, Haoyu Lu, Yizhao Gao, Guoxing Yang, Jingyuan Wen,Heng Zhang, Baogui Xu, Weihao Zheng, Zongzheng Xi, Yueqian Yang, Anwen Hu, JinmingZhao, Ruichen Li, Yida Zhao, Liang Zhang, Yuqing Song, Xin Hong, Wanqing Cui, DanyangHou, Yingyan Li, Junyi Li, Peiyu Liu, Zheng Gong, Chuhao Jin, Yuchong Sun, Shizhe Chen,Zhiwu Lu, Zhicheng Dou, Qin Jin, Yanyan Lan, Wayne Xin Zhao, Ruihua Song, and Ji-RongWen. WenLan: Bridging vision and language by large-scale multi-modal pre-training.arXivpreprint arXiv:2103.06561, 2021.

[14]Kaiming He, Haoqi Fan, Yuxin Wu, Saining Xie, and Ross Girshick. Momentum contrast forunsupervised visual representation learning. InProceedings of IEEE Conference on ComputerVision and Pattern Recognition, pages 9729–9738, 2020.

[15]Alec Radford, Karthik Narasimhan, Tim Salimans, and Ilya Sutskever. Improving LanguageUnderstanding by Generative Pre-Training. 2019.

[16]Di Qi, Lin Su, Jia Song, Edward Cui, Taroon Bharti, and Arun Sacheti. Imagebert: Cross-modalpre-training with large-scale weak-supervised image-text data.CoRR, abs/2001.07966, 2020.

[17]Dandan  Song,  Siyi  Ma,  Zhanchen  Sun,  Sicheng  Yang,  and  Lejian  Liao.KVL-BERT:knowledge enhanced visual-and-linguistic BERT for visual commonsense reasoning.CoRR,abs/2012.07000, 2020.

[18]Fei Yu, Jiji Tang, Weichong Yin, Yu Sun, Hao Tian, Hua Wu, and Haifeng Wang.   Ernie-vil:   Knowledge  enhanced  vision-language  representations  through  scene  graph.CoRR,abs/2006.16934, 2020.

[19]Junyang Lin, An Yang, Yichang Zhang, Jie Liu, Jingren Zhou, and Hongxia Yang. Interbert:Vision-and-language interaction for multi-modal pretraining.CoRR, abs/2003.13198, 2020.

[20]Yen-Chun  Chen,  Linjie  Li,  Licheng  Yu,  Ahmed  El  Kholy,  Faisal  Ahmed,  Zhe  Gan,Yu Cheng, and Jingjing Liu. UNITER: learning universal image-text representations.CoRR,abs/1909.11740, 2019.

[21]Chen Sun, Austin Myers, Carl Vondrick, Kevin Murphy, and Cordelia Schmid. VideoBERT: Ajoint model for video and language representation learning.arXiv preprint arXiv:1904.01766,2019.

[22]Hao Tan and Mohit Bansal. LXMERT: Learning cross-modality encoder representations fromtransformers.arXiv preprint arXiv:1908.07490, 2019.

[23]Jonas Pfeiffer, Ivan Vuli ́c, Iryna Gurevych, and Sebastian Ruder.  Mad-x: An adapter-basedframework for multi-task cross-lingual transfer, 2020.

[24]Jonas Pfeiffer, Ivan Vulic, Iryna Gurevych, and Sebastian Ruder. MAD-X: an adapter-basedframework for multi-task cross-lingual transfer.CoRR, abs/2005.00052, 2020.

[25]Yonghui Wu, Mike Schuster, Zhifeng Chen, Quoc V. Le, Mohammad Norouzi, WolfgangMacherey, Maxim Krikun, Yuan Cao, Qin Gao, Klaus Macherey, Jeff Klingner, Apurva Shah,Melvin Johnson, Xiaobing Liu, Lukasz Kaiser, Stephan Gouws, Yoshikiyo Kato, Taku Kudo,Hideto Kazawa, Keith Stevens, George Kurian, Nishant Patil, Wei Wang, Cliff Young, JasonSmith, Jason Riesa, Alex Rudnick, Oriol Vinyals, Greg Corrado, Macduff Hughes, and JeffreyDean.  Google’s neural machine translation system:  Bridging the gap between human andmachine translation.arXiv preprint arXiv:1609.08144, 2016.

[26]Shaoqing Ren, Kaiming He, Ross Girshick, and Jian Sun.  Faster r-cnn:  Towards real-timeobject detection with region proposal networks. InAdvances in Neural Information ProcessingSystems, pages 91–99, 2015.

[27]Piyush Sharma, Nan Ding, Sebastian Goodman, and Radu Soricut.  Conceptual captions: Acleaned, hypernymed, image alt-text dataset for automatic image captioning. InProceedings ofthe 56th Annual Meeting of the Association for Computational Linguistics (Volume 1: LongPapers), pages 2556–2565, 2018.

[28]Tsung-Yi Lin, Michael Maire, Serge J. Belongie, Lubomir D. Bourdev, Ross B. Girshick, JamesHays, Pietro Perona, Deva Ramanan, Piotr Dollár, and C. Lawrence Zitnick. Microsoft COCO:common objects in context.arXiv preprint arXiv:1405.0312, 2014.

[29]Yukun Zhu, Ryan Kiros, Richard S. Zemel, Ruslan Salakhutdinov, Raquel Urtasun, AntonioTorralba, and Sanja Fidler. Aligning Books and Movies: Towards Story-like Visual Explanationsby Watching Movies and Reading Books.  InProceedings of IEEE Conference on ComputerVision and Pattern Recognition, pages 19–27, 2015.

[30]Diederik P Kingma and Jimmy Ba. Adam: A method for stochastic optimization.arXiv preprintarXiv:1412.6980, 2014.

[31]Peter Anderson, Xiaodong He, Chris Buehler, Damien Teney, Mark Johnson, and StephenGouldand Lei Zhang.   Bottom-up and top-down attention for image captioning and visualquestion answering.  InProceedings of IEEE Conference on Computer Vision and PatternRecognition, page 6077–6086, 2018.

[32]Yash Goyal, Tejas Khot, Douglas Summers-Stay, Dhruv Batra, and Devi Parikh. Making thev in vqa matter: Elevating the role of image understanding in visual question answering.  InProceedings of IEEE Conference on Computer Vision and Pattern Recognition, page 6904–6913,2017.

[33]Rowan Zellers, Yonatan Bisk, Ali Farhadi, , and Yejin Choi.  From recognition to cognition:Visual commonsense reasoning. InProceedings of IEEE Conference on Computer Vision andPattern Recognition, page 6720–6731, 2019.
