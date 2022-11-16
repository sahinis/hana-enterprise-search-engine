using {sap.esh.Identifier} from '../../../model/esh';


@EnterpriseSearch.enabled
@EndUserText.Label : 'Document'
@EnterpriseSearchHana.passThroughAllAnnotations
entity Document {
    key id        : UUID;
        @UI.Identification                       : [{Position : 10}]
        @EndUserText.Label                       : 'Image'
        @Search.defaultSearchElement             : false
        @Semantics.imageURL                      : true
        image     : LargeString; //image

        @sap.esh.isText
        @UI.Identification                       : [{Position : 30}]
        @EndUserText.Label                       : 'Title'
        @Search.fuzzinessThreshold               : 0.85
        @Search.defaultSearchElement
        title     : String(5000); //title
        
        @EndUserText.Label                       : 'Author'
        @sap.esh.isText
        @UI.Identification                       : [{Position : 90}]
        @Search.defaultSearchElement
        author    : String; //author

        @EndUserText.Label                       : 'Text'
        @sap.esh.isText
        @UI.Identification                       : [{Position : 50}]
        @EnterpriseSearch.snippets.enabled
        @EnterpriseSearch.snippets.maximumLength : 800
        @Search.defaultSearchElement
        text      : LargeBinary; //text

        @UI.Identification                       : [{Position : 60}]
        @EndUserText.Label                       : 'Created At'
        @EnterpriseSearch.filteringFacet.default : true
        createdAt : Date; //createdAt

        @UI.Identification                       : [{Position : 70}]
        @EndUserText.Label                       : 'Changed At'
        @EnterpriseSearch.filteringFacet.default : true
        changedAt : Date; //changedAt
}
