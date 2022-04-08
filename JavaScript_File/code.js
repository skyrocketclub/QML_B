var Root
var Box

function performClick() {
    print("Javascript in a signal handler")
    var max = Root.width - Box.width
    Box.x = (Box.x === 0)? max:0  //ternary operation
}

/*
  If you are using the method of passing functions

  function performClick(root,box){
    print("Javascript ...")
    var max  = root.width - box.width
    box.x = (box.x === 0) ?max : 0
}
  */

function swapColor(obj){
    return obj.pressed? "orange" : "gray"
}

function startup(croot, cbox){
    print("Starting !!!")
    Root = croot
    Box = cbox
}

function clicked(mouse){
    print("Clicked")
    performClick()
}
