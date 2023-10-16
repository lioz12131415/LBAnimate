# LBAnimate
A collection of animations for iOS, LBAnimate is a category on UIView to make animations easy to perform.

<br>

# Firework #

![alt tag](https://raw.github.com/lioz12131415/LBAnimate/main/Gifs/firework.gif)

### Example ###

|default values:|
|:---|
|<p>- delay -> 0 <br> - duration -> 2 <br></p>|

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

<br>

# Balloon #

![alt tag](https://raw.github.com/lioz12131415/LBAnimate/main/Gifs/balloon.gif)

### Example ###

|default values:|
|:---|
|<p>- delay -> 0 <br> - width -> 50 <br> - height -> 50  <br> - duration -> 2</p>|

```swift

@IBOutlet weak var animation_view: UIView!
    
animation_view.lb_animate?.balloon?
    .delay(0)
    .width(100)
    .height(100)
    .duration(2.0)
    .numberOfTaps(2)
    .attach(UIImage(named: "{ SOME IMAGE NAME }"))
        
animation_view.lb_animate?.balloon?.didStop {
    /* Finish Balloon Animation */
}
        
animation_view.lb_animate?.balloon?.didStart {
    /* Start Balloon Animation */
}
        
animation_view.lb_animate?.balloon?.didTouch {
    /* Did Touch animation view */
}

```

<br>

# Breathe #

![alt tag](https://raw.github.com/lioz12131415/LBAnimate/main/Gifs/breathe.gif)

### Example ###

|default values:|
|:---|
|<p>- delay -> 0 <br> - maxScaleY -> 1.20 <br> - maxScaleX -> 1.20  <br> - minScaleX -> 0.90  <br> - minScaleY -> 0.90  <br> - duration -> 2</p>|

### Example ###
```swift

@IBOutlet weak var animation_view: UIView!
    
animation_view.lb_animate?.breathe?
    .delay(0.0)
    .duration(2.0)
    .maxScaleY(1.20)
    .maxScaleX(1.20)
    .minScaleY(0.90)
    .minScaleX(0.90)
    .start()

```

#### Start ####
```swift 
animation_view.lb_animate?.breathe?.start()
```

#### Stop ####
```swift 
animation_view.lb_animate?.breathe?.stop()
```

