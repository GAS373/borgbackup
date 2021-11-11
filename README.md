# Borgbackup


1. Create repository for client on Hetzener Storage Box "client_repository".
2. Create username for "client_repository" and attach "client_repository" to it in the Hetzener Storage Box console.
3. Create the directory .ssh in the "client_repository" with the file rights chmod 0700 (rwx------)           
4. Create the file .ssh/authorized_keys with the client public SSH keys and the file rights chmod 0600 (rw-------). 
5. Create repository for client server "client_repository/client_server_repository"            
6. Initialize repository : borg init -e none ssh://username@username.your-storagebox.de:23/./client_server_repository
7. Download borg on to client server in /root directory          
8. Edit .env file:


   - user=username - username for "client_repository"


   - repo=repository - "client_server_repository" 


   - archive=Archive - name for archive in the "client_server_repository"


9. run: docker-compose up -d
10. Create crontab -e for borg, examle: 0 2 * * 6 docker start "borgbackup_container_name"

[Link to Confluence](https://trydirect.atlassian.net/wiki/spaces/OIQ/pages/7241729/Backup)