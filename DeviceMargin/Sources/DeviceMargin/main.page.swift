import ScadeKit

  
class MainPageAdapter: SCDLatticePageAdapter {
  
  // page adapter initialization
  override func load(_ path: String) {
    super.load(path)
    
    // create left constraint for widget to the page
let widget = self.button
if let alData = widget.layoutData as? SCDLayoutAutoLayoutData {
  let leftConstraint = SCDLayoutConstraint()
  leftConstraint.source = widget
  leftConstraint.sourceAnchor = .top
  leftConstraint.target = self.page
  leftConstraint.targetAnchor = .top
  print(String(widget.location.y))
  //leftConstraint.constant = Float(widget.location.y) + 24
  

  alData.constraints = [leftConstraint]
  
  print("height from bottom")
  print(self.page!.size.height - (widget.location.y + widget.size.height))
  
  print("x")
  print(self.page!.size.height - (widget.size.height + widget.location.y))
}

if #available(iOS 11.0, *) {
		print("ios 11 and above")
        let window = UIApplication.shared.keyWindow
    let topPadding = window?.safeAreaInsets.top
    let bottomPadding = window?.safeAreaInsets.bottom
	print(topPadding)
	print(bottomPadding)
}

if #available(iOS 13.0, *) {
	print("ios 13 and above")
    let window = UIApplication.shared.windows.first
    let topPadding = window?.safeAreaInsets.top
    let bottomPadding = window?.safeAreaInsets.bottom
    
    print(topPadding)
    print(bottomPadding)
}
    
   }
}
