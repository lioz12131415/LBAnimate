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

# Balloons #

![alt tag](https://raw.github.com/lioz12131415/LBAnimate/main/Gifs/balloons.gif)

### Example ###

|default values:|
|:---|
|<p>- delay -> 0 <br> minScale -> 0.5 <br> maxScale -> 0.5 <br> velocity -> 50.0 <br> numberOfBalloons -> 10.0 <br> - duration -> 2 <br></p>|

```swift

@IBOutlet weak var animation_view: UIView!
    
animation_view.lb_animate?.balloons?
    .delay(0.0)
    .velocity(50)
    .minScale(0.4)
    .maxScale(1.0)
    .numberOfTaps(1)
    .numberOfBalloons(50)
    .attach(UIImage(named: "{ SOME IMAGE NAME }"))
        
animation_view.lb_animate?.balloons?.didStop {
    /* Finish Firework Animation */
}
        
animation_view.lb_animate?.balloons?.didStart {
    /* Start Firework Animation */
}
        
animation_view.lb_animate?.balloons?.didTouch {
    /* Did Touch animation view */
}

```

<br>

# SoapBubbles #

![alt tag](https://raw.github.com/lioz12131415/LBAnimate/main/Gifs/soap_bubbles.gif)

### Example ###

|default values:|
|:---|
|<p>- delay -> 0 <br> - scale -> 0.5 <br> - velocity -> 50  <br> - duration -> 2 <br> numberOfBubbles -> 10 </p>|

```swift

@IBOutlet weak var animation_view: UIView!
    
animation_view.lb_animate?.soapBubbles?
    .delay(0.0)
    .scale(0.4)
    .velocity(70)
    .duration(2.0)
    .numberOfTaps(1)
    .numberOfBubbles(10)
    .attach(UIImage(named: "{ SOME IMAGE NAME }"))
        
animation_view.lb_animate?.soapBubbles?.didStop {
    /* Finish Firework Animation */
}
        
animation_view.lb_animate?.soapBubbles?.didStart {
    /* Start Firework Animation */
}
        
animation_view.lb_animate?.soapBubbles?.didTouch {
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

# Position #

![alt tag](https://raw.github.com/lioz12131415/LBAnimate/main/Gifs/position.gif)

### Example ###

|default values:|
|:---|
|<p>- delay -> 0.00 <br> - duration -> 0.50 <br> - damping -> 1.00 <br> - velocity -> 1.00</p>|

### Example ###
```swift

@IBOutlet weak var animation_view: UIView!
    
animation_view.lb_animate?.position?.center.x
    .delay(0)
    .damping(0.5)
    .velocity(0.5)
    .duration(0.5)
    .change(to: /* New Center X Point */) { /* (Finish Animation) Use If Needed */ }
        
animation_view.lb_animate?.position?.center.y
    .delay(0)
    .damping(0.5)
    .velocity(0.5)
    .duration(0.5)
    .change(to: /* New Center Y Point */ ) {  /* (Finish Animation) Use If Needed */ }

```

#### Min Y ####
```swift 
animation_view.lb_animate?.position?.minY
```

#### Min X ####
```swift 
animation_view.lb_animate?.position?.minX
```

#### Max Y ####
```swift 
animation_view.lb_animate?.position?.maxY
```

#### Max X ####
```swift 
animation_view.lb_animate?.position?.maxX
```

#### Center Y ####
```swift 
animation_view.lb_animate?.position?.center.y
```

#### Center X ####
```swift 
animation_view.lb_animate?.position?.center.x
```

<br>

# Breathe #

![alt tag](https://raw.github.com/lioz12131415/LBAnimate/main/Gifs/breathe.gif)

### Example ###

|default values:|
|:---|
|<p>- delay -> 0 <br> - duration -> 2 <br> - maxScaleY -> 1.20 <br> - maxScaleX -> 1.20  <br> - minScaleX -> 0.90  <br> - minScaleY -> 0.90</p>|

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

<br>

# Press #

![alt tag](https://raw.github.com/lioz12131415/LBAnimate/main/Gifs/press.gif)

### Example ###

|default values:|
|:---|
|<p>- delay -> 0 <br> - duration -> 0.50 <br> - minScaleX -> 0.90 <br> - minScaleY -> 0.90</p>|

```swift

@IBOutlet weak var animation_view: UIView!
    
pressButton.lb_animate?.press?
    .delay(0.00)
    .duration(0.50)
    .minScaleX(0.90)
    .minScaleY(0.90)
    .attach()
        
pressButton.lb_animate?.press?.endPress {
    /* Use If Needed Began Press */
}
        
pressButton.lb_animate?.press?.beganPress {
    /* Use If Needed Began Press */
}

```

<br>

# Install #
The recommended approach for installing LBAnimate is the CocoaPods package manager.

Install CocoaPods if not already available:
```
$ sudo gem install cocoapods
```

Edit your Podfile and add LBAnimate:
```
platform :ios, '14.0'
use_frameworks!

target 'MyApp' do
  pod 'LBAnimate'
end
```

Install into your project:
```
$ pod install
```

# Requirements #
LBAnimate requires at least iOS 14 or above.
