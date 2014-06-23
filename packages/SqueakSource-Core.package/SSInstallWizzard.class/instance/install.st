processing
install

	| admin repository |
	admin := (SSMember login: (self options at: #adminLogin))
		fullname: (self options at: #adminFullname);
		superuser: true;
		email: (self options at: #adminEmail);
		password: (self options at: #adminPassword);
		yourself.

	repository := SSRepository new
		superUserEmail: (OrderedCollection with: admin fullEmailAddress);
		wellKnownName: (self options at: #wellKnownName);
		title: (self options at: #repositoryTitle);
		addMember: admin;		
		yourself.
		
	SSRepository 
		setRepository: repository
		storage: (self options at: #storageClass) new.

	GRPlatform current addToStartUpList: SSRepository.

	self squeaksource: (SSFrame registerAsApplication: (self options at: #url)).

	"process optionals"
	(Pragma allNamed: #options in: self class) do: [:pragma |
		self perform: pragma selector].

	"go"
	self requestContext redirectTo: '/', (self options at: #url)
