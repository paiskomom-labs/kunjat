if [ -f ~/rom/out/target/product/surya/lineage*.zip ]; then
      curl -s https://api.telegram.org/bot$tokentl/sendMessage -d chat_id=$idtl -d text="📤 Uploading Build $(cd ~/rom/out/target/product/surya/ && ls lineage*.zip)"
      rclone copy ~/rom/out/target/product/surya/lineage*.zip komom:lineage -P
      curl -s https://api.telegram.org/bot$tokentl/sendMessage -d chat_id=$idtl -d text="✅ Build $(cd ~/rom/out/target/product/surya/ && ls lineage*.zip) Uploaded Successfully!"
fi
