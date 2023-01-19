# multi gpu distill
#python -m torch.distributed.launch --nproc_per_node 4 --master_port 9527 train_aux.py --workers 4 --device 0,1,2,3 \
#--sync-bn --batch-size 128 --data data/exp1.yaml --img 640 640 --cfg cfg/training/yolov7-w6.yaml \
#--weights ./pretrained/yolov7-w6.pt --name distill_e6e_2_w6 --hyp data/hyp.scratch.custom.yaml --distill --teacher-weight ./teacher_pt/exp1_best.pt

#python -m torch.distributed.launch --nproc_per_node 4 --master_port 9527 train_aux.py --workers 4 --device 0,1,2,3 \
#--sync-bn --batch-size 128 --data data/exp1.yaml --img 640 640 --cfg cfg/training/yolov7-w6.yaml \
#-weights ./pretrained/yolov7-w6.pt --name exp1_distill_w6 --hyp data/hyp.scratch.custom.yaml --distill --teacher-weight ./teacher_pt/exp1_best.pt

python -m torch.distributed.launch --nproc_per_node 4 --master_port 9527 train_aux.py --workers 4 --device 0,1,2,3 \
--sync-bn --batch-size 128 --data data/exp5.yaml --img 640 640 --cfg cfg/training/yolov7-w6.yaml \
--name exp5_distill_w6_FGFI_KD_teacher_exp5 --hyp data/hyp.scratch.custom.yaml --distill --teacher-weight ./teacher_pt/exp5_best.pt

#python train_aux.py --workers 8 --device 0,1 --batch-size 16 --data data/exp5.yaml --img 640 640 \
#--cfg cfg/training/yolov7-w6.yaml --weights ./pretrained/yolov7-w6.pt --name test --hyp data/hyp.scratch.custom.yaml --distill --teacher-weight ./teacher_pt/exp5_best.pt