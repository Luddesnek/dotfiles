static const char norm_fg[] = "#b3b9d9";
static const char norm_bg[] = "#090a0d";
static const char norm_border[] = "#7d8197";

static const char sel_fg[] = "#b3b9d9";
static const char sel_bg[] = "#BE5544";
static const char sel_border[] = "#b3b9d9";

static const char urg_fg[] = "#b3b9d9";
static const char urg_bg[] = "#624774";
static const char urg_border[] = "#624774";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
};
