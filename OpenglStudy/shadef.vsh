attribute vec4 position;
attribute vec2 textCoordinate;
uniform mat4 rotateMatrix;

varying lowp vec2 vartyTextCoord;

void main()
{
    vartyTextCoord = textCoordinate;
    vec4 vPos = position;
    vPos = vPos * rotateMatrix;
    
    gl_Position = vPos;
}
