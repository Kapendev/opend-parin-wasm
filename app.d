import parin;

auto timer = Timer(1, true);

void ready() {
    lockResolution(320, 180);
    timer.start();
}

bool update(float dt) {
    static gnu = "GNU";
    if (timer.hasStopped) gnu ~= "U";
    if (gnu.length > 10) gnu = "GNU";

    auto options = DrawOptions(Hook.center);
    options.scale = Vec2(3 + sin(elapsedTime * 3));
    options.rotation = 13 * sin(elapsedTime * 3);
    drawDebugText(gnu, resolution * Vec2(0.5), options);
    return false;
}

mixin runGame!(ready, update, null);
