#include <stdlib.h>

__attribute__((constructor))
static void init_hud(void) {
    // 1. Enable Metal Performance HUD
    setenv("MTL_HUD_ENABLED", "1", 1);
    
    // 2. Show FPS counter only (hide GPU/CPU/Memory metrics)
    setenv("MTL_HUD_ELEMENTS", "fps", 1);
    
    // 3. Scale down HUD size to 50% (use 0.4 for smaller, 0.7 for larger)
    setenv("MTL_HUD_SCALE", "0.5", 1);
}
