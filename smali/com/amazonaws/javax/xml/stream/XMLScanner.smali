.class public abstract Lcom/amazonaws/javax/xml/stream/XMLScanner;
.super Ljava/lang/Object;
.source "XMLScanner.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponent;


# static fields
.field protected static final DEBUG_ATTR_NORMALIZATION:Z = false

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final fAmpSymbol:Ljava/lang/String;

.field protected static final fAposSymbol:Ljava/lang/String;

.field protected static final fEncodingSymbol:Ljava/lang/String;

.field protected static final fGtSymbol:Ljava/lang/String;

.field protected static final fLtSymbol:Ljava/lang/String;

.field protected static final fQuotSymbol:Ljava/lang/String;

.field protected static final fStandaloneSymbol:Ljava/lang/String;

.field protected static final fVersionSymbol:Ljava/lang/String;


# instance fields
.field protected attributeValueCache:Ljava/util/ArrayList;

.field protected fAttributeCacheInitDone:Z

.field protected fAttributeCacheUsedCount:I

.field protected fCharRefLiteral:Ljava/lang/String;

.field protected fEntityDepth:I

.field protected fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

.field protected fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

.field protected fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

.field protected fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

.field protected fEvent:Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

.field private fNeedNonNormalizedValue:Z

.field protected fNotifyCharRefs:Z

.field protected fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

.field protected fReportEntity:Z

.field protected fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

.field protected fScanningAttribute:Z

.field private fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

.field private fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

.field private fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

.field private fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

.field protected fStringBufferIndex:I

.field protected fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

.field protected fValidation:Z

.field initialCacheCount:I

.field protected stringBufferCache:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 243
    const-string v0, "version"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fVersionSymbol:Ljava/lang/String;

    .line 246
    const-string v0, "encoding"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEncodingSymbol:Ljava/lang/String;

    .line 249
    const-string v0, "standalone"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStandaloneSymbol:Ljava/lang/String;

    .line 252
    const-string v0, "amp"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fAmpSymbol:Ljava/lang/String;

    .line 255
    const-string v0, "lt"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fLtSymbol:Ljava/lang/String;

    .line 258
    const-string v0, "gt"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fGtSymbol:Ljava/lang/String;

    .line 261
    const-string v0, "quot"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fQuotSymbol:Ljava/lang/String;

    .line 264
    const-string v0, "apos"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fAposSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->attributeValueCache:Ljava/util/ArrayList;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->stringBufferCache:Ljava/util/ArrayList;

    .line 185
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBufferIndex:I

    .line 186
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fAttributeCacheInitDone:Z

    .line 187
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fAttributeCacheUsedCount:I

    .line 199
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fValidation:Z

    .line 202
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNotifyCharRefs:Z

    .line 206
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    .line 215
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    .line 218
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    .line 226
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    .line 232
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fCharRefLiteral:Ljava/lang/String;

    .line 275
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    .line 278
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 281
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 284
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 287
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    .line 288
    const/4 v0, 0x6

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->initialCacheCount:I

    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 1417
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityDepth:I

    .line 1418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fReportEntity:Z

    .line 1419
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 1420
    return-void
.end method

.method protected static isInvalid(I)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 1326
    invoke-static {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v0

    return v0
.end method

.method protected static isInvalidLiteral(I)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 1333
    invoke-static {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v0

    return v0
.end method

.method protected static isValidNCName(I)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 1347
    invoke-static {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isNCName(I)Z

    move-result v0

    return v0
.end method

.method protected static isValidNameChar(I)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 1340
    invoke-static {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isName(I)Z

    move-result v0

    return v0
.end method

.method protected static isValidNameStartChar(I)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 1354
    invoke-static {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1191
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityDepth:I

    .line 1193
    return-void
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .parameter "featureId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 377
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fValidation:Z

    .line 380
    :goto_0
    return v0

    .line 379
    :cond_0
    const-string v0, "http://apache.org/xml/features/scanner/notify-char-refs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNotifyCharRefs:Z

    goto :goto_0

    .line 382
    :cond_1
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method getStringBuffer()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;
    .locals 4

    .prologue
    .line 1423
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBufferIndex:I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->initialCacheCount:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBufferIndex:I

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->stringBufferCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1424
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->stringBufferCache:Ljava/util/ArrayList;

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBufferIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBufferIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    move-object v0, v1

    .line 1428
    :goto_0
    return-object v0

    .line 1426
    :cond_1
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>()V

    .line 1427
    .local v0, tmpObj:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->stringBufferCache:Ljava/util/ArrayList;

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBufferIndex:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected normalizeWhitespace(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V
    .locals 7
    .parameter "value"

    .prologue
    .line 1135
    const/4 v3, 0x0

    .line 1136
    .local v3, i:I
    const/4 v4, 0x0

    .line 1137
    .local v4, j:I
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget-object v0, v5, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLookup:[I

    .line 1138
    .local v0, buff:[I
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget v1, v5, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    .line 1139
    .local v1, buffLen:I
    iget v5, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    iget v6, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    add-int v2, v5, v6

    .line 1140
    .local v2, end:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1141
    aget v4, v0, v3

    .line 1142
    if-ge v4, v2, :cond_0

    .line 1143
    iget-object v5, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->ch:[C

    const/16 v6, 0x20

    aput-char v6, v5, v4

    .line 1145
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 1146
    goto :goto_0

    .line 1147
    :cond_1
    return-void
.end method

.method protected reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "msgId"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/4 v5, 0x2

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1409
    return-void
.end method

.method public reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 2
    .parameter "propertyManager"

    .prologue
    const/4 v1, 0x0

    .line 391
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->init()V

    .line 393
    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v0}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 395
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v0}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    .line 397
    const-string v0, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-virtual {p1, v0}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    .line 398
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getEntityStore()Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    .line 399
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getEntityReader()Lcom/amazonaws/javax/xml/stream/XMLEntityReader;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    .line 402
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fValidation:Z

    .line 403
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNotifyCharRefs:Z

    .line 405
    return-void
.end method

.method public reset(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;)V
    .locals 3
    .parameter "componentManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 305
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 306
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    .line 307
    const-string v1, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    .line 309
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->init()V

    .line 312
    :try_start_0
    const-string v1, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fValidation:Z
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    :try_start_1
    const-string v1, "http://apache.org/xml/features/scanner/notify-char-refs"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNotifyCharRefs:Z
    :try_end_1
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 323
    :goto_1
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fValidation:Z

    goto :goto_0

    .line 319
    .end local v0           #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    :catch_1
    move-exception v0

    .line 320
    .restart local v0       #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNotifyCharRefs:Z

    goto :goto_1
.end method

.method protected scanAttributeValue(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;IZ)V
    .locals 13
    .parameter "value"
    .parameter "nonNormalizedValue"
    .parameter "atName"
    .parameter "attributes"
    .parameter "attrIndex"
    .parameter "checkEntities"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 800
    const/4 v12, 0x0

    .line 802
    .local v12, stringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v11

    .line 803
    .local v11, quote:I
    const/16 v0, 0x27

    if-eq v11, v0, :cond_0

    const/16 v0, 0x22

    if-eq v11, v0, :cond_0

    .line 804
    const-string v0, "OpenQuoteExpected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 808
    iget v9, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityDepth:I

    .line 810
    .local v9, entityDepth:I
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0, v11, p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanLiteral(ILcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)I

    move-result v6

    .line 815
    .local v6, c:I
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 817
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget v0, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    if-lez v0, :cond_2

    .line 820
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->normalizeWhitespace(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 825
    :cond_2
    if-eq v6, v11, :cond_9

    .line 826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fScanningAttribute:Z

    .line 827
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->getStringBuffer()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    move-result-object v12

    .line 828
    invoke-virtual {v12}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 830
    :cond_3
    invoke-virtual {v12, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 835
    const/16 v0, 0x26

    if-ne v6, v0, :cond_1a

    .line 836
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    .line 837
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v9, v0, :cond_4

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v0, :cond_4

    .line 838
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 840
    :cond_4
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 841
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v9, v0, :cond_5

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v0, :cond_5

    .line 842
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 845
    :cond_5
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v0, :cond_c

    .line 846
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v12, v0}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->scanCharReferenceValue(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)I

    move-result v7

    .line 850
    .local v7, ch:I
    :goto_0
    const/4 v0, -0x1

    if-eq v7, v0, :cond_6

    .line 971
    .end local v7           #ch:I
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0, v11, p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanLiteral(ILcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)I

    move-result v6

    .line 972
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v9, v0, :cond_7

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v0, :cond_7

    .line 973
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 975
    :cond_7
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget v0, v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->whiteSpaceLen:I

    if-lez v0, :cond_8

    .line 976
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->normalizeWhitespace(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 979
    :cond_8
    if-ne v6, v11, :cond_3

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v9, v0, :cond_3

    .line 980
    invoke-virtual {v12, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 985
    invoke-virtual {p1, v12}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 986
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fScanningAttribute:Z

    .line 988
    :cond_9
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v0, :cond_a

    .line 989
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {p2, v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 992
    :cond_a
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v8

    .line 993
    .local v8, cquote:I
    if-eq v8, v11, :cond_b

    .line 994
    const-string v0, "CloseQuoteExpected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 996
    :cond_b
    return-void

    .line 848
    .end local v8           #cquote:I
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v12, v0}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->scanCharReferenceValue(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)I

    move-result v7

    .restart local v7       #ch:I
    goto :goto_0

    .line 858
    .end local v7           #ch:I
    :cond_d
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v10

    .line 859
    .local v10, entityName:Ljava/lang/String;
    if-nez v10, :cond_10

    .line 860
    const-string v0, "NameRequiredInReference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 864
    :cond_e
    :goto_2
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 865
    const-string v0, "SemicolonRequiredInReference"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 870
    :cond_f
    :goto_3
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fAmpSymbol:Ljava/lang/String;

    if-ne v10, v0, :cond_12

    .line 871
    const/16 v0, 0x26

    invoke-virtual {v12, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_1

    .line 861
    :cond_10
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v9, v0, :cond_e

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v0, :cond_e

    .line 862
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v10}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_2

    .line 867
    :cond_11
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v9, v0, :cond_f

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v0, :cond_f

    .line 868
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_3

    .line 877
    :cond_12
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fAposSymbol:Ljava/lang/String;

    if-ne v10, v0, :cond_13

    .line 878
    const/16 v0, 0x27

    invoke-virtual {v12, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 884
    :cond_13
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fLtSymbol:Ljava/lang/String;

    if-ne v10, v0, :cond_14

    .line 885
    const/16 v0, 0x3c

    invoke-virtual {v12, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 891
    :cond_14
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fGtSymbol:Ljava/lang/String;

    if-ne v10, v0, :cond_15

    .line 892
    const/16 v0, 0x3e

    invoke-virtual {v12, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 898
    :cond_15
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fQuotSymbol:Ljava/lang/String;

    if-ne v10, v0, :cond_16

    .line 899
    const/16 v0, 0x22

    invoke-virtual {v12, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 906
    :cond_16
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    invoke-virtual {v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->isExternalEntity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 907
    const-string v0, "ReferenceToExternalEntity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 910
    :cond_17
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    invoke-virtual {v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 912
    if-eqz p6, :cond_19

    .line 913
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fValidation:Z

    if-eqz v0, :cond_18

    .line 914
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "EntityNotDeclared"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 924
    :cond_18
    :goto_4
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v10, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 920
    :cond_19
    const-string v0, "EntityNotDeclared"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 928
    .end local v10           #entityName:Ljava/lang/String;
    :cond_1a
    const/16 v0, 0x3c

    if-ne v6, v0, :cond_1b

    .line 929
    const-string v0, "LessthanInAttValue"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 931
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 932
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v9, v0, :cond_6

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v0, :cond_6

    .line 933
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    int-to-char v1, v6

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 935
    :cond_1b
    const/16 v0, 0x25

    if-eq v6, v0, :cond_1c

    const/16 v0, 0x5d

    if-ne v6, v0, :cond_1d

    .line 936
    :cond_1c
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 937
    int-to-char v0, v6

    invoke-virtual {v12, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 938
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v9, v0, :cond_6

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v0, :cond_6

    .line 939
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    int-to-char v1, v6

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 945
    :cond_1d
    const/16 v0, 0xa

    if-eq v6, v0, :cond_1e

    const/16 v0, 0xd

    if-ne v6, v0, :cond_1f

    .line 946
    :cond_1e
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 947
    const/16 v0, 0x20

    invoke-virtual {v12, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 948
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v9, v0, :cond_6

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v0, :cond_6

    .line 949
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1

    .line 951
    :cond_1f
    const/4 v0, -0x1

    if-eq v6, v0, :cond_20

    invoke-static {v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 952
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->scanSurrogates(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 953
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v12, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 954
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v9, v0, :cond_6

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v0, :cond_6

    .line 955
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    goto/16 :goto_1

    .line 963
    :cond_20
    const/4 v0, -0x1

    if-eq v6, v0, :cond_6

    invoke-static {v6}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->isInvalidLiteral(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 964
    const-string v0, "InvalidCharInAttValue"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v6, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 966
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 967
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityDepth:I

    if-ne v9, v0, :cond_6

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNeedNonNormalizedValue:Z

    if-eqz v0, :cond_6

    .line 968
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    int-to-char v1, v6

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_1
.end method

.method protected scanCharReferenceValue(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)I
    .locals 11
    .parameter "buf"
    .parameter "buf2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1215
    const/4 v4, 0x0

    .line 1216
    .local v4, hex:Z
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1217
    if-eqz p2, :cond_0

    const/16 v7, 0x78

    invoke-virtual {p2, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1218
    :cond_0
    const/4 v4, 0x1

    .line 1219
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 1220
    const/4 v1, 0x1

    .line 1222
    .local v1, digit:Z
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v0

    .line 1223
    .local v0, c:I
    const/16 v7, 0x30

    if-lt v0, v7, :cond_1

    const/16 v7, 0x39

    if-le v0, v7, :cond_3

    :cond_1
    const/16 v7, 0x61

    if-lt v0, v7, :cond_2

    const/16 v7, 0x66

    if-le v0, v7, :cond_3

    :cond_2
    const/16 v7, 0x41

    if-lt v0, v7, :cond_10

    const/16 v7, 0x46

    if-gt v0, v7, :cond_10

    :cond_3
    const/4 v1, 0x1

    .line 1226
    :goto_0
    if-eqz v1, :cond_12

    .line 1227
    if-eqz p2, :cond_4

    int-to-char v7, v0

    invoke-virtual {p2, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1228
    :cond_4
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 1229
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1232
    :cond_5
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v0

    .line 1233
    const/16 v7, 0x30

    if-lt v0, v7, :cond_6

    const/16 v7, 0x39

    if-le v0, v7, :cond_8

    :cond_6
    const/16 v7, 0x61

    if-lt v0, v7, :cond_7

    const/16 v7, 0x66

    if-le v0, v7, :cond_8

    :cond_7
    const/16 v7, 0x41

    if-lt v0, v7, :cond_11

    const/16 v7, 0x46

    if-gt v0, v7, :cond_11

    :cond_8
    const/4 v1, 0x1

    .line 1236
    :goto_1
    if-eqz v1, :cond_a

    .line 1237
    if-eqz p2, :cond_9

    int-to-char v7, v0

    invoke-virtual {p2, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1238
    :cond_9
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 1239
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1241
    :cond_a
    if-nez v1, :cond_5

    .line 1274
    :goto_2
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1275
    const-string v7, "SemicolonRequiredInCharRef"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1277
    :cond_b
    if-eqz p2, :cond_c

    const/16 v7, 0x3b

    invoke-virtual {p2, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1280
    :cond_c
    const/4 v6, -0x1

    .line 1282
    .local v6, value:I
    :try_start_0
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_1b

    const/16 v7, 0x10

    :goto_3
    invoke-static {v8, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 1286
    invoke-static {v6}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->isInvalid(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1287
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1288
    .local v3, errorBuf:Ljava/lang/StringBuffer;
    if-eqz v4, :cond_d

    const/16 v7, 0x78

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1289
    :cond_d
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget v8, v8, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->offset:I

    iget-object v9, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget v9, v9, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v3, v7, v8, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1290
    const-string v7, "InvalidCharRef"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    .end local v3           #errorBuf:Ljava/lang/StringBuffer;
    :cond_e
    :goto_4
    invoke-static {v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 1305
    int-to-char v7, v6

    invoke-virtual {p1, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1313
    :goto_5
    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNotifyCharRefs:Z

    if-eqz v7, :cond_f

    const/4 v7, -0x1

    if-eq v6, v7, :cond_f

    .line 1314
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    if-eqz v4, :cond_1e

    const-string v7, "x"

    :goto_6
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1315
    .local v5, literal:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fScanningAttribute:Z

    if-nez v7, :cond_f

    .line 1316
    iput-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fCharRefLiteral:Ljava/lang/String;

    .line 1320
    .end local v5           #literal:Ljava/lang/String;
    :cond_f
    return v6

    .line 1223
    .end local v6           #value:I
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1233
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1243
    :cond_12
    const-string v7, "HexdigitRequiredInCharRef"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1249
    .end local v0           #c:I
    .end local v1           #digit:Z
    :cond_13
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 1250
    const/4 v1, 0x1

    .line 1252
    .restart local v1       #digit:Z
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v0

    .line 1253
    .restart local v0       #c:I
    const/16 v7, 0x30

    if-lt v0, v7, :cond_18

    const/16 v7, 0x39

    if-gt v0, v7, :cond_18

    const/4 v1, 0x1

    .line 1254
    :goto_7
    if-eqz v1, :cond_1a

    .line 1255
    if-eqz p2, :cond_14

    int-to-char v7, v0

    invoke-virtual {p2, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1256
    :cond_14
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 1257
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1260
    :cond_15
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v0

    .line 1261
    const/16 v7, 0x30

    if-lt v0, v7, :cond_19

    const/16 v7, 0x39

    if-gt v0, v7, :cond_19

    const/4 v1, 0x1

    .line 1262
    :goto_8
    if-eqz v1, :cond_17

    .line 1263
    if-eqz p2, :cond_16

    int-to-char v7, v0

    invoke-virtual {p2, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1264
    :cond_16
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 1265
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1267
    :cond_17
    if-nez v1, :cond_15

    goto/16 :goto_2

    .line 1253
    :cond_18
    const/4 v1, 0x0

    goto :goto_7

    .line 1261
    :cond_19
    const/4 v1, 0x0

    goto :goto_8

    .line 1269
    :cond_1a
    const-string v7, "DigitRequiredInCharRef"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1282
    .restart local v6       #value:I
    :cond_1b
    const/16 v7, 0xa

    goto/16 :goto_3

    .line 1293
    :catch_0
    move-exception v2

    .line 1296
    .local v2, e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1297
    .restart local v3       #errorBuf:Ljava/lang/StringBuffer;
    if-eqz v4, :cond_1c

    const/16 v7, 0x78

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1298
    :cond_1c
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget v8, v8, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->offset:I

    iget-object v9, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer3:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget v9, v9, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v3, v7, v8, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1299
    const-string v7, "InvalidCharRef"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1308
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v3           #errorBuf:Ljava/lang/StringBuffer;
    :cond_1d
    invoke-static {v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->highSurrogate(I)C

    move-result v7

    invoke-virtual {p1, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1309
    invoke-static {v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->lowSurrogate(I)C

    move-result v7

    invoke-virtual {p1, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_5

    .line 1314
    :cond_1e
    const-string v7, ""

    goto/16 :goto_6
.end method

.method protected scanComment(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V
    .locals 5
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 752
    invoke-virtual {p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 753
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v2, "--"

    invoke-virtual {v1, v2, p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanData(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 754
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v0

    .line 759
    .local v0, c:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 760
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->scanSurrogates(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)Z

    .line 763
    :cond_1
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->isInvalidLiteral(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    const-string v1, "InvalidCharInComment"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    goto :goto_0

    .line 770
    .end local v0           #c:I
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 771
    const-string v1, "DashDashInComment"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    :cond_3
    return-void
.end method

.method protected scanExternalID([Ljava/lang/String;Z)V
    .locals 10
    .parameter "identifiers"
    .parameter "optionalSystemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1013
    const/4 v4, 0x0

    .line 1014
    .local v4, systemId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1015
    .local v2, publicId:Ljava/lang/String;
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v6, "PUBLIC"

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1016
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1017
    const-string v5, "SpaceRequiredAfterPUBLIC"

    invoke-virtual {p0, v5, v7}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1019
    :cond_0
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {p0, v5}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->scanPubidLiteral(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)Z

    .line 1020
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1022
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez p2, :cond_1

    .line 1023
    const-string v5, "SpaceRequiredBetweenPublicAndSystem"

    invoke-virtual {p0, v5, v7}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1027
    :cond_1
    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v6, "SYSTEM"

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1028
    :cond_2
    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1029
    const-string v5, "SpaceRequiredAfterSYSTEM"

    invoke-virtual {p0, v5, v7}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    :cond_3
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v3

    .line 1032
    .local v3, quote:I
    const/16 v5, 0x27

    if-eq v3, v5, :cond_5

    const/16 v5, 0x22

    if-eq v3, v5, :cond_5

    .line 1033
    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    .line 1036
    aput-object v7, p1, v8

    .line 1037
    aput-object v2, p1, v9

    .line 1065
    .end local v3           #quote:I
    :goto_0
    return-void

    .line 1040
    .restart local v3       #quote:I
    :cond_4
    const-string v5, "QuoteRequiredInSystemID"

    invoke-virtual {p0, v5, v7}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1042
    :cond_5
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 1043
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    .line 1044
    .local v1, ident:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5, v3, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanLiteral(ILcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)I

    move-result v5

    if-eq v5, v3, :cond_9

    .line 1045
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 1047
    :cond_6
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v5, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 1048
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v0

    .line 1049
    .local v0, c:I
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isMarkup(I)Z

    move-result v5

    if-nez v5, :cond_7

    const/16 v5, 0x5d

    if-ne v0, v5, :cond_8

    .line 1050
    :cond_7
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1052
    :cond_8
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5, v3, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanLiteral(ILcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)I

    move-result v5

    if-ne v5, v3, :cond_6

    .line 1053
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v5, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 1054
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 1056
    .end local v0           #c:I
    :cond_9
    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1057
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1058
    const-string v5, "SystemIDUnterminated"

    invoke-virtual {p0, v5, v7}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    .end local v1           #ident:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;
    .end local v3           #quote:I
    :cond_a
    aput-object v4, p1, v8

    .line 1064
    aput-object v2, p1, v9

    goto :goto_0
.end method

.method protected scanPI(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 659
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fReportEntity:Z

    .line 660
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, target:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 662
    const-string v1, "PITargetRequired"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->scanPIData(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V

    .line 667
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fReportEntity:Z

    .line 669
    return-void
.end method

.method protected scanPIData(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V
    .locals 9
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 693
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 694
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 695
    .local v1, c0:C
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 696
    .local v2, c1:C
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 697
    .local v3, c2:C
    const/16 v4, 0x78

    if-ne v1, v4, :cond_0

    const/16 v4, 0x6d

    if-ne v2, v4, :cond_0

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_0

    .line 698
    const-string v4, "ReservedPITarget"

    invoke-virtual {p0, v4, v6}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    .end local v1           #c0:C
    .end local v2           #c1:C
    .end local v3           #c2:C
    :cond_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v4

    if-nez v4, :cond_3

    .line 704
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v5, "?>"

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 731
    :cond_1
    :goto_0
    return-void

    .line 709
    :cond_2
    const-string v4, "SpaceRequiredInPI"

    invoke-virtual {p0, v4, v6}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    :cond_3
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v5, "?>"

    invoke-virtual {v4, v5, p2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanData(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 718
    :cond_4
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v0

    .line 719
    .local v0, c:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    .line 720
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 721
    invoke-virtual {p0, p2}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->scanSurrogates(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)Z

    .line 728
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v5, "?>"

    invoke-virtual {v4, v5, p2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanData(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 722
    :cond_6
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->isInvalidLiteral(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 723
    const-string v4, "InvalidCharInPI"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    goto :goto_1
.end method

.method public scanPseudoAttribute(ZLcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)Ljava/lang/String;
    .locals 8
    .parameter "scanningTextDecl"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 590
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 594
    const-string v4, "PseudoAttrNameExpected"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    :cond_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    .line 597
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 598
    if-eqz p1, :cond_8

    const-string v4, "EqRequiredInTextDecl"

    :goto_0
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    :cond_1
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    .line 602
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v3

    .line 603
    .local v3, quote:I
    const/16 v4, 0x27

    if-eq v3, v4, :cond_2

    const/16 v4, 0x22

    if-eq v3, v4, :cond_2

    .line 604
    if-eqz p1, :cond_9

    const-string v4, "QuoteRequiredInTextDecl"

    :goto_1
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    :cond_2
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 608
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4, v3, p2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanLiteral(ILcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)I

    move-result v0

    .line 609
    .local v0, c:I
    if-eq v0, v3, :cond_6

    .line 610
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 612
    :cond_3
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 613
    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    .line 614
    const/16 v4, 0x26

    if-eq v0, v4, :cond_4

    const/16 v4, 0x25

    if-eq v0, v4, :cond_4

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_4

    const/16 v4, 0x5d

    if-ne v0, v4, :cond_a

    .line 615
    :cond_4
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 626
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4, v3, p2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanLiteral(ILcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)I

    move-result v0

    .line 627
    if-ne v0, v3, :cond_3

    .line 628
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 629
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {p2, v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 631
    :cond_6
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 632
    if-eqz p1, :cond_d

    const-string v4, "CloseQuoteMissingInTextDecl"

    :goto_3
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    :cond_7
    return-object v2

    .line 598
    .end local v0           #c:I
    .end local v3           #quote:I
    :cond_8
    const-string v4, "EqRequiredInXMLDecl"

    goto/16 :goto_0

    .line 604
    .restart local v3       #quote:I
    :cond_9
    const-string v4, "QuoteRequiredInXMLDecl"

    goto :goto_1

    .line 616
    .restart local v0       #c:I
    :cond_a
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 617
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v4}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->scanSurrogates(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)Z

    goto :goto_2

    .line 618
    :cond_b
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->isInvalidLiteral(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 619
    if-eqz p1, :cond_c

    const-string v1, "InvalidCharInTextDecl"

    .line 621
    .local v1, key:Ljava/lang/String;
    :goto_4
    new-array v4, v7, [Ljava/lang/Object;

    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v1, v4}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    goto :goto_2

    .line 619
    .end local v1           #key:Ljava/lang/String;
    :cond_c
    const-string v1, "InvalidCharInXMLDecl"

    goto :goto_4

    .line 632
    :cond_d
    const-string v4, "CloseQuoteMissingInXMLDecl"

    goto :goto_3
.end method

.method protected scanPubidLiteral(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)Z
    .locals 10
    .parameter "literal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x20

    const/4 v4, 0x0

    .line 1089
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v2

    .line 1090
    .local v2, quote:I
    const/16 v5, 0x27

    if-eq v2, v5, :cond_0

    const/16 v5, 0x22

    if-eq v2, v5, :cond_0

    .line 1091
    const-string v5, "QuoteRequiredInPublicID"

    invoke-virtual {p0, v5, v9}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v4

    .line 1126
    :goto_0
    return v1

    .line 1095
    :cond_0
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 1097
    const/4 v3, 0x1

    .line 1098
    .local v3, skipSpace:Z
    const/4 v1, 0x1

    .line 1100
    .local v1, dataok:Z
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v0

    .line 1101
    .local v0, c:I
    if-eq v0, v8, :cond_2

    const/16 v5, 0xa

    if-eq v0, v5, :cond_2

    const/16 v5, 0xd

    if-ne v0, v5, :cond_3

    .line 1102
    :cond_2
    if-nez v3, :cond_1

    .line 1104
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v5, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1105
    const/4 v3, 0x1

    .line 1106
    goto :goto_1

    .line 1107
    :cond_3
    if-ne v0, v2, :cond_5

    .line 1108
    if-eqz v3, :cond_4

    .line 1110
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget v5, v4, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    .line 1112
    :cond_4
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    goto :goto_0

    .line 1114
    :cond_5
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isPubid(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1115
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    int-to-char v6, v0

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1116
    const/4 v3, 0x0

    .line 1117
    goto :goto_1

    :cond_6
    const/4 v5, -0x1

    if-ne v0, v5, :cond_7

    .line 1118
    const-string v5, "PublicIDUnterminated"

    invoke-virtual {p0, v5, v9}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v4

    .line 1119
    goto :goto_0

    .line 1121
    :cond_7
    const/4 v1, 0x0

    .line 1122
    const-string v5, "InvalidCharInPublicID"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected scanSurrogates(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)Z
    .locals 8
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1373
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v1

    .line 1374
    .local v1, high:I
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v2

    .line 1375
    .local v2, low:I
    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1376
    const-string v5, "InvalidCharInContent"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {p0, v5, v4}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1396
    :goto_0
    return v3

    .line 1380
    :cond_0
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 1383
    int-to-char v5, v1

    int-to-char v6, v2

    invoke-static {v5, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    .line 1386
    .local v0, c:I
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->isInvalid(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1387
    const-string v5, "InvalidCharInContent"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {p0, v5, v4}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1393
    :cond_1
    int-to-char v3, v1

    invoke-virtual {p1, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1394
    int-to-char v3, v2

    invoke-virtual {p1, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    move v3, v4

    .line 1396
    goto :goto_0
.end method

.method protected scanXMLDeclOrTextDecl(Z[Ljava/lang/String;)V
    .locals 14
    .parameter "scanningTextDecl"
    .parameter "pseudoAttributeValues"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 437
    const/4 v10, 0x0

    .line 438
    .local v10, version:Ljava/lang/String;
    const/4 v5, 0x0

    .line 439
    .local v5, encoding:Ljava/lang/String;
    const/4 v8, 0x0

    .line 442
    .local v8, standalone:Ljava/lang/String;
    const/4 v3, 0x0

    .line 443
    .local v3, STATE_VERSION:I
    const/4 v1, 0x1

    .line 444
    .local v1, STATE_ENCODING:I
    const/4 v2, 0x2

    .line 445
    .local v2, STATE_STANDALONE:I
    const/4 v0, 0x3

    .line 446
    .local v0, STATE_DONE:I
    const/4 v9, 0x0

    .line 448
    .local v9, state:I
    const/4 v4, 0x0

    .line 449
    .local v4, dataFoundForTarget:Z
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v11}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v7

    .line 450
    .local v7, sawSpace:Z
    :goto_0
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v11}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v11

    const/16 v12, 0x3f

    if-eq v11, v12, :cond_12

    .line 451
    const/4 v4, 0x1

    .line 452
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {p0, p1, v11}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->scanPseudoAttribute(ZLcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)Ljava/lang/String;

    move-result-object v6

    .line 453
    .local v6, name:Ljava/lang/String;
    packed-switch v9, :pswitch_data_0

    .line 533
    const-string v11, "NoMorePseudoAttributes"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v11}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v7

    .line 537
    goto :goto_0

    .line 455
    :pswitch_0
    sget-object v11, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fVersionSymbol:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 456
    if-nez v7, :cond_1

    .line 457
    if-eqz p1, :cond_2

    const-string v11, "SpaceRequiredBeforeVersionInTextDecl"

    :goto_2
    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    :cond_1
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v11}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v10

    .line 463
    const/4 v9, 0x1

    .line 464
    invoke-virtual {p0, v10}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->versionSupported(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 465
    const-string v11, "VersionNotSupported"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 457
    :cond_2
    const-string v11, "SpaceRequiredBeforeVersionInXMLDecl"

    goto :goto_2

    .line 468
    :cond_3
    sget-object v11, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEncodingSymbol:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 469
    if-nez p1, :cond_4

    .line 470
    const-string v11, "VersionInfoRequired"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    :cond_4
    if-nez v7, :cond_5

    .line 473
    if-eqz p1, :cond_6

    const-string v11, "SpaceRequiredBeforeEncodingInTextDecl"

    :goto_3
    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    :cond_5
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v11}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 479
    if-eqz p1, :cond_7

    const/4 v9, 0x3

    .line 480
    :goto_4
    goto :goto_1

    .line 473
    :cond_6
    const-string v11, "SpaceRequiredBeforeEncodingInXMLDecl"

    goto :goto_3

    .line 479
    :cond_7
    const/4 v9, 0x2

    goto :goto_4

    .line 481
    :cond_8
    if-eqz p1, :cond_9

    .line 482
    const-string v11, "EncodingDeclRequired"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 484
    :cond_9
    const-string v11, "VersionInfoRequired"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 490
    :pswitch_1
    sget-object v11, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEncodingSymbol:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 491
    if-nez v7, :cond_a

    .line 492
    if-eqz p1, :cond_b

    const-string v11, "SpaceRequiredBeforeEncodingInTextDecl"

    :goto_5
    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    :cond_a
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v11}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 498
    if-eqz p1, :cond_c

    const/4 v9, 0x3

    .line 501
    :goto_6
    goto/16 :goto_1

    .line 492
    :cond_b
    const-string v11, "SpaceRequiredBeforeEncodingInXMLDecl"

    goto :goto_5

    .line 498
    :cond_c
    const/4 v9, 0x2

    goto :goto_6

    .line 501
    :cond_d
    if-nez p1, :cond_f

    sget-object v11, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStandaloneSymbol:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 502
    if-nez v7, :cond_e

    .line 503
    const-string v11, "SpaceRequiredBeforeStandalone"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    :cond_e
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v11}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v8

    .line 507
    const/4 v9, 0x3

    .line 508
    const-string v11, "yes"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "no"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 509
    const-string v11, "SDDeclInvalid"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 512
    :cond_f
    const-string v11, "EncodingDeclRequired"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 517
    :pswitch_2
    sget-object v11, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fStandaloneSymbol:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 518
    if-nez v7, :cond_10

    .line 519
    const-string v11, "SpaceRequiredBeforeStandalone"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    :cond_10
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v11}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v8

    .line 523
    const/4 v9, 0x3

    .line 524
    const-string v11, "yes"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "no"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 525
    const-string v11, "SDDeclInvalid"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 528
    :cond_11
    const-string v11, "EncodingDeclRequired"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 539
    .end local v6           #name:Ljava/lang/String;
    :cond_12
    if-eqz p1, :cond_13

    const/4 v11, 0x3

    if-eq v9, v11, :cond_13

    .line 540
    const-string v11, "MorePseudoAttributes"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    :cond_13
    if-eqz p1, :cond_17

    .line 546
    if-nez v4, :cond_14

    if-nez v5, :cond_14

    .line 547
    const-string v11, "EncodingDeclRequired"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    :cond_14
    :goto_7
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v12, 0x3f

    invoke-virtual {v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v11

    if-nez v11, :cond_15

    .line 557
    const-string v11, "XMLDeclUnterminated"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    :cond_15
    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v12, 0x3e

    invoke-virtual {v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v11

    if-nez v11, :cond_16

    .line 560
    const-string v11, "XMLDeclUnterminated"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    :cond_16
    const/4 v11, 0x0

    aput-object v10, p2, v11

    .line 566
    const/4 v11, 0x1

    aput-object v5, p2, v11

    .line 567
    const/4 v11, 0x2

    aput-object v8, p2, v11

    .line 569
    return-void

    .line 550
    :cond_17
    if-nez v4, :cond_14

    if-nez v10, :cond_14

    .line 551
    const-string v11, "VersionInfoRequired"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .parameter "featureId"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 364
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iput-boolean p2, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fValidation:Z

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    const-string v0, "http://apache.org/xml/features/scanner/notify-char-refs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iput-boolean p2, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fNotifyCharRefs:Z

    goto :goto_0
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
    .line 339
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, property:Ljava/lang/String;
    const-string v1, "internal/symbol-table"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    check-cast p2, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .end local p2
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 356
    .end local v0           #property:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 344
    .restart local v0       #property:Ljava/lang/String;
    .restart local p2
    :cond_1
    const-string v1, "internal/error-reporter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 345
    check-cast p2, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    .end local p2
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    goto :goto_0

    .line 346
    .restart local p2
    :cond_2
    const-string v1, "internal/entity-manager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    check-cast p2, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    .end local p2
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    goto :goto_0
.end method

.method protected setPropertyManager(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 0
    .parameter "propertyManager"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    .line 327
    return-void
.end method

.method public startEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "identifier"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1174
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLScanner;->fEntityDepth:I

    .line 1176
    return-void
.end method

.method protected versionSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "version"

    .prologue
    .line 1358
    const-string v0, "1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
