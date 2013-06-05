.class public Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;
.super Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;
.source "XMLDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;,
        Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;,
        Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$ContentDriver;,
        Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$DTDDriver;,
        Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;,
        Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;
    }
.end annotation


# static fields
.field public static final COMMENTSTRING:[C = null

.field protected static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field public static final DOCTYPE:[C = null

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean; = null

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object; = null

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String; = null

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String; = null

.field protected static final SCANNER_STATE_DTD_EXTERNAL:I = 0x2e

.field protected static final SCANNER_STATE_DTD_EXTERNAL_DECLS:I = 0x2f

.field protected static final SCANNER_STATE_DTD_INTERNAL_DECLS:I = 0x2d

.field protected static final SCANNER_STATE_NO_SUCH_ELEMENT_EXCEPTION:I = 0x30

.field protected static final SCANNER_STATE_PROLOG:I = 0x2b

.field protected static final SCANNER_STATE_TRAILING_MISC:I = 0x2c

.field protected static final SCANNER_STATE_XML_DECL:I = 0x2a

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field protected fBindNamespaces:Z

.field protected fDTDDecl:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

.field protected fDTDDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

.field protected fDTDScanner:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

.field protected fDoctypeName:Ljava/lang/String;

.field protected fDoctypePublicId:Ljava/lang/String;

.field protected fDoctypeSystemId:Ljava/lang/String;

.field protected fEndOfDocument:Z

.field protected fEndPos:I

.field protected fLoadExternalDTD:Z

.field protected fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

.field protected fPrologDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

.field protected fReadingAttributes:Z

.field protected fReadingDTD:Z

.field protected fScanEndElement:Z

.field protected fScannerBufferlistener:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;

.field protected fScannerLastState:I

.field protected fSeenDoctypeDecl:Z

.field protected fSeenInternalSubset:Z

.field protected fStartPos:I

.field private fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

.field private fStrings:[Ljava/lang/String;

.field protected fTrailingMiscDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

.field protected fXMLDeclDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 191
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    aput-object v1, v0, v3

    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 197
    new-array v0, v2, [Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 203
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "http://apache.org/xml/properties/internal/dtd-scanner"

    aput-object v1, v0, v3

    const-string v1, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 209
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v5, v0, v3

    aput-object v5, v0, v4

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 283
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->DOCTYPE:[C

    .line 284
    new-array v0, v2, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->COMMENTSTRING:[C

    return-void

    .line 283
    :array_0
    .array-data 0x2
        0x44t 0x0t
        0x4ft 0x0t
        0x43t 0x0t
        0x54t 0x0t
        0x59t 0x0t
        0x50t 0x0t
        0x45t 0x0t
    .end array-data

    .line 284
    nop

    :array_1
    .array-data 0x2
        0x2dt 0x0t
        0x2dt 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 293
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;-><init>()V

    .line 221
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    .line 222
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 223
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fReadingDTD:Z

    .line 242
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    .line 262
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLDeclDriver;-><init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fXMLDeclDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    .line 265
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$PrologDriver;-><init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fPrologDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    .line 268
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    .line 271
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$TrailingMiscDriver;-><init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fTrailingMiscDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    .line 272
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fStartPos:I

    .line 273
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEndPos:I

    .line 274
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fSeenInternalSubset:Z

    .line 278
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fStrings:[Ljava/lang/String;

    .line 281
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    .line 286
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fReadingAttributes:Z

    .line 287
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;-><init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fScannerBufferlistener:Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$XMLBufferListenerImpl;

    .line 293
    return-void
.end method


# virtual methods
.method protected createContentDriver()Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;
    .locals 1

    .prologue
    .line 636
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$ContentDriver;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl$ContentDriver;-><init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;)V

    return-object v0
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 603
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->endEntity(Ljava/lang/String;)V

    .line 605
    const-string v0, "[xml]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fTrailingMiscDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    if-ne v0, v1, :cond_1

    .line 613
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 622
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->endDocument(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 626
    :cond_0
    return-void

    .line 617
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "featureId"

    .prologue
    .line 526
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 527
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    .line 531
    :goto_1
    return-object v1

    .line 526
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_1
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "propertyId"

    .prologue
    .line 544
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 545
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 549
    :goto_1
    return-object v1

    .line 544
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_1
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 427
    invoke-super {p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, featureIds:[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    .line 429
    .local v2, length:I
    :goto_0
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v4, v2

    new-array v0, v4, [Ljava/lang/String;

    .line 430
    .local v0, combinedFeatureIds:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 431
    array-length v4, v1

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    :cond_0
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    sget-object v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {v4, v3, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    return-object v0

    .end local v0           #combinedFeatureIds:[Ljava/lang/String;
    .end local v2           #length:I
    :cond_1
    move v2, v3

    .line 428
    goto :goto_0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 474
    invoke-super {p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, propertyIds:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v1, v2

    .line 476
    .local v1, length:I
    :goto_0
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v4, v1

    new-array v0, v4, [Ljava/lang/String;

    .line 477
    .local v0, combinedPropertyIds:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 478
    array-length v4, v2

    invoke-static {v2, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    :cond_0
    sget-object v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    sget-object v5, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {v4, v3, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    return-object v0

    .end local v0           #combinedPropertyIds:[Ljava/lang/String;
    .end local v1           #length:I
    :cond_1
    move v1, v3

    .line 475
    goto :goto_0
.end method

.method protected getScannerStateName(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 708
    packed-switch p1, :pswitch_data_0

    .line 716
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->getScannerStateName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 709
    :pswitch_0
    const-string v0, "SCANNER_STATE_XML_DECL"

    goto :goto_0

    .line 710
    :pswitch_1
    const-string v0, "SCANNER_STATE_PROLOG"

    goto :goto_0

    .line 711
    :pswitch_2
    const-string v0, "SCANNER_STATE_TRAILING_MISC"

    goto :goto_0

    .line 712
    :pswitch_3
    const-string v0, "SCANNER_STATE_DTD_INTERNAL_DECLS"

    goto :goto_0

    .line 713
    :pswitch_4
    const-string v0, "SCANNER_STATE_DTD_EXTERNAL"

    goto :goto_0

    .line 714
    :pswitch_5
    const-string v0, "SCANNER_STATE_DTD_EXTERNAL_DECLS"

    goto :goto_0

    .line 708
    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getScannetState()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fScannerState:I

    return v0
.end method

.method public next()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 357
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fScannerLastState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fScannerLastState:I

    .line 359
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->popContext()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result v0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fScannerLastState:I

    return v0
.end method

.method public reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 3
    .parameter "propertyManager"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 316
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 318
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    .line 319
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    .line 320
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    .line 321
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    .line 322
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->reset()V

    .line 323
    const-string v0, "com.amazonaws.javax.xml.stream.supportDTD"

    invoke-virtual {p1, v0}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    .line 324
    const-string v0, "com.amazonaws.javax.xml.stream.isNamespaceAware"

    invoke-virtual {p1, v0}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fBindNamespaces:Z

    .line 326
    const-string v0, "http://java.sun.com/xml/stream/properties/ignore-external-dtd"

    invoke-virtual {p1, v0}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    .line 328
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEndOfDocument:Z

    .line 329
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 330
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fXMLDeclDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setDriver(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 331
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fSeenInternalSubset:Z

    .line 332
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 335
    :cond_0
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEndPos:I

    .line 336
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fStartPos:I

    .line 337
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 339
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 323
    goto :goto_0

    :cond_3
    move v1, v2

    .line 326
    goto :goto_1
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
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 383
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reset(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;)V

    .line 386
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    .line 387
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    .line 388
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    .line 389
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    .line 390
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->reset()V

    .line 394
    :try_start_0
    const-string v1, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fLoadExternalDTD:Z
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    :try_start_1
    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDisallowDoctype:Z
    :try_end_1
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 408
    :goto_1
    const-string v1, "http://apache.org/xml/properties/internal/dtd-scanner"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    .line 409
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEndPos:I

    .line 410
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fStartPos:I

    .line 411
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDDecl:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 415
    :cond_0
    const/16 v1, 0x2a

    invoke-virtual {p0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 416
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fXMLDeclDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {p0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setDriver(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 418
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    goto :goto_0

    .line 403
    .end local v0           #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    :catch_1
    move-exception v0

    .line 404
    .restart local v0       #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    goto :goto_1
.end method

.method protected scanDoctypeDecl(Z)Z
    .locals 8
    .parameter "ignore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 651
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    const-string v1, "MSG_SPACE_REQUIRED_BEFORE_ROOT_ELEMENT_TYPE_IN_DOCTYPEDECL"

    invoke-virtual {p0, v1, v7}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    .line 658
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 659
    const-string v1, "MSG_ROOT_ELEMENT_TYPE_REQUIRED"

    invoke-virtual {p0, v1, v7}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 663
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 664
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->scanExternalID([Ljava/lang/String;Z)V

    .line 665
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    .line 666
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    .line 667
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    .line 670
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-eqz v1, :cond_6

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fHasExternalDTD:Z

    .line 673
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 679
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 683
    :cond_3
    const/4 v0, 0x1

    .line 684
    .local v0, internalSubset:Z
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x5b

    invoke-virtual {v1, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 685
    const/4 v0, 0x0

    .line 686
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    .line 687
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x3e

    invoke-virtual {v1, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 688
    const-string v1, "DoctypedeclUnterminated"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    :cond_4
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fMarkupDepth:I

    .line 692
    :cond_5
    return v0

    .end local v0           #internalSubset:Z
    :cond_6
    move v1, v3

    .line 670
    goto :goto_0
.end method

.method protected setEndDTDScanState()V
    .locals 1

    .prologue
    .line 701
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 702
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fPrologDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setDriver(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 703
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;)V

    .line 704
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .parameter "featureId"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-super {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setFeature(Ljava/lang/String;Z)V

    .line 458
    const-string v1, "http://apache.org/xml/features/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    const-string v1, "http://apache.org/xml/features/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, feature:Ljava/lang/String;
    const-string v1, "nonvalidating/load-external-dtd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    iput-boolean p2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    .line 466
    .end local v0           #feature:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setInputSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V
    .locals 1
    .parameter "inputSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;)V

    .line 309
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->startDocumentEntity(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V

    .line 311
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 312
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
    .line 502
    invoke-super {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 505
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, property:Ljava/lang/String;
    const-string v1, "internal/dtd-scanner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    check-cast p2, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    .end local p2
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDTDScanner:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    .line 513
    .end local v0           #property:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public startEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "identifier"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 575
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->startEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V

    .line 578
    const-string v0, "[xml]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fReplaceEntityReferences:Z

    if-eqz v0, :cond_0

    .line 580
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->setScannerState(I)V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    const-string v0, "[xml]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    const/4 v3, 0x0

    invoke-interface {v0, v1, p3, v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->startDocument(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 590
    :cond_1
    return-void
.end method
