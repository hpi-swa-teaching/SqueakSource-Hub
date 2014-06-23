rendering
blessingForbidden
	self inform: 'You cannot bless ', self version fileName, ', because ', (self project blessedVersionForPackage: self version package) fileName , ' is not among its ancestors.  Please merge these two versions together first.'