varging lowp vec2 varyTextCoord;
uniform sampler2D colormap;
void main()
{
    gl_FragColor = texture2D(colormap,varyTextCoord);
}
