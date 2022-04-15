const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#090a0d", /* black   */
  [1] = "#624774", /* red     */
  [2] = "#BE5544", /* green   */
  [3] = "#9F526D", /* yellow  */
  [4] = "#EAA55D", /* blue    */
  [5] = "#5A5192", /* magenta */
  [6] = "#9E628B", /* cyan    */
  [7] = "#b3b9d9", /* white   */

  /* 8 bright colors */
  [8]  = "#7d8197",  /* black   */
  [9]  = "#624774",  /* red     */
  [10] = "#BE5544", /* green   */
  [11] = "#9F526D", /* yellow  */
  [12] = "#EAA55D", /* blue    */
  [13] = "#5A5192", /* magenta */
  [14] = "#9E628B", /* cyan    */
  [15] = "#b3b9d9", /* white   */

  /* special colors */
  [256] = "#090a0d", /* background */
  [257] = "#b3b9d9", /* foreground */
  [258] = "#b3b9d9",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
