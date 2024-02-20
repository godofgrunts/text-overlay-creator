# text-overlay-creator
A script to use Imagemagick's Convert to quickly create text for overlays.

# Use
`./overlay.sh -h` will bring up the help statement

```This program creates outlined text.

Syntax overlay.sh [-f|p|F|I|s|S|x|y|t|o|h]
options:
f    Font. ex: -f DejaVu-Sans-Book
p    Point/Font Size. ex: -p 62
F    Font color. ex: -F black
I    Image size. ex: -I 1920x1080
s    Stroke color. ex: -s white
S    Stroke width. ex: -S 10
x    X position. ex: -x 575
y    Y position. ex: -y 970
t    Text. ex: -t '6HK, 3MP > PPP, tk.360KK'
o    Output file name. ex: output.png
h    Prints this help information.
```

# Examples
There is a default setting for everything except `-t` which is blank by default. You can edit the variables to different defaults if you want. 

`./overlay.sh -t 'DI, forward jump, J.2HP, PP/PPP'`

`./overlay.sh -t '6HP > SA2, j.360KK' -o super-combo.png`
