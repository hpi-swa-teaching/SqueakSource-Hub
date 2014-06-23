accessing
logoFileModel

	^ MAMemoryFileModel new
		filename: 'logo.png';
		mimetype: (self mimetypeFor: 'png') greaseString;
		contents: self default logoPng