actions
import
	<actionNamed: 'Import versions' priority: 60 access: #write>
	<icon: 'paper-clip'>
	
	self call: (SSVersionImporter model: self model).
	self saveSession