# Train command
# ex) running exp1
python train.py --workers 8 --device 0 --batch-size 32 --data data/1.yaml --img 640 640 \
--cfg cfg/training/yolov7-e6e --weights ./pretrained/yolov7-e6e.pt --name exp1 --hyp data/hyp.scratch.custom.yaml