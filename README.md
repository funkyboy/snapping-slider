# Snapping Slider

A custom `UISlider` that snaps to certain values when dragged. 

![Gif of the snapping slider](https://github.com/funkyboy/snapping-slider/blob/master/slider.gif "Gif of the slider")

## How to use

``` objc
- (void)viewDidLoad {
  [super viewDidLoad];
  SMSnappingSlider *slider = [[SMSnappingSlider alloc] initWithFrame:CGRectMake(20, 100, 280, 31)];
  [self.view addSubview:slider];
}
```
