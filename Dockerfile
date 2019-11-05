FROM google/dart:2.6

# Install Tota
RUN pub global activate tota

# Load entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
