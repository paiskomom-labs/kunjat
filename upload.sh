if [ -f ~/rom/out/target/product/whyred/conquer*.zip ]; then
      curl -s https://api.telegram.org/bot$tokentl/sendMessage -d chat_id=$idtl -d text="📤 Uploading Build $(cd ~/rom/out/target/product/whyred/ && ls conquer*.zip)"
      rclone copy ~/rom/out/target/product/whyred/conquer*.zip komom:conquer -P
      curl -s https://api.telegram.org/bot$tokentl/sendMessage -d chat_id=$idtl -d text="✅ Build $(cd ~/rom/out/target/product/whyred/ && ls conquer*.zip) Uploaded Successfully!"
fi
