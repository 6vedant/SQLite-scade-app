import ScadeKit

class UgSqlLiteSwift: SCDApplication {

	let window = SCDLatticeWindow()
  	let mainAdapter = TempmainPageAdapter()
  	
	override func onFinishLaunching() {
		mainAdapter.load("tempmain.page")
		mainAdapter.show(view: window)
	}
}
