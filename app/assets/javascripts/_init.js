// initialize namespace
window.Chippa = {
  utils: {}
};

Chippa.utils.randomColorHex = function() {
  return '#' + Math.floor(Math.random()*16777215).toString(16);
}

Chippa.utils.labelColor = function(color) {
  return (color.replace('#','0x')) > (0xffffff/2) ? '#333' : '#fff';
}
