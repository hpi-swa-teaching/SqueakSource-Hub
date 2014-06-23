SSChangesListing provides an update-stream-like series of changesets corresponding to the uploaded MC packages. It needs MCConfigurations named "update-xx.123" as used e.g. in Squeak Trunk development, mimicing the changes that would be loaded when updating.

WARNING: the resulting series of changesets is NOT 100% equivalent to loading MC packages and might need manual editing.

Instance Variables
expand: if true, intermediate changesets are listed between two configs
sortedInfos: all version infos in project ordered by timestamp