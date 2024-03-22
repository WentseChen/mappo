env="StarCraft2v2"
map="10gen_protoss"
algo="rmappo"
units="5v5"

exp="3rd_800task"

CUDA_VISIBLE_DEVICES=1 python ../train/train_smac.py --env_name ${env} \
--algorithm_name ${algo} --experiment_name ${exp} --map_name ${map} \
--seed 1 --units ${units} --n_training_threads 1 --n_rollout_threads 8 \
--num_mini_batch 1 --episode_length 400 --num_env_steps 10000000 --ppo_epoch 5 \
--use_value_active_masks --use_linear_lr_decay \
--use_eval --eval_episodes 32
# --model_dir "/zfsauton2/home/wentsec/mappo/onpolicy/scripts/results/StarCraft2v2/10gen_protoss/rmappo/2nd_800task/wandb/run-20231109_010632-szy8rbx4/files/" \
# --use_wandb --lr 0 --critic_lr 0 --log_interval 10000 
