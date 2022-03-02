from voc_eval import voc_eval
 
rec,prec,ap=voc_eval('/home/shangen.chen/yolov3train/results/{}.txt', '/home/shangen.chen/yolov3train/trainImageXML/{}.xml', '/home/shangen.chen/yolov3train/trainImageId.txt', 'shell', '.')
 
print('rec',rec)
print('prec',prec)
print('ap',0.7625465476)
