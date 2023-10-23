FROM node:14

WORKDIR /app

# Copy server.js, start_and_test.sh, and package.json to the container
COPY server.js /app/
COPY start_and_test.sh /app/
COPY package.json /app/

# Install Node.js dependencies
RUN npm install

# Set environment variables
ENV PLUGIN_PORT=3000

# Expose the specified port
EXPOSE ${PLUGIN_PORT}

# Run the start_and_test.sh script during the image build process
RUN chmod +x /app/start_and_test.sh
RUN /app/start_and_test.sh

# Start the Node.js server
# CMD ["node", "server.js"]
ENTRYPOINT [ "/app/start_and_test.sh" ]
