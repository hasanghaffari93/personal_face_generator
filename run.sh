export MODEL_NAME="./models/pretrained/stable-diffusion-v1-5"
export INSTANCE_DIR="./images/Rose_Leslie/real"
export CLASS_DIR="./class_images/man"
export OUTPUT_DIR="./models/finetuned/Rose_Leslie"


accelerate launch diffusers/examples/dreambooth/train_dreambooth.py \
  --pretrained_model_name_or_path=$MODEL_NAME  \
  --instance_data_dir=$INSTANCE_DIR \
  --class_data_dir=$CLASS_DIR \
  --output_dir=$OUTPUT_DIR \
  --with_prior_preservation --prior_loss_weight=1.0 \
  --instance_prompt="a photo of sks man" \
  --class_prompt="a photo of man" \
  --resolution=512 \
  --train_batch_size=1 \
  --gradient_accumulation_steps=1 --gradient_checkpointing \
  --use_8bit_adam \
  --enable_xformers_memory_efficient_attention \
  --set_grads_to_none \
  --learning_rate=2e-6 \
  --lr_scheduler="constant" \
  --lr_warmup_steps=0 \
  --num_class_images=200 \
  --max_train_steps=1200 \
  --train_text_encoder
  
  
  
  
export MODEL_NAME="./models/pretrained/stable-diffusion-v1-5"
export INSTANCE_DIR="./images/Neil_deGrasse_Tyson/real"
export CLASS_DIR="./class_images/woman"
export OUTPUT_DIR="./models/finetuned/Neil_deGrasse_Tyson"


accelerate launch diffusers/examples/dreambooth/train_dreambooth.py \
  --pretrained_model_name_or_path=$MODEL_NAME  \
  --instance_data_dir=$INSTANCE_DIR \
  --class_data_dir=$CLASS_DIR \
  --output_dir=$OUTPUT_DIR \
  --with_prior_preservation --prior_loss_weight=1.0 \
  --instance_prompt="a photo of sks woman" \
  --class_prompt="a photo of woman" \
  --resolution=512 \
  --train_batch_size=1 \
  --gradient_accumulation_steps=1 --gradient_checkpointing \
  --use_8bit_adam \
  --enable_xformers_memory_efficient_attention \
  --set_grads_to_none \
  --learning_rate=2e-6 \
  --lr_scheduler="constant" \
  --lr_warmup_steps=0 \
  --num_class_images=200 \
  --max_train_steps=1200 \
  --train_text_encoder
 
# Fine-tune text encoder with the UNet.
