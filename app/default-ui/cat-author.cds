using {AdminService} from '../../srv/admin-srv';

annotate AdminService.Authors with @(UI: {
    HeaderInfo         : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Book',
        TypeNamePlural: 'Books',
        Title         : {Value: name},
        Description   : {Value: ID}
    },
    SelectionFields    : [name, ],
    LineItem           : [
        {Value: ID},
        {Value: name},
    ],
    Facets             : [
        {
            ID    : 'model',
            $Type : 'UI.ReferenceFacet',
            Label : 'Model Detail',
            Target: '@UI.FieldGroup#genInfo',
        },
        {
            ID    : 'logs',
            $Type : 'UI.ReferenceFacet',
            Label : 'Books',
            Target: 'books/@UI.LineItem'
        },
    ],
    FieldGroup #genInfo: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {Value: ID},
            {Value: name},
        ]
    },
});
