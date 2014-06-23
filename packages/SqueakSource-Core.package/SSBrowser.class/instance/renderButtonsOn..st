rendering
renderButtonsOn: html
	html form: [
		html div: [
			self
				renderInstanceButtonOn: html;
				renderCommentButtonOn: html;
				renderClassButtonOn: html]].
