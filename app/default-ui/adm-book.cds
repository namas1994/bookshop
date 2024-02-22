using {AdminService} from '../../srv/admin-srv';

annotate AdminService.Books with @(UI: {
    HeaderInfo         : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Book',
        TypeNamePlural: 'Books',
        Title         : {Value: title},
        Description   : {Value: descr}
    },
    SelectionFields    : [
        title,
    ],
    LineItem           : [
        {Value: ID},
        {Value: title},
        {Value: descr},
        {Value: stock},
        {Value: price},
        {Value: currency.code}
    ],
    Facets             : [{
        ID    : 'model',
        $Type : 'UI.ReferenceFacet',
        Label : 'Model Detail',
        Target: '@UI.FieldGroup#genInfo',
    }, ],
    FieldGroup #genInfo: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {Value: ID},
            {Value: stock},
            {Value: price},
            {Value: currency.code},
        ]
    },
});
