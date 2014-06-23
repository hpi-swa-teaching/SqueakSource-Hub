rendering
renderContentOn: html
    | configs prevConfig latestConfig latestVersions number |
    "find update configs"
    configs := self project configs copy.
    configs keys
        do: [ :key | 
            (key beginsWith: 'update-')
                ifFalse: [ configs removeKey: key ] ].
    configs
        ifEmpty: [ 
            self requestContext responseGenerator
                notFound;
                respond ].
    configs := configs asSortedCollection: [ :a :b | a name numericSuffix < b name numericSuffix ].	"list changes in update configs"
    html heading
        level: 1;
        with: 'Changes for ' , self project title.
    self renderExpandOn: html.
    prevConfig := MCConfiguration new.
    configs
        do: [ :config | 
            self renderChangesFrom: prevConfig to: config on: html.
            number := config dependencies inject: 0 into: [ :sum :dep | sum + dep versionInfo name numericSuffix ].
            html
                strong: 'Config: ';
                text: config fileName;
                text: ' (' , number asString , ')';
                break.
            prevConfig := config ].	"make up config with latest versions"
    latestVersions := Dictionary new.
    (self project latestVersionsAs: self user)
        do: [ :ver | latestVersions at: ver package asLowercase put: ver versionInfo ].
    latestConfig := MCConfiguration new
        dependencies:
            (prevConfig dependencies
                collect: [ :dep | MCVersionDependency package: dep package info: (latestVersions at: dep package name asLowercase) ]).	"list latest changes"
    self renderChangesFrom: prevConfig to: latestConfig on: html