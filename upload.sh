if [ -f ~/rom/out/target/product/surya/Nusantara*.zip ]; then
      curl -s https://api.telegram.org/bot$tokentl/sendMessage -d chat_id=$idtl -d text="📤 Uploading Build $(cd ~/rom/out/target/product/surya/ && ls Nusantara*.zip)"
      rclone copy ~/rom/out/target/product/surya/Nusantara*.zip komom:nusantara -P
      curl -s https://api.telegram.org/bot$tokentl/sendMessage -d chat_id=$idtl -d text="✅ Build $(cd ~/rom/out/target/product/surya/ && ls Nusantara*.zip) Uploaded Successfully!"
fi
