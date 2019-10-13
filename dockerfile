# Since we are serving a static site. We will use NGINX to server the static site
FROM nginx:1.12-alpine

# Following directions on: https://medium.com/google-cloud/how-to-run-a-static-site-on-google-cloud-run-345713ca4b40
# Copy the nginx configuration template to the nginx config directory
COPY nginx/default.template /etc/nginx/conf.d/default.template

#Copy the React app into the proper directory
COPY ./ /usr/share/nginx/html
# Substitute the environment variables and generate the final config
CMD envsubst < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'
