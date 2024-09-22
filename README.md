# PROX-Multi-Cloud-Init
Unlocking the Power of Proxmox: Choosing the Right Linux &amp; BSD Prebuild Cloud-init images Templates for Your Needs

# virtualization 

Do you want to easily create new virtual machines to play around with using your favorite operating system, without having to spend a lot of time setting up basic things like your account, network settings, and hostname?

Well, Cloud-Init can help with all of that and more! It's usually used by big cloud providers, but setting it up can be a bit tricky. What if we could use a generic cloud image with Proxmox's Cloud-Init automation to quickly create new virtual machines without having to create our own templates? That's exactly what I've done, and I even wrote a script to make it easier to download these templates for popular operating systems like Debian, Ubuntu, and Fedora on new Proxmox systems.

Once Cloud-Init is set up and running, you can easily clone a template, install software on it, and then clone that clone to create a new virtual machine with additional software. This way, you can build a library of useful application templates for tasks you do regularly. It's a fun and efficient way to experiment with different virtual machines and software configurations!

# The Script

Hey there! This cool script will help you download a bunch of ready-to-go cloud images from popular Linux distributions. It will then turn them into new VM templates with numbers like 900. You can also import your SSH keys and set up the VM just the way you want it. Don't forget, you can always tweak the settings in the script before running it. And make sure to add your public key in a text file and set your username too. Have fun!

# shell
git clone https://github.com/senthilmask80/PROX-Multi-Cloud-Init.git \n
cd PROX-Multi-Cloud-Init \n
chmod +x *sh \n
./multi-cloud-init.sh

