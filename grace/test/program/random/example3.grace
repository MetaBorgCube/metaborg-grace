dialect "stobjectdraw"
object {
    inherit graphicApplication.size(200, 200);
    // sky created with brightness
    def sky: Graphic2D = filledRect.at (0 @ 0) size (canvas.width, canvas.height) on (canvas);
    // initial brightness of the sky
    var brightness: Number := 100;
    // set sky color to be dark
    sky.color:=(color.r (brightness) g (brightness) b (brightness));
    // diameter of the sun
    def sunDiameter: Number = canvas.width / 4;
    // x coordinate of the sun
    def sunX: Number = (canvas.width - sunDiameter) / 2;
    // location where the sun starts
    def startSun: Point = sunX @ (canvas.height - sunDiameter / 2);
    // Circle representing the sun
    def sun: Graphic2D = filledOval.at (startSun) size (sunDiameter, sunDiameter) on (canvas);
    sun.color:=(yellow);
    text.at(20 @ 20) with ("Please click the mouse repeatedly") on (canvas);
    // Each time mouse is clicked, sun rises more and sky brightens
    method onMouseClick (point: Point) -> Done {
        sun.moveBy (0, -5);
        brightness := brightness + 3;
        sky.color:=(color.r (brightness) g (brightness) b (brightness));
    };
    startGraphics;
};