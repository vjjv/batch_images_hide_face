# batch_images_hide_face
Batch hide face script for images

//input in 'images'
//output in 'blurred'
//install python3

install numpy
```python
sudo pip3 install numpy
```


//install open-cv
sudo pip3 install opencv-python

//Catalina or later : to access to usr with write permissions :
//reboot with cmd-r : recovery mode, open utility-> terminal
csrutil disable

//reboot in normal mode and mount root with write permissions
sudo mount -uw /

//run script
sudo chmod 755 batch_face_hide.sh
sudo ./batch_face_hide.sh
