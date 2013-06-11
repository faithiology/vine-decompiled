.class public Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;
.super Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;
.source "XMLNSDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;
    }
.end annotation


# instance fields
.field private fEmptyElement:Z

.field protected fPerformValidation:Z

.field private fXmlnsDeclared:Z

.field private listener:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;-><init>()V

    .line 138
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEmptyElement:Z

    .line 139
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;-><init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->listener:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;

    .line 142
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fXmlnsDeclared:Z

    .line 745
    return-void
.end method

.method private seekCloseOfStartTag()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3e

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 437
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v1

    .line 440
    .local v1, sawSpace:Z
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v0

    .line 441
    .local v0, c:I
    if-ne v0, v5, :cond_0

    .line 442
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 458
    :goto_0
    return v2

    .line 445
    :cond_0
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_2

    .line 446
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 447
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 448
    const-string v4, "ElementUnterminated"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    :cond_1
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEmptyElement:Z

    goto :goto_0

    .line 454
    :cond_2
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_4

    .line 455
    :cond_3
    const-string v4, "ElementUnterminated"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {p0, v4, v2}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move v2, v3

    .line 458
    goto :goto_0
.end method


# virtual methods
.method protected createContentDriver()Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;
    .locals 1

    .prologue
    .line 739
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl$NSContentDriver;-><init>(Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;)V

    return-object v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fDeclaredEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getDTDDecl()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;
    .locals 6

    .prologue
    .line 785
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getCurrentEntity()Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    move-result-object v0

    .line 786
    .local v0, entity:Lcom/amazonaws/javax/xml/stream/Entity;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fDTDDecl:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    check-cast v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    .end local v0           #entity:Lcom/amazonaws/javax/xml/stream/Entity;
    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fStartPos:I

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEndPos:I

    iget v5, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fStartPos:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append([CII)V

    .line 787
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fSeenInternalSubset:Z

    if-eqz v1, :cond_0

    .line 788
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fDTDDecl:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const-string v2, "]>"

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fDTDDecl:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    return-object v1
.end method

.method public getElementQName()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fScannerLastState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->getLastPoppedElement()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    return-object v0
.end method

.method public getNamespaceContext()Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    return-object v0
.end method

.method getString()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;
    .locals 4

    .prologue
    .line 774
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheUsedCount:I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->initialCacheCount:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheUsedCount:I

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->attributeValueCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 775
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->attributeValueCache:Ljava/util/ArrayList;

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheUsedCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheUsedCount:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    move-object v0, v1

    .line 781
    :goto_0
    return-object v0

    .line 778
    :cond_1
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;-><init>()V

    .line 779
    .local v0, str:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheUsedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheUsedCount:I

    .line 780
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->attributeValueCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 3
    .parameter "propertyManager"

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->setPropertyManager(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 148
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 150
    :try_start_0
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheInitDone:Z

    if-nez v1, :cond_1

    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->initialCacheCount:I

    if-ge v0, v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->attributeValueCache:Ljava/util/ArrayList;

    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->stringBufferCache:Ljava/util/ArrayList;

    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheInitDone:Z

    .line 157
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fStringBufferIndex:I

    .line 158
    const/4 v1, 0x0

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheUsedCount:I

    .line 159
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->listener:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->registerListener(Lcom/amazonaws/javax/xml/stream/XMLBufferListener;)V

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->dtdGrammarUtil:Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    return-void

    .line 162
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public reset(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;)V
    .locals 1
    .parameter "componentManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 732
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->reset(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;)V

    .line 733
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    .line 734
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    .line 735
    return-void
.end method

.method protected scanAttribute(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;)V
    .locals 16
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v1, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanQName(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Z

    .line 488
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    .line 489
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    const-string v1, "EqRequiredInAttribute"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fCurrentElement:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    .line 496
    const/4 v6, 0x0

    .line 500
    .local v6, attrIndex:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fHasExternalDTD:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fStandalone:Z

    if-nez v1, :cond_9

    const/4 v7, 0x1

    .line 510
    .local v7, isVC:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getString()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    move-result-object v2

    .line 511
    .local v2, tmpStr:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fTempString2:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->scanAttributeValue(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;IZ)V

    .line 515
    const/4 v13, 0x0

    .line 519
    .local v13, value:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v1, :cond_e

    .line 521
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v9, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 522
    .local v9, localpart:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v11, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 527
    .local v11, prefix:Ljava/lang/String;
    :goto_1
    sget-object v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v11, v1, :cond_1

    sget-object v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v11, v1, :cond_e

    sget-object v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v9, v1, :cond_e

    .line 531
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    iget-object v3, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->ch:[C

    iget v4, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    iget v5, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v12

    .line 532
    .local v12, uri:Ljava/lang/String;
    move-object v13, v12

    .line 534
    sget-object v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v11, v1, :cond_2

    sget-object v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v9, v1, :cond_2

    .line 535
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v4, "CantBindXMLNS"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    aput-object v15, v5, v14

    const/4 v14, 0x2

    invoke-virtual {v1, v3, v4, v5, v14}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 542
    :cond_2
    sget-object v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v12, v1, :cond_3

    .line 543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v4, "CantBindXMLNS"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    aput-object v15, v5, v14

    const/4 v14, 0x2

    invoke-virtual {v1, v3, v4, v5, v14}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 550
    :cond_3
    sget-object v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-ne v9, v1, :cond_b

    .line 551
    sget-object v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v12, v1, :cond_4

    .line 552
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v4, "CantBindXML"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    aput-object v15, v5, v14

    const/4 v14, 0x2

    invoke-virtual {v1, v3, v4, v5, v14}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 568
    :cond_4
    :goto_2
    sget-object v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v9, v1, :cond_c

    move-object v11, v9

    .line 573
    :goto_3
    sget-object v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v12, v1, :cond_5

    sget-object v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v9, v1, :cond_5

    .line 574
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v4, "EmptyPrefixedAttName"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    aput-object v15, v5, v14

    const/4 v14, 0x2

    invoke-virtual {v1, v3, v4, v5, v14}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 581
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    check-cast v1, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-virtual {v1, v11}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->containsPrefixInCurrentContext(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 582
    const-string v1, "AttributeNotUnique"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fCurrentElement:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d

    .end local v12           #uri:Ljava/lang/String;
    :goto_4
    invoke-interface {v1, v11, v12}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 591
    .local v8, declared:Z
    if-nez v8, :cond_8

    .line 593
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fXmlnsDeclared:Z

    if-eqz v1, :cond_7

    .line 594
    const-string v1, "AttributeNotUnique"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fCurrentElement:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    :cond_7
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fXmlnsDeclared:Z

    .line 642
    .end local v8           #declared:Z
    .end local v9           #localpart:Ljava/lang/String;
    .end local v11           #prefix:Ljava/lang/String;
    :cond_8
    :goto_5
    return-void

    .line 500
    .end local v2           #tmpStr:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;
    .end local v7           #isVC:Z
    .end local v13           #value:Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 522
    .restart local v2       #tmpStr:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;
    .restart local v7       #isVC:Z
    .restart local v9       #localpart:Ljava/lang/String;
    .restart local v13       #value:Ljava/lang/String;
    :cond_a
    sget-object v11, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_1

    .line 560
    .restart local v11       #prefix:Ljava/lang/String;
    .restart local v12       #uri:Ljava/lang/String;
    :cond_b
    sget-object v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v12, v1, :cond_4

    .line 561
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v4, "CantBindXML"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    aput-object v15, v5, v14

    const/4 v14, 0x2

    invoke-virtual {v1, v3, v4, v5, v14}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto/16 :goto_2

    .line 568
    :cond_c
    sget-object v11, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_3

    .line 588
    :cond_d
    const/4 v12, 0x0

    goto :goto_4

    .line 615
    .end local v9           #localpart:Ljava/lang/String;
    .end local v11           #prefix:Ljava/lang/String;
    .end local v12           #uri:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v1, :cond_10

    .line 616
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v6

    .line 617
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    sget-object v3, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->addAttributeNS(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_f
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v13, v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->setValue(ILjava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 634
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    .line 637
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 638
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto :goto_5

    .line 620
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v10

    .line 621
    .local v10, oldLen:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    sget-object v3, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->addAttribute(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 624
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v1

    if-ne v10, v1, :cond_f

    .line 625
    const-string v1, "AttributeNotUnique"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fCurrentElement:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6
.end method

.method protected scanEndElement()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 664
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->popElement()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-result-object v0

    .line 666
    .local v0, endElementName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 680
    .local v1, rawname:Ljava/lang/String;
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget-object v3, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->characters:[C

    invoke-virtual {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString([C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 681
    const-string v2, "ETagRequired"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 685
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    .line 686
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 687
    const-string v2, "ETagUnterminated"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    :cond_1
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    .line 693
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    .line 696
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityStack:[I

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityDepth:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    if-ge v2, v3, :cond_2

    .line 697
    const-string v2, "ElementEntityMismatch"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    :cond_2
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_3

    .line 716
    :cond_3
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->dtdGrammarUtil:Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;

    if-eqz v2, :cond_4

    .line 717
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->dtdGrammarUtil:Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;

    invoke-virtual {v2, v0}, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->endElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 719
    :cond_4
    iput-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fScanEndElement:Z

    .line 720
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    return v2
.end method

.method protected scanStartElement()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 213
    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fSkip:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAdd:Z

    if-nez v7, :cond_0

    .line 217
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->getNext()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-result-object v3

    .line 224
    .local v3, name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget-object v8, v3, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->characters:[C

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString([C)Z

    move-result v7

    iput-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fSkip:Z

    .line 226
    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fSkip:Z

    if-eqz v7, :cond_c

    .line 230
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->push()V

    .line 231
    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 244
    .end local v3           #name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fSkip:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAdd:Z

    if-eqz v7, :cond_2

    .line 246
    :cond_1
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->nextElement()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-result-object v7

    iput-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 248
    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v7, :cond_d

    .line 249
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanQName(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Z

    .line 268
    :cond_2
    :goto_1
    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAdd:Z

    if-eqz v7, :cond_3

    .line 270
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->matchElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Z

    .line 274
    :cond_3
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iput-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fCurrentElement:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 276
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v5, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 277
    .local v5, rawname:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v7, :cond_5

    .line 278
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    invoke-interface {v7}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->pushContext()V

    .line 279
    iget v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fScannerState:I

    const/16 v8, 0x1a

    if-ne v7, v8, :cond_5

    .line 280
    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v7, :cond_5

    .line 281
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v9, "MSG_GRAMMAR_NOT_FOUND"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 286
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 287
    :cond_4
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v9, "RootElementTypeMustMatchDoctypedecl"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 297
    :cond_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEmptyElement:Z

    .line 300
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->removeAllAttributes()V

    .line 301
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->seekCloseOfStartTag()Z

    move-result v7

    if-nez v7, :cond_7

    .line 302
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fReadingAttributes:Z

    .line 303
    const/4 v7, 0x0

    iput v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeCacheUsedCount:I

    .line 304
    const/4 v7, 0x0

    iput v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fStringBufferIndex:I

    .line 306
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAddDefaultAttr:Z

    .line 307
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fXmlnsDeclared:Z

    .line 310
    :cond_6
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {p0, v7}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->scanAttribute(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;)V

    .line 311
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->seekCloseOfStartTag()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 312
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fReadingAttributes:Z

    .line 317
    :cond_7
    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v7, :cond_13

    .line 319
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v8, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v7, v8, :cond_8

    .line 320
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v9, "ElementXMLNSPrefix"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v12, v12, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 327
    :cond_8
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v4, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 330
    .local v4, prefix:Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    invoke-interface {v8, v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 332
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fCurrentElement:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v8, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 334
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v7, :cond_9

    .line 335
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    sget-object v8, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v8, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 337
    :cond_9
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v7, :cond_a

    .line 338
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v9, "ElementPrefixUnbound"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v12, v12, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v12, v12, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 345
    :cond_a
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->getLength()I

    move-result v2

    .line 347
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v2, :cond_12

    .line 348
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v7, v1, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->getName(ILcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 350
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v0, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 352
    .local v0, aprefix:Ljava/lang/String;
    :goto_4
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    invoke-interface {v7, v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, uri:Ljava/lang/String;
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v7, v6, :cond_10

    .line 347
    :cond_b
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 234
    .end local v0           #aprefix:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v4           #prefix:Ljava/lang/String;
    .end local v5           #rawname:Ljava/lang/String;
    .end local v6           #uri:Ljava/lang/String;
    .restart local v3       #name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    :cond_c
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->reposition()V

    goto/16 :goto_0

    .line 252
    .end local v3           #name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    :cond_d
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v3, v3, v9}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scannedName:[C

    iput-object v8, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->characters:[C

    goto/16 :goto_1

    .line 327
    .end local v3           #name:Ljava/lang/String;
    .restart local v5       #rawname:Ljava/lang/String;
    :cond_e
    sget-object v4, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_2

    .line 350
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v4       #prefix:Ljava/lang/String;
    :cond_f
    sget-object v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_4

    .line 359
    .restart local v0       #aprefix:Ljava/lang/String;
    .restart local v6       #uri:Ljava/lang/String;
    :cond_10
    sget-object v7, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v0, v7, :cond_b

    .line 360
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iput-object v6, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 361
    if-nez v6, :cond_11

    .line 362
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v9, "AttributePrefixUnbound"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v12, v12, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v12, v12, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v0, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 367
    :cond_11
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v7, v1, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->setURI(ILjava/lang/String;)V

    goto :goto_5

    .line 372
    .end local v0           #aprefix:Ljava/lang/String;
    .end local v6           #uri:Ljava/lang/String;
    :cond_12
    const/4 v7, 0x1

    if-le v2, v7, :cond_13

    .line 373
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->checkDuplicatesNS()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-result-object v3

    .line 374
    .local v3, name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    if-eqz v3, :cond_13

    .line 375
    iget-object v7, v3, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v7, :cond_17

    .line 376
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v9, "AttributeNSNotUnique"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v12, v12, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v3, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, v3, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 392
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .end local v4           #prefix:Ljava/lang/String;
    :cond_13
    :goto_6
    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEmptyElement:Z

    if-eqz v7, :cond_18

    .line 394
    iget v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    .line 397
    iget v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fMarkupDepth:I

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityStack:[I

    iget v9, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEntityDepth:I

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    if-ge v7, v8, :cond_14

    .line 398
    const-string v7, "ElementEntityMismatch"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fCurrentElement:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v10, v10, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    :cond_14
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v7, :cond_15

    .line 403
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v9, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->emptyElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 408
    :cond_15
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fScanEndElement:Z

    .line 414
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->popElement()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 427
    :cond_16
    :goto_7
    iget-boolean v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fEmptyElement:Z

    return v7

    .line 382
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v3       #name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .restart local v4       #prefix:Ljava/lang/String;
    :cond_17
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v9, "AttributeNotUnique"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v12, v12, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v3, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_6

    .line 417
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .end local v4           #prefix:Ljava/lang/String;
    :cond_18
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->dtdGrammarUtil:Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;

    if-eqz v7, :cond_19

    .line 418
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->dtdGrammarUtil:Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v9, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v7, v8, v9}, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->startElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;)V

    .line 420
    :cond_19
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v7, :cond_16

    goto :goto_7
.end method
