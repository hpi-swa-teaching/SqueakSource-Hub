actions
uploadFile: aFile

  [self model addVersion: aFile rawContents author: self session user as: self session user.
   self session save
  ] on: Error do: [ :error | 
    self inform: 'There was an error importing the file ' , aFile fileName , '. The file has to be in mcz format!'.
    self noticeException: error.
  ]