
1. Create/Select your proper dir for project & change that dir to your dir
2. Create Script File & enter in it - copy code
3. Make Sure that your script file has necessary permission for execution if not make it - sudo chmod +x filename
4. Make sure that owner of the file is user not root if not make it - sudo chown user:user /path/filename.(use sudo if u want root)
5. Verify ownership  - ls -l filename.
6. If your script doesnot change any permission or ownership & error shows permission denied that means the owner of the created file is someone else here it can be root  so use sudo to run the script
7.  sudo ./scriptfile
