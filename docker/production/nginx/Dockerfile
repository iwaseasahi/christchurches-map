FROM nginx:stable

# インクルード用の conf を削除
RUN rm /etc/nginx/conf.d/default.conf

# Nginx の設定ファイルをコンテナにコピー
ADD nginx.conf /etc/nginx/conf.d/christchurches-map.conf

# ビルド完了後に Nginx を起動
CMD /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
