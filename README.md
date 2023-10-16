# LBAnimate
A collection of animations for iOS, LBAnimate is a category on UIView to make animations easy to perform.


## Firework ##

![alt tag](https://raw.github.com/lioz12131415/LBAnimate/main/Gifs/firework.gif)

### Example ###

```swift

@IBOutlet weak var animation_view: UIView!
    
animation_view.lb_animate?.firework?
    .delay(0.0)
    .duration(2.0)
    .numberOfTaps(1)
    .attach([UIImage(named: "{ SOME IMAGE NAME }" )])
        
animation_view.lb_animate?.firework?.didStop {
    /* Finish Firework Animation */
}
        
animation_view.lb_animate?.firework?.didStart {
    /* Start Firework Animation */
}
        
animation_view.lb_animate?.firework?.didTouch {
    /* Did Touch animation view */
}

```

### default values: ###
- delay -> 0
- duration -> 2
- numberOfTaps -> 1



