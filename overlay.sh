Help()
{
	echo "This program creates outlined text."
	echo
	echo "Syntax overlay.sh [-f|p|F|I|s|S|x|y|t|o|h]"
	echo "options:"
	echo "f    Font. ex: -f DejaVu-Sans-Book"
	echo "p    Point/Font Size. ex: -p 62"
	echo "F    Font color. ex: -F black"
	echo "I    Image size. ex: -I 1920x1080"
	echo "s    Stroke color. ex: -s white"
	echo "S    Stroke width. ex: -S 10"
	echo "x    X position. ex: -x 575"
	echo "y    Y position. ex: -y 970"
	echo "t    Text. ex: -t '6HK, 3MP > PPP, tk.360KK'"
	echo "o    Output file name. ex: output.png"
	echo "h    Prints this help information."

}

font="DejaVu-Sans-Book"
pointsize=62
fill="black"
i_size="1920x1080"
stroke="white"
strokewidth=10
position_x=575
position_y=970
text=""
file_name="output.png"

while getopts "f:p:F:I:s:S:x:y:t:o:h" option; do
	case $option in
		f)
			font=$OPTARG;;
		p)
			pointsize=$OPTARG;;
		F)
			fill=$OPTARG;;
		I)
			i_size=$OPTARG;;
		s)
			stroke=$OPTARG;;
		S)
			strokewidth=$OPTARG;;
		x)
			position_x=$OPTARG;;
		y)
			position_y=$OPTARG;;
		t)
			text=$OPTARG;;
		o)
			file_name=$OPTARG;;
		h)
			Help
			exit;;
	esac
done

convert -size $i_size  xc:none -font $font -pointsize $pointsize -fill $fill -stroke $stroke -strokewidth $strokewidth -draw "text $position_x,$position_y '$text'" -stroke none -draw "text $position_x,$position_y '$text'" $file_name
