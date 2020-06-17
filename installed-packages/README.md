# INSTALLED PACKAGES 

The file `installed-packages` lists explicit installed packages. It is filled with the following command: 

```bash
pacman -Qe | awk '{print $1}' > package-list
```
