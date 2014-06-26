running
setUp
	super setUp.
	handler := self handlerClass new.
	savedRepository := SSRepository current.
	savedStorage := SSRepository storage.
	SSRepository setRepository: SSRepository new storage: SSNestedDictionaryStorage new.