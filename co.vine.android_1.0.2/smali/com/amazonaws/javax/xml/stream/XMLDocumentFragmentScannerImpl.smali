.class public Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;
.super Lcom/amazonaws/javax/xml/stream/XMLScanner;
.source "XMLDocumentFragmentScannerImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDocumentScanner;
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponent;
.implements Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;,
        Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;,
        Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;,
        Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;,
        Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Element;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final DEBUG_COALESCE:Z = false

.field protected static final DEBUG_CONTENT_SCANNING:Z = false

.field private static final DEBUG_DISPATCHER:Z = false

.field protected static final DEBUG_NEXT:Z = false

.field private static final DEBUG_SCANNER_STATE:Z = false

.field static final DEBUG_SKIP_ALGORITHM:Z = false

.field static final ELEMENT_ARRAY_LENGTH:S = 0xc8s

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean; = null

.field static final MAX_DEPTH_LIMIT:S = 0x5s

.field static final MAX_POINTER_AT_A_DEPTH:S = 0x4s

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object; = null

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String; = null

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String; = null

.field protected static final SCANNER_STATE_ATTRIBUTE:I = 0x1d

.field protected static final SCANNER_STATE_ATTRIBUTE_VALUE:I = 0x1e

.field protected static final SCANNER_STATE_BUILT_IN_REFS:I = 0x29

.field protected static final SCANNER_STATE_CDATA:I = 0x23

.field protected static final SCANNER_STATE_CHARACTER_DATA:I = 0x25

.field protected static final SCANNER_STATE_CHAR_REFERENCE:I = 0x28

.field protected static final SCANNER_STATE_COMMENT:I = 0x1b

.field protected static final SCANNER_STATE_CONTENT:I = 0x16

.field protected static final SCANNER_STATE_DOCTYPE:I = 0x18

.field protected static final SCANNER_STATE_END_ELEMENT_TAG:I = 0x27

.field protected static final SCANNER_STATE_END_OF_INPUT:I = 0x21

.field protected static final SCANNER_STATE_PI:I = 0x17

.field protected static final SCANNER_STATE_REFERENCE:I = 0x1c

.field protected static final SCANNER_STATE_ROOT_ELEMENT:I = 0x1a

.field protected static final SCANNER_STATE_START_ELEMENT_TAG:I = 0x26

.field protected static final SCANNER_STATE_START_OF_MARKUP:I = 0x15

.field protected static final SCANNER_STATE_TERMINATED:I = 0x22

.field protected static final SCANNER_STATE_TEXT_DECL:I = 0x24

.field protected static final SCANNER_STATE_XML_DECL:I = 0x19

.field protected static final cdata:[C

.field protected static final endTag:[C

.field protected static final xmlDecl:[C


# instance fields
.field protected dtdGrammarUtil:Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;

.field protected fAdd:Z

.field protected fAddDefaultAttr:Z

.field protected fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

.field protected fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

.field protected fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

.field protected fContentDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

.field protected fCurrentElement:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

.field private fCurrentEntityName:Ljava/lang/String;

.field protected fDeclaredEncoding:Ljava/lang/String;

.field protected fDisallowDoctype:Z

.field protected fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

.field protected fDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

.field fElementArray:[Ljava/lang/String;

.field fElementPointer:S

.field protected fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

.field protected fElementRawname:Ljava/lang/String;

.field protected fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

.field protected fElementStack2:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;

.field protected fEmptyElement:Z

.field protected fEntityStack:[I

.field protected fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

.field protected fHasExternalDTD:Z

.field protected fInScanContent:Z

.field protected fIsCoalesce:Z

.field fLastPointerLocation:S

.field protected fLastSectionWasCData:Z

.field protected fLastSectionWasCharacterData:Z

.field protected fLastSectionWasEntityReference:Z

.field protected fMarkupDepth:I

.field protected fNamespaces:Z

.field protected fNotifyBuiltInRefs:Z

.field protected fPIData:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

.field protected fPITarget:Ljava/lang/String;

.field fPointerInfo:[[S

.field protected fReplaceEntityReferences:Z

.field protected fReportCdataEvent:Z

.field protected fScanToEnd:Z

.field protected fScannerState:I

.field protected fShouldSkip:Z

.field private final fSingleChar:[C

.field protected fSkip:Z

.field protected fStandalone:Z

.field protected fStandaloneSet:Z

.field protected fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

.field protected fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

.field private fStrings:[Ljava/lang/String;

.field protected fSupportExternalEntities:Z

.field protected fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

.field protected fTempString2:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

.field fUsebuffer:Z

.field protected fVersion:Ljava/lang/String;

.field protected foundBuiltInRefs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 224
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://xml.org/sax/features/namespaces"

    aput-object v1, v0, v4

    const-string v1, "http://xml.org/sax/features/validation"

    aput-object v1, v0, v5

    const-string v1, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    aput-object v1, v0, v2

    const-string v1, "http://apache.org/xml/features/scanner/notify-char-refs"

    aput-object v1, v0, v6

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 232
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Boolean;

    aput-object v3, v0, v4

    aput-object v3, v0, v5

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v6

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 240
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v4

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v5

    const-string v1, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 247
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v3, v0, v4

    aput-object v3, v0, v5

    aput-object v3, v0, v2

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 253
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->cdata:[C

    .line 254
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->xmlDecl:[C

    .line 255
    new-array v0, v2, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->endTag:[C

    return-void

    .line 253
    nop

    :array_0
    .array-data 0x2
        0x5bt 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x41t 0x0t
        0x54t 0x0t
        0x41t 0x0t
        0x5bt 0x0t
    .end array-data

    .line 254
    nop

    :array_1
    .array-data 0x2
        0x3ct 0x0t
        0x3ft 0x0t
        0x78t 0x0t
        0x6dt 0x0t
        0x6ct 0x0t
    .end array-data

    .line 255
    nop

    :array_2
    .array-data 0x2
        0x3ct 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 430
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLScanner;-><init>()V

    .line 287
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    .line 299
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    .line 300
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCData:Z

    .line 301
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasEntityReference:Z

    .line 302
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastSectionWasCharacterData:Z

    .line 318
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;-><init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    .line 319
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;-><init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack2:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;

    .line 331
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fPIData:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    .line 339
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    .line 343
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    .line 344
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fSupportExternalEntities:Z

    .line 345
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fReportCdataEvent:Z

    .line 346
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    .line 347
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDeclaredEncoding:Ljava/lang/String;

    .line 350
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDisallowDoctype:Z

    .line 358
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->createContentDriver()Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    .line 363
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 366
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 373
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    .line 377
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    .line 380
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString2:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    .line 383
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    .line 386
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 389
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 393
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 396
    new-array v0, v3, [C

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fSingleChar:[C

    .line 397
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fCurrentEntityName:Ljava/lang/String;

    .line 400
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScanToEnd:Z

    .line 402
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;

    .line 404
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAddDefaultAttr:Z

    .line 406
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->foundBuiltInRefs:Z

    .line 414
    const/16 v0, 0xc8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    .line 416
    iput-short v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    .line 417
    iput-short v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    .line 419
    const/4 v0, 0x5

    filled-new-array {v0, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fPointerInfo:[[S

    .line 421
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    .line 422
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    .line 423
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fSkip:Z

    .line 431
    return-void
.end method

.method private handleCharacter(CLjava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V
    .locals 5
    .parameter "c"
    .parameter "entity"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1815
    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->foundBuiltInRefs:Z

    .line 1816
    invoke-virtual {p3, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1817
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    .line 1818
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fSingleChar:[C

    aput-char p1, v0, v3

    .line 1819
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    if-eqz v0, :cond_0

    .line 1820
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p2, v2, v2, v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fSingleChar:[C

    invoke-virtual {v0, v1, v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->setValues([CII)V

    .line 1823
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->characters(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1825
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    if-eqz v0, :cond_1

    .line 1826
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p2, v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1829
    :cond_1
    return-void
.end method

.method static pr(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 3114
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3115
    return-void
.end method


# virtual methods
.method addElement(Ljava/lang/String;)V
    .locals 5
    .parameter "rawname"

    .prologue
    .line 959
    iget-short v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_0

    .line 961
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    iget-short v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    aput-object p1, v2, v3

    .line 974
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    iget v2, v2, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 975
    iget-short v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    invoke-virtual {p0, v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->storePointerForADepth(S)S

    move-result v0

    .line 976
    .local v0, column:S
    if-lez v0, :cond_2

    .line 977
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    iget v2, v2, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    int-to-short v2, v2

    add-int/lit8 v3, v0, -0x1

    int-to-short v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->getElementPointer(SS)S

    move-result v1

    .line 980
    .local v1, pointer:S
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-ne p1, v2, :cond_1

    .line 981
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    .line 982
    iput-short v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    .line 984
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    iget v2, v2, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    int-to-short v2, v2

    invoke-virtual {p0, v2, v0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->resetPointer(SS)V

    .line 985
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    iget-short v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 994
    .end local v0           #column:S
    .end local v1           #pointer:S
    :cond_0
    :goto_0
    return-void

    .line 988
    .restart local v0       #column:S
    .restart local v1       #pointer:S
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    .line 992
    .end local v0           #column:S
    .end local v1           #pointer:S
    :cond_2
    iget-short v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementPointer:S

    goto :goto_0
.end method

.method canStore(SS)Z
    .locals 1
    .parameter "depth"
    .parameter "column"

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fPointerInfo:[[S

    aget-object v0, v0, p1

    aget-short v0, v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createContentDriver()Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;
    .locals 1

    .prologue
    .line 823
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$FragmentContentDriver;-><init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;)V

    return-object v0
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 797
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->endEntity(Ljava/lang/String;)V

    .line 800
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    aget v1, v1, v2

    if-eq v0, v1, :cond_0

    .line 801
    const-string v0, "MarkupEntityMismatch"

    invoke-virtual {p0, v0, v3}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScanningAttribute:Z

    if-nez v0, :cond_1

    .line 807
    const-string v0, "[xml]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 813
    :cond_1
    return-void
.end method

.method public getAttributeIterator()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;
    .locals 3

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAddDefaultAttr:Z

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->addDTDDefaultAttrs(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;)V

    .line 1394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAddDefaultAttr:Z

    .line 1396
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    return-object v0
.end method

.method public getCharacterData()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;
    .locals 1

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 899
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    goto :goto_0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentHandler()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getDriverName(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)Ljava/lang/String;
    .locals 1
    .parameter "driver"

    .prologue
    .line 1916
    const-string v0, "null"

    return-object v0
.end method

.method getElementPointer(SS)S
    .locals 1
    .parameter "depth"
    .parameter "column"

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fPointerInfo:[[S

    aget-object v0, v0, p1

    aget-short v0, v0, p2

    return v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fCurrentEntityName:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "featureId"

    .prologue
    .line 684
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 685
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    .line 689
    :goto_1
    return-object v1

    .line 684
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 689
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getPIData()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    return-object v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fPITarget:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "propertyId"

    .prologue
    .line 702
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 703
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 707
    :goto_1
    return-object v1

    .line 702
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getScannerStateName(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 1872
    packed-switch p1, :pswitch_data_0

    .line 1891
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "??? ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1873
    :pswitch_1
    const-string v0, "SCANNER_STATE_DOCTYPE"

    goto :goto_0

    .line 1874
    :pswitch_2
    const-string v0, "SCANNER_STATE_ROOT_ELEMENT"

    goto :goto_0

    .line 1875
    :pswitch_3
    const-string v0, "SCANNER_STATE_START_OF_MARKUP"

    goto :goto_0

    .line 1876
    :pswitch_4
    const-string v0, "SCANNER_STATE_COMMENT"

    goto :goto_0

    .line 1877
    :pswitch_5
    const-string v0, "SCANNER_STATE_PI"

    goto :goto_0

    .line 1878
    :pswitch_6
    const-string v0, "SCANNER_STATE_CONTENT"

    goto :goto_0

    .line 1879
    :pswitch_7
    const-string v0, "SCANNER_STATE_REFERENCE"

    goto :goto_0

    .line 1880
    :pswitch_8
    const-string v0, "SCANNER_STATE_END_OF_INPUT"

    goto :goto_0

    .line 1881
    :pswitch_9
    const-string v0, "SCANNER_STATE_TERMINATED"

    goto :goto_0

    .line 1882
    :pswitch_a
    const-string v0, "SCANNER_STATE_CDATA"

    goto :goto_0

    .line 1883
    :pswitch_b
    const-string v0, "SCANNER_STATE_TEXT_DECL"

    goto :goto_0

    .line 1884
    :pswitch_c
    const-string v0, "SCANNER_STATE_ATTRIBUTE"

    goto :goto_0

    .line 1885
    :pswitch_d
    const-string v0, "SCANNER_STATE_ATTRIBUTE_VALUE"

    goto :goto_0

    .line 1886
    :pswitch_e
    const-string v0, "SCANNER_STATE_START_ELEMENT_TAG"

    goto :goto_0

    .line 1887
    :pswitch_f
    const-string v0, "SCANNER_STATE_END_ELEMENT_TAG"

    goto :goto_0

    .line 1888
    :pswitch_10
    const-string v0, "SCANNER_STATE_CHARACTER_DATA"

    goto :goto_0

    .line 1872
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_10
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStandAlone()Z
    .locals 1

    .prologue
    .line 1405
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    return v0
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result v0

    return v0
.end method

.method public reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 6
    .parameter "propertyManager"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 551
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 555
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    .line 556
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    .line 560
    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 561
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 562
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    .line 563
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    .line 564
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fSkip:Z

    .line 565
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->clear()V

    .line 567
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    .line 568
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStandaloneSet:Z

    .line 569
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    .line 572
    const-string v5, "com.amazonaws.javax.xml.stream.isReplacingEntityReferences"

    invoke-virtual {p1, v5}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 573
    .local v0, bo:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    .line 574
    const-string v5, "com.amazonaws.javax.xml.stream.isSupportingExternalEntities"

    invoke-virtual {p1, v5}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bo:Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 575
    .restart local v0       #bo:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fSupportExternalEntities:Z

    .line 576
    const-string v5, "http://java.sun.com/xml/stream/properties/report-cdata-event"

    invoke-virtual {p1, v5}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 577
    .local v1, cdata:Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 578
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fReportCdataEvent:Z

    .line 579
    :cond_0
    const-string v5, "com.amazonaws.javax.xml.stream.isCoalescing"

    invoke-virtual {p1, v5}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 580
    .local v2, coalesce:Ljava/lang/Boolean;
    if-eqz v2, :cond_1

    .line 581
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    .line 582
    :cond_1
    iget-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v5, :cond_3

    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fReportCdataEvent:Z

    .line 585
    iget-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fIsCoalesce:Z

    if-eqz v3, :cond_4

    :goto_1
    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    .line 590
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getEntityStore()Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    move-result-object v3

    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    .line 593
    return-void

    .line 582
    :cond_3
    iget-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fReportCdataEvent:Z

    if-eqz v5, :cond_2

    move v3, v4

    goto :goto_0

    .line 585
    :cond_4
    iget-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

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
    const/4 v2, 0x0

    .line 511
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reset(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;)V

    .line 518
    :try_start_0
    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fNamespaces:Z
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_0
    :try_start_1
    const-string v1, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z
    :try_end_1
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 534
    :goto_1
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 535
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 536
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->clear()V

    .line 537
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    .line 538
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStandaloneSet:Z

    .line 539
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    .line 542
    const/16 v1, 0x16

    invoke-virtual {p0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    .line 543
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {p0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->setDriver(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 544
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getEntityStore()Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    .line 546
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    goto :goto_0

    .line 529
    .end local v0           #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    :catch_1
    move-exception v0

    .line 530
    .restart local v0       #e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    goto :goto_1
.end method

.method resetPointer(SS)V
    .locals 2
    .parameter "depth"
    .parameter "column"

    .prologue
    .line 998
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fPointerInfo:[[S

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aput-short v1, v0, p2

    .line 999
    return-void
.end method

.method protected scanAttribute(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;)V
    .locals 9
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 1430
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    if-eqz v0, :cond_3

    .line 1431
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanQName(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Z

    .line 1439
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    .line 1440
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1441
    const-string v0, "EqRequiredInAttribute"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1444
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    .line 1447
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getLength()I

    move-result v5

    .line 1449
    .local v5, oldLen:I
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    sget-object v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->addAttribute(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    if-ne v5, v0, :cond_1

    .line 1455
    const-string v0, "AttributeNotUnique"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1460
    :cond_1
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-nez v0, :cond_2

    move v6, v8

    .line 1463
    .local v6, isVC:Z
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString2:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v3, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->scanAttributeValue(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;IZ)V

    .line 1466
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    .line 1468
    invoke-interface {p1, v5, v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    .line 1471
    return-void

    .line 1434
    .end local v5           #oldLen:I
    .end local v6           #isVC:Z
    :cond_3
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v7

    .line 1435
    .local v7, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v0, v3, v7, v7, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected scanCDATASection(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;Z)Z
    .locals 7
    .parameter "contentBuffer"
    .parameter "complete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1545
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_0

    .line 1546
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->startCDATA(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1551
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v2, "]]>"

    invoke-virtual {v1, v2, p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanData(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1601
    :cond_1
    :goto_0
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1603
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    if-lez v1, :cond_2

    .line 1604
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->characters(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1608
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_3

    .line 1609
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->endCDATA(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1612
    :cond_3
    return v6

    .line 1581
    :cond_4
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v0

    .line 1582
    .local v0, c:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->isInvalidLiteral(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1583
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1586
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->scanSurrogates(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)Z

    .line 1595
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_1

    .line 1596
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->characters(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    goto :goto_0

    .line 1589
    :cond_6
    const-string v1, "InvalidCharInCDSect"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1591
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    goto :goto_1
.end method

.method protected scanCharReference()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1692
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 1693
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v1, v3}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->scanCharReferenceValue(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)I

    move-result v0

    .line 1694
    .local v0, ch:I
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1695
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1697
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_1

    .line 1698
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyCharRefs:Z

    if-eqz v1, :cond_0

    .line 1699
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fCharRefLiteral:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v3, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1703
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->characters(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1704
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyCharRefs:Z

    if-eqz v1, :cond_1

    .line 1705
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fCharRefLiteral:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1710
    :cond_1
    return-void
.end method

.method protected scanComment()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 940
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 941
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->scanComment(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V

    .line 943
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fUsebuffer:Z

    .line 944
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 947
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->comment(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 951
    :cond_0
    return-void
.end method

.method protected scanContent(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)I
    .locals 6
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x5d

    .line 1486
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    iput v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    .line 1487
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanContent(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)I

    move-result v0

    .line 1488
    .local v0, c:I
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 1489
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    iput v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    .line 1490
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1493
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 1494
    int-to-char v1, v0

    invoke-virtual {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1495
    const/4 v0, -0x1

    .line 1521
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    if-lez v1, :cond_1

    .line 1522
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->characters(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1524
    :cond_1
    return v0

    .line 1497
    :cond_2
    if-ne v0, v3, :cond_0

    .line 1500
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1504
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    .line 1509
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1510
    invoke-virtual {p1, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1511
    :goto_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1512
    invoke-virtual {p1, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_1

    .line 1514
    :cond_3
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1515
    const-string v1, "CDEndInContent"

    invoke-virtual {p0, v1, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1518
    :cond_4
    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    .line 1519
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public scanDocument(Z)Z
    .locals 1
    .parameter "complete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;)V

    .line 477
    const/4 v0, 0x1

    return v0
.end method

.method protected scanEndElement()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1633
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->popElement()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-result-object v1

    iget-object v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 1647
    .local v0, rawname:Ljava/lang/String;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1648
    const-string v1, "ETagRequired"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1652
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    .line 1653
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1654
    const-string v1, "ETagUnterminated"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1657
    :cond_1
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1660
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1663
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_2

    .line 1664
    const-string v1, "ElementEntityMismatch"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1670
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_3

    .line 1678
    :cond_3
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    return v1
.end method

.method protected scanEntityReference(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V
    .locals 8
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x29

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1723
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v6

    .line 1724
    .local v6, name:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1725
    const-string v0, "NameRequiredInReference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1727
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1728
    const-string v0, "SemicolonRequiredInReference"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v6, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1730
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    invoke-virtual {v0, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->isUnparsedEntity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1731
    const-string v0, "ReferenceToUnparsedEntity"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v6, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1733
    :cond_2
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1734
    iput-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fCurrentEntityName:Ljava/lang/String;

    .line 1737
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAmpSymbol:Ljava/lang/String;

    if-ne v6, v0, :cond_3

    .line 1738
    const/16 v0, 0x26

    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAmpSymbol:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V

    .line 1739
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    .line 1797
    :goto_0
    return-void

    .line 1742
    :cond_3
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLtSymbol:Ljava/lang/String;

    if-ne v6, v0, :cond_4

    .line 1743
    const/16 v0, 0x3c

    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLtSymbol:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V

    .line 1744
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    goto :goto_0

    .line 1747
    :cond_4
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fGtSymbol:Ljava/lang/String;

    if-ne v6, v0, :cond_5

    .line 1748
    const/16 v0, 0x3e

    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fGtSymbol:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V

    .line 1749
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    goto :goto_0

    .line 1752
    :cond_5
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fQuotSymbol:Ljava/lang/String;

    if-ne v6, v0, :cond_6

    .line 1753
    const/16 v0, 0x22

    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fQuotSymbol:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V

    .line 1754
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    goto :goto_0

    .line 1757
    :cond_6
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAposSymbol:Ljava/lang/String;

    if-ne v6, v0, :cond_7

    .line 1758
    const/16 v0, 0x27

    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAposSymbol:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->handleCharacter(CLjava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V

    .line 1759
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    goto :goto_0

    .line 1767
    :cond_7
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    invoke-virtual {v0, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->isExternalEntity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fSupportExternalEntities:Z

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    invoke-virtual {v0, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->isExternalEntity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    if-nez v0, :cond_a

    .line 1769
    :cond_9
    const/16 v0, 0x1c

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    goto :goto_0

    .line 1776
    :cond_a
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    invoke-virtual {v0, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1778
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDisallowDoctype:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fReplaceEntityReferences:Z

    if-eqz v0, :cond_b

    .line 1779
    const-string v0, "EntityNotDeclared"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v6, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1783
    :cond_b
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-nez v0, :cond_d

    .line 1784
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fValidation:Z

    if-eqz v0, :cond_c

    .line 1785
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "EntityNotDeclared"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v6, v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1795
    :cond_c
    :goto_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v0, v6, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1789
    :cond_d
    const-string v0, "EntityNotDeclared"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v6, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected scanPIData(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V
    .locals 2
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 916
    invoke-super {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->scanPIData(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V

    .line 919
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fPITarget:Ljava/lang/String;

    .line 921
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 924
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 928
    :cond_0
    return-void
.end method

.method protected scanStartElement()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1172
    iget-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    if-nez v5, :cond_0

    .line 1175
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack2:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->getNext()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-result-object v2

    .line 1182
    .local v2, name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    invoke-virtual {p0, v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->skipQElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    .line 1212
    .end local v2           #name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    :cond_0
    iget-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    if-eqz v5, :cond_7

    .line 1213
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack2:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->nextElement()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-result-object v5

    iput-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 1221
    :goto_0
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iput-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 1226
    iget-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    if-eqz v5, :cond_2

    .line 1228
    :cond_1
    iget-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    if-eqz v5, :cond_8

    .line 1229
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanQName(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Z

    .line 1240
    :cond_2
    :goto_1
    iget-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    if-eqz v5, :cond_3

    .line 1241
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack2:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->matchElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Z

    .line 1245
    :cond_3
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v3, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 1248
    .local v3, rawname:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1250
    .local v1, empty:Z
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->removeAllAttributes()V

    .line 1256
    :goto_2
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v4

    .line 1259
    .local v4, sawSpace:Z
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v0

    .line 1260
    .local v0, c:I
    if-ne v0, v7, :cond_9

    .line 1261
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 1283
    :goto_3
    if-eqz v1, :cond_e

    .line 1285
    iget v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 1287
    iget v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    if-ge v5, v6, :cond_4

    .line 1288
    const-string v5, "ElementEntityMismatch"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1293
    :cond_4
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_5

    .line 1297
    :cond_5
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->popElement()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 1307
    :cond_6
    :goto_4
    return v1

    .line 1217
    .end local v0           #c:I
    .end local v1           #empty:Z
    .end local v3           #rawname:Ljava/lang/String;
    .end local v4           #sawSpace:Z
    :cond_7
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->nextElement()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-result-object v5

    iput-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    goto :goto_0

    .line 1232
    :cond_8
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v2

    .line 1233
    .local v2, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v5, v6, v2, v2, v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scannedName:[C

    iput-object v6, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->characters:[C

    goto :goto_1

    .line 1264
    .end local v2           #name:Ljava/lang/String;
    .restart local v0       #c:I
    .restart local v1       #empty:Z
    .restart local v3       #rawname:Ljava/lang/String;
    .restart local v4       #sawSpace:Z
    :cond_9
    const/16 v5, 0x2f

    if-ne v0, v5, :cond_b

    .line 1265
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 1266
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1267
    const-string v5, "ElementUnterminated"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1270
    :cond_a
    const/4 v1, 0x1

    .line 1271
    goto :goto_3

    .line 1273
    :cond_b
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->isValidNameStartChar(I)Z

    move-result v5

    if-eqz v5, :cond_c

    if-nez v4, :cond_d

    .line 1274
    :cond_c
    const-string v5, "ElementUnterminated"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1278
    :cond_d
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    invoke-virtual {p0, v5}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->scanAttribute(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;)V

    goto/16 :goto_2

    .line 1299
    :cond_e
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_6

    goto :goto_4
.end method

.method protected scanXMLDeclOrTextDecl(Z)V
    .locals 8
    .parameter "scanningTextDecl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 850
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-super {p0, p1, v3}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->scanXMLDeclOrTextDecl(Z[Ljava/lang/String;)V

    .line 851
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    .line 854
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v2, v3, v5

    .line 855
    .local v2, version:Ljava/lang/String;
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v0, v3, v4

    .line 856
    .local v0, encoding:Ljava/lang/String;
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v1, v3, v6

    .line 857
    .local v1, standalone:Ljava/lang/String;
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDeclaredEncoding:Ljava/lang/String;

    .line 859
    if-eqz v1, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStandaloneSet:Z

    .line 860
    iget-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStandaloneSet:Z

    if-eqz v3, :cond_4

    const-string v3, "yes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    .line 863
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    iget-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->setStandalone(Z)V

    .line 867
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_0

    .line 868
    if-eqz p1, :cond_5

    .line 869
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v3, v2, v0, v7}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 876
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 877
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->setVersion(Ljava/lang/String;)V

    .line 880
    :cond_1
    if-eqz v0, :cond_2

    .line 881
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3, v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->setEncoding(Ljava/lang/String;)V

    .line 884
    :cond_2
    return-void

    :cond_3
    move v3, v5

    .line 859
    goto :goto_0

    :cond_4
    move v4, v5

    .line 860
    goto :goto_1

    .line 872
    :cond_5
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    invoke-interface {v3, v2, v0, v1, v7}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    goto :goto_2
.end method

.method public setDocumentHandler(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;)V
    .locals 0
    .parameter "documentHandler"

    .prologue
    .line 720
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    .line 721
    return-void
.end method

.method protected final setDriver(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V
    .locals 0
    .parameter "driver"

    .prologue
    .line 1857
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    .line 1863
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
    .line 622
    invoke-super {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->setFeature(Ljava/lang/String;Z)V

    .line 625
    const-string v1, "http://apache.org/xml/features/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    const-string v1, "http://apache.org/xml/features/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, feature:Ljava/lang/String;
    const-string v1, "scanner/notify-builtin-refs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    iput-boolean p2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fNotifyBuiltInRefs:Z

    .line 632
    .end local v0           #feature:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setInputSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V
    .locals 4
    .parameter "inputSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;)V

    .line 446
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    const-string v1, "$fragment$"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->startEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;ZZ)V

    .line 448
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
    .line 661
    invoke-super {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 664
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    const-string v1, "http://apache.org/xml/properties/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, property:Ljava/lang/String;
    const-string v1, "internal/entity-manager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    check-cast p2, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    .end local p2
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    .line 672
    .end local v0           #property:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected final setScannerState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1840
    iput p1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScannerState:I

    .line 1848
    return-void
.end method

.method protected skipElement()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1087
    iget-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    if-nez v3, :cond_1

    move v1, v2

    .line 1109
    :cond_0
    :goto_0
    return v1

    .line 1089
    :cond_1
    iget-short v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    if-eqz v3, :cond_3

    .line 1091
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    iget-short v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    add-int/lit8 v4, v4, 0x1

    aget-object v0, v3, v4

    .line 1092
    .local v0, rawname:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->skipFromTheBuffer(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1093
    iget-short v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    goto :goto_0

    .line 1101
    :cond_2
    iput-short v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    .line 1109
    .end local v0           #rawname:Ljava/lang/String;
    :cond_3
    iget-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->skipElement(S)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method skipElement(S)Z
    .locals 5
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1115
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    iget v4, v4, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    int-to-short v0, v4

    .line 1117
    .local v0, depth:S
    const/4 v4, 0x5

    if-le v0, v4, :cond_0

    .line 1118
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    .line 1137
    :goto_0
    return v3

    .line 1120
    :cond_0
    move v1, p1

    .local v1, i:S
    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_3

    .line 1121
    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->getElementPointer(SS)S

    move-result v2

    .line 1123
    .local v2, pointer:S
    if-nez v2, :cond_1

    .line 1124
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    goto :goto_0

    .line 1127
    :cond_1
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementArray:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->skipFromTheBuffer(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1133
    iput-short v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fLastPointerLocation:S

    .line 1134
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    goto :goto_0

    .line 1120
    :cond_2
    add-int/lit8 v4, v1, 0x1

    int-to-short v1, v4

    goto :goto_1

    .line 1137
    .end local v2           #pointer:S
    :cond_3
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    goto :goto_0
.end method

.method skipFromTheBuffer(Ljava/lang/String;)Z
    .locals 3
    .parameter "rawname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1045
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2, p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1046
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v2

    int-to-char v0, v2

    .line 1049
    .local v0, c:C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_1

    .line 1050
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementRawname:Ljava/lang/String;

    .line 1051
    const/4 v1, 0x1

    .line 1058
    .end local v0           #c:C
    :cond_1
    return v1
.end method

.method skipQElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Z
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1065
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget-object v2, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->characters:[C

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getChar(I)I

    move-result v0

    .line 1067
    .local v0, c:I
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isName(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1068
    const/4 v1, 0x0

    .line 1070
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget-object v2, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->characters:[C

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString([C)Z

    move-result v1

    goto :goto_0
.end method

.method skipQElement(Ljava/lang/String;)Z
    .locals 3
    .parameter "rawname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getChar(I)I

    move-result v0

    .line 1078
    .local v0, c:I
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isName(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1079
    const/4 v1, 0x0

    .line 1081
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1, p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public standaloneSet()Z
    .locals 1

    .prologue
    .line 1401
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStandaloneSet:Z

    return v0
.end method

.method public startEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V
    .locals 5
    .parameter "name"
    .parameter "identifier"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 753
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 754
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 755
    .local v0, entityarray:[I
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 756
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    .line 758
    .end local v0           #entityarray:[I
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityDepth:I

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    aput v3, v1, v2

    .line 760
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->startEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V

    .line 763
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    invoke-virtual {v1, p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->isEntityDeclInExternalSubset(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 764
    const-string v1, "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 770
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fScanningAttribute:Z

    if-nez v1, :cond_2

    .line 771
    const-string v1, "[xml]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 772
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 776
    :cond_2
    return-void
.end method

.method storePointerForADepth(S)S
    .locals 3
    .parameter "elementPointer"

    .prologue
    .line 1003
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;

    iget v2, v2, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    int-to-short v0, v2

    .line 1007
    .local v0, depth:S
    const/4 v1, 0x0

    .local v1, i:S
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 1009
    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->canStore(SS)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1010
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fPointerInfo:[[S

    aget-object v2, v2, v0

    aput-short p1, v2, v1

    .line 1024
    .end local v1           #i:S
    :goto_1
    return v1

    .line 1007
    .restart local v1       #i:S
    :cond_0
    add-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    goto :goto_0

    .line 1024
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method
