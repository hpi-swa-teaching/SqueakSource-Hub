running
setUp
	super setUp.
	handler := self handlerClass.
	savedRepository := SSRepository current.
	savedStorage := SSRepository storage.
	SSRepository setRepository: SSRepository new storage: SSNestedDictionaryStorage new.