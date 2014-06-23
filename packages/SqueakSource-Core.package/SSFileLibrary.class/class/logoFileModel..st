accessing
logoFileModel: aMAMemoryFileModel
	self default setLogoContents: (aMAMemoryFileModel ifNotNil: [:m | m contents])