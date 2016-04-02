# Snapping Slider

A custom `UISlider` that snaps to certain values when dragged. 

![Gif of the snapping slider](https://dl.dropboxusercontent.com/u/182737/slider.gif)

## How to use

``` objc
- (void)viewDidLoad {
  [super viewDidLoad];
  SMSnappingSlider *slider = [[SMSnappingSlider alloc] initWithFrame:CGRectMake(20, 100, 280, 31)];
  [self.view addSubview:slider];
}
```
