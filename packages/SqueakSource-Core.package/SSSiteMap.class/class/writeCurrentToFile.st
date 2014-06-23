convenience
writeCurrentToFile
	"self writeCurrentToFile
	validate with: 
xmllint --schema  http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd  --noout sitemap.xml"
	
	self writeRepositoryToFile: SSRepository current.
