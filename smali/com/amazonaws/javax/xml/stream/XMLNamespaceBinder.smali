.class public Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;
.super Ljava/lang/Object;
.source "XMLNamespaceBinder.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponent;
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDocumentFilter;


# static fields
.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean; = null

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object; = null

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String; = null

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String; = null

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field private fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

.field protected fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDocumentSource;

.field protected fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

.field private fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

.field protected fNamespaceSupport:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

.field protected fNamespaces:Z

.field protected fOnlyPassPrefixMappingEvents:Z

.field protected fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "http://xml.org/sax/features/namespaces"

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 172
    new-array v0, v3, [Ljava/lang/Boolean;

    aput-object v4, v0, v2

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 177
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v2

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 183
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v4, v0, v2

    aput-object v4, v0, v3

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;)V

    .line 239
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;)V
    .locals 1
    .parameter "namespaceContext"

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    .line 230
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 248
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    .line 249
    return-void
.end method


# virtual methods
.method public characters(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "text"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 705
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->characters(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 708
    :cond_0
    return-void
.end method

.method public comment(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "text"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 594
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->comment(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 597
    :cond_0
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "rootElement"
    .parameter "publicId"
    .parameter "systemId"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 583
    :cond_0
    return-void
.end method

.method public emptyElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 2
    .parameter "element"
    .parameter "attributes"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 686
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaces:Z

    if-eqz v0, :cond_1

    .line 687
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->handleStartElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;Z)V

    .line 688
    invoke-virtual {p0, p1, p3, v1}, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->handleEndElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;Z)V

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->emptyElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endCDATA(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 788
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->endCDATA(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 791
    :cond_0
    return-void
.end method

.method public endDocument(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 800
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->endDocument(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 803
    :cond_0
    return-void
.end method

.method public endElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "element"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaces:Z

    if-eqz v0, :cond_1

    .line 740
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->handleEndElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;Z)V

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->endElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endGeneralEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "name"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 818
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 821
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "prefix"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 763
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->endPrefixMapping(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 767
    :cond_0
    return-void
.end method

.method public getDocumentHandler()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getDocumentSource()Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDocumentSource;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "featureId"

    .prologue
    .line 406
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 407
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    .line 411
    :goto_1
    return-object v1

    .line 406
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getNamespaceContext()Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    return-object v0
.end method

.method public getOnlyPassPrefixMappingEvents()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    return v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "propertyId"

    .prologue
    .line 424
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 425
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 429
    :goto_1
    return-object v1

    .line 424
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected handleEndElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;Z)V
    .locals 5
    .parameter "element"
    .parameter "augs"
    .parameter "isEmpty"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 985
    iget-object v4, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v1, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 986
    .local v1, eprefix:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v4, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 987
    iget-object v4, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 988
    iput-object v1, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 992
    :cond_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v4, :cond_1

    .line 993
    if-nez p3, :cond_1

    .line 994
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v4, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->endElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 999
    :cond_1
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_3

    .line 1000
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getDeclaredPrefixCount()I

    move-result v0

    .line 1001
    .local v0, count:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_3

    .line 1002
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v4, v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v3

    .line 1003
    .local v3, prefix:Ljava/lang/String;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v4, v3, p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->endPrefixMapping(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1001
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 985
    .end local v0           #count:I
    .end local v1           #eprefix:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #prefix:Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_0

    .line 1008
    .restart local v1       #eprefix:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->popContext()V

    .line 1010
    return-void
.end method

.method protected handleStartElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;Z)V
    .locals 23
    .parameter "element"
    .parameter "attributes"
    .parameter "augs"
    .parameter "isEmpty"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->pushContext()V

    .line 835
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "ElementXMLNSPrefix"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 843
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getLength()I

    move-result v13

    .line 844
    .local v13, length:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v13, :cond_a

    .line 845
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v14

    .line 846
    .local v14, localpart:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v15

    .line 849
    .local v15, prefix:Ljava/lang/String;
    sget-object v17, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v15, v0, :cond_1

    sget-object v17, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_5

    sget-object v17, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_5

    .line 853
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 856
    .local v16, uri:Ljava/lang/String;
    sget-object v17, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_2

    sget-object v17, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_2

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "CantBindXMLNS"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 864
    :cond_2
    sget-object v17, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "CantBindXMLNS"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 872
    :cond_3
    sget-object v17, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_6

    .line 873
    sget-object v17, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "CantBindXML"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 890
    :cond_4
    :goto_1
    sget-object v17, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v14, v0, :cond_7

    move-object v15, v14

    .line 895
    :goto_2
    sget-object v17, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_8

    sget-object v17, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v14, v0, :cond_8

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "EmptyPrefixedAttName"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 844
    .end local v16           #uri:Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 882
    .restart local v16       #uri:Ljava/lang/String;
    :cond_6
    sget-object v17, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "CantBindXML"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_1

    .line 890
    :cond_7
    sget-object v15, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    .line 904
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v17, v16

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    invoke-interface {v0, v15, v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    goto :goto_3

    .line 904
    :cond_9
    const/16 v17, 0x0

    goto :goto_4

    .line 914
    .end local v14           #localpart:Ljava/lang/String;
    .end local v15           #prefix:Ljava/lang/String;
    .end local v16           #uri:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 916
    .restart local v15       #prefix:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 917
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 918
    sget-object v17, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 920
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "ElementPrefixUnbound"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 928
    :cond_c
    const/4 v11, 0x0

    :goto_6
    if-ge v11, v13, :cond_12

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v11, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getName(ILcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 932
    .local v5, aprefix:Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 933
    .local v6, arawname:Ljava/lang/String;
    sget-object v17, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v6, v0, :cond_10

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    move-object/from16 v18, v0

    sget-object v19, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v11, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->setName(ILcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 928
    :cond_d
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 914
    .end local v5           #aprefix:Ljava/lang/String;
    .end local v6           #arawname:Ljava/lang/String;
    .end local v15           #prefix:Ljava/lang/String;
    :cond_e
    sget-object v15, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_5

    .line 930
    .restart local v15       #prefix:Ljava/lang/String;
    :cond_f
    sget-object v5, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_7

    .line 937
    .restart local v5       #aprefix:Ljava/lang/String;
    .restart local v6       #arawname:Ljava/lang/String;
    :cond_10
    sget-object v17, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v5, v0, :cond_d

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_11

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "AttributePrefixUnbound"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v5, v20, v21

    const/16 v21, 0x1

    aput-object v6, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 945
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v11, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->setName(ILcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    goto :goto_8

    .line 951
    .end local v5           #aprefix:Ljava/lang/String;
    .end local v6           #arawname:Ljava/lang/String;
    :cond_12
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getLength()I

    move-result v7

    .line 952
    .local v7, attrCount:I
    const/4 v11, 0x0

    :goto_9
    add-int/lit8 v17, v7, -0x1

    move/from16 v0, v17

    if-ge v11, v0, :cond_15

    .line 953
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 954
    .local v4, alocalpart:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v8

    .line 955
    .local v8, auri:Ljava/lang/String;
    add-int/lit8 v12, v11, 0x1

    .local v12, j:I
    :goto_a
    if-ge v12, v7, :cond_14

    .line 956
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v9

    .line 957
    .local v9, blocalpart:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v10

    .line 958
    .local v10, buri:Ljava/lang/String;
    if-ne v4, v9, :cond_13

    if-ne v8, v10, :cond_13

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "AttributeNSNotUnique"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v4, v20, v21

    const/16 v21, 0x2

    aput-object v8, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 955
    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 952
    .end local v9           #blocalpart:Ljava/lang/String;
    .end local v10           #buri:Ljava/lang/String;
    :cond_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 968
    .end local v4           #alocalpart:Ljava/lang/String;
    .end local v8           #auri:Ljava/lang/String;
    .end local v12           #j:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    move/from16 v17, v0

    if-nez v17, :cond_16

    .line 969
    if-eqz p4, :cond_17

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->emptyElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 978
    :cond_16
    :goto_b
    return-void

    .line 973
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->startElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    goto :goto_b
.end method

.method public ignorableWhitespace(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "text"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 724
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 727
    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "target"
    .parameter "data"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 618
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 621
    :cond_0
    return-void
.end method

.method public reset(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;)V
    .locals 7
    .parameter "componentManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 308
    :try_start_0
    const-string v6, "http://xml.org/sax/features/namespaces"

    invoke-interface {p1, v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaces:Z
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    const-string v6, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    iput-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 316
    const-string v6, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    iput-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    .line 318
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->reset()V

    .line 321
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    .line 322
    .local v0, context:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;
    :cond_0
    if-eqz v0, :cond_2

    .line 323
    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v1

    .line 324
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 325
    invoke-interface {v0, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v4

    .line 326
    .local v4, prefix:Ljava/lang/String;
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v6, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 327
    invoke-interface {v0, v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, uri:Ljava/lang/String;
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v6, v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 324
    .end local v5           #uri:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 310
    .end local v0           #context:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #prefix:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 311
    .local v2, e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaces:Z

    goto :goto_0

    .line 333
    .end local v2           #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    .restart local v0       #context:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;
    :cond_2
    return-void
.end method

.method public setDocumentHandler(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;)V
    .locals 0
    .parameter "documentHandler"

    .prologue
    .line 438
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    .line 439
    return-void
.end method

.method public setDocumentSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 453
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDocumentSource;

    .line 454
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .parameter "featureId"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 361
    return-void
.end method

.method public setOnlyPassPrefixMappingEvents(Z)V
    .locals 0
    .parameter "onlyPassPrefixMappingEvents"

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    .line 274
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "propertyId"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 382
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, property:Ljava/lang/String;
    const-string v1, "internal/symbol-table"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    check-cast p2, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .end local p2
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 394
    .end local v0           #property:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 388
    .restart local v0       #property:Ljava/lang/String;
    .restart local p2
    :cond_1
    const-string v1, "internal/error-reporter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    check-cast p2, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    .end local p2
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    goto :goto_0
.end method

.method public startCDATA(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->startCDATA(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 779
    :cond_0
    return-void
.end method

.method public startDocument(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 2
    .parameter "locator"
    .parameter "encoding"
    .parameter "namespaceContext"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaceSupport:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-interface {v0, p1, p2, v1, p4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->startDocument(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 543
    :cond_0
    return-void
.end method

.method public startElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "element"
    .parameter "attributes"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fNamespaces:Z

    if-eqz v0, :cond_1

    .line 665
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->handleStartElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;Z)V

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->startElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startGeneralEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "name"
    .parameter "identifier"
    .parameter "encoding"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 486
    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "prefix"
    .parameter "uri"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 644
    :cond_0
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "version"
    .parameter "encoding"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 510
    :cond_0
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "version"
    .parameter "encoding"
    .parameter "standalone"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNamespaceBinder;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 563
    :cond_0
    return-void
.end method
