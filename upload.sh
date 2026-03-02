if [ -f ~/rom/out/target/product/whyred/qassa*.zip ]; then
      curl -s https://api.telegram.org/bot$tokentl/sendMessage -d chat_id=$idtl -d text="📤 Uploading Build $(cd ~/rom/out/target/product/whyred/ && ls qassa*.zip)"
      rclone copy ~/rom/out/target/product/whyred/qassa*.zip komom:qassa -P
      curl -s https://api.telegram.org/bot$tokentl/sendMessage -d chat_id=$idtl -d text="✅ Build $(cd ~/rom/out/target/product/whyred/ && ls qassa*.zip) Uploaded Successfully!"
fi
