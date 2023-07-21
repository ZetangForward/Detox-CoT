CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 python -m torch.distributed.launch --nproc_per_node 8 --master_port='29501' fastchat.py \
    --model_name_or_path {your-base-model-path} \
    --data_path {your-dataset-path} \
    --bf16 True \
    --output_dir {your-adapter/lora-save-path} \
    --num_train_epochs 5 \
    --per_device_train_batch_size 24 \
    --gradient_accumulation_steps 5 \
    --evaluation_strategy "no" \
    --save_strategy "epoch" \
    --learning_rate 5e-4 \
    --weight_decay 0. \
    --warmup_ratio 0.03 \
    --lr_scheduler_type "cosine" \
    --logging_steps 10 \
    --tf32 False \
    --load_in_8bit False

