.class public Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;
.super Lcom/amazonaws/javax/xml/stream/XMLScanner;
.source "XMLDTDScannerImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponent;
.implements Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;


# static fields
.field private static final DEBUG_SCANNER_STATE:Z = false

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean; = null

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object; = null

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String; = null

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String; = null

.field protected static final SCANNER_STATE_END_OF_INPUT:I = 0x0

.field protected static final SCANNER_STATE_MARKUP_DECL:I = 0x2

.field protected static final SCANNER_STATE_TEXT_DECL:I = 0x1


# instance fields
.field private fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;

.field private fContentDepth:I

.field private fContentStack:[I

.field protected fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

.field public fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

.field private fEnumeration:[Ljava/lang/String;

.field private fEnumerationCount:I

.field private fExtEntityDepth:I

.field private fIgnoreConditionalBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

.field private fIncludeSectDepth:I

.field private fLiteral:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

.field private fLiteral2:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

.field private fMarkUpDepth:I

.field private fPEDepth:I

.field private fPEReport:[Z

.field private fPEStack:[I

.field protected fScannerState:I

.field protected fSeenExternalDTD:Z

.field protected fSeenExternalPE:Z

.field protected fStandalone:Z

.field private fStartDTDCalled:Z

.field private fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

.field private fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

.field private fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

.field private fStrings:[Ljava/lang/String;

.field nonValidatingMode:Z

.field nvGrammarInfo:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "http://xml.org/sax/features/validation"

    aput-object v1, v0, v2

    const-string v1, "http://apache.org/xml/features/scanner/notify-char-refs"

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 172
    new-array v0, v4, [Ljava/lang/Boolean;

    aput-object v5, v0, v2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 178
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v2

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v3

    const-string v1, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 185
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v5, v0, v2

    aput-object v5, v0, v3

    aput-object v5, v0, v4

    sput-object v0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x5

    .line 297
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLScanner;-><init>()V

    .line 203
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    .line 229
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;

    .line 235
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fContentStack:[I

    .line 241
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEStack:[I

    .line 245
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEReport:[Z

    .line 262
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    .line 265
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    .line 268
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 271
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 274
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    .line 277
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    .line 280
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    .line 286
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 289
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    .line 298
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;Lcom/amazonaws/javax/xml/stream/XMLEntityManager;)V
    .locals 3
    .parameter "symbolTable"
    .parameter "errorReporter"
    .parameter "entityManager"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x5

    .line 302
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLScanner;-><init>()V

    .line 203
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    .line 229
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;

    .line 235
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fContentStack:[I

    .line 241
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEStack:[I

    .line 245
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEReport:[Z

    .line 262
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    .line 265
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    .line 268
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 271
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 274
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    .line 277
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    .line 280
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    .line 286
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 289
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    .line 303
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 304
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    .line 305
    iput-object p3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    .line 307
    return-void
.end method

.method private final ensureEnumerationSize(I)V
    .locals 3
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 2165
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, p1, :cond_0

    .line 2166
    mul-int/lit8 v1, p1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 2167
    .local v0, newEnum:[Ljava/lang/String;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2168
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    .line 2170
    .end local v0           #newEnum:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static getScannerStateName(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 739
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "??? ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2175
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStartDTDCalled:Z

    .line 2176
    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    .line 2177
    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    .line 2178
    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 2179
    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    .line 2181
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStandalone:Z

    .line 2182
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    .line 2183
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fSeenExternalPE:Z

    .line 2186
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 2187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->setScannerState(I)V

    .line 2189
    new-instance v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 2191
    return-void
.end method

.method private final peekReportEntity()Z
    .locals 2

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEReport:[Z

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    add-int/lit8 v1, v1, -0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method private final popContentStack()I
    .locals 2

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fContentStack:[I

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    aget v0, v0, v1

    return v0
.end method

.method private final popPEStack()I
    .locals 2

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEStack:[I

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    aget v0, v0, v1

    return v0
.end method

.method private final pushContentStack(I)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 2119
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fContentStack:[I

    array-length v1, v1

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    if-ne v1, v2, :cond_0

    .line 2120
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 2121
    .local v0, newStack:[I
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fContentStack:[I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2122
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fContentStack:[I

    .line 2124
    .end local v0           #newStack:[I
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fContentStack:[I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    aput p1, v1, v2

    .line 2125
    return-void
.end method

.method private final pushPEStack(IZ)V
    .locals 5
    .parameter "depth"
    .parameter "report"

    .prologue
    const/4 v4, 0x0

    .line 2136
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEStack:[I

    array-length v2, v2

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    if-ne v2, v3, :cond_0

    .line 2137
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [I

    .line 2138
    .local v1, newIntStack:[I
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEStack:[I

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2139
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEStack:[I

    .line 2141
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Z

    .line 2142
    .local v0, newBooleanStack:[Z
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEReport:[Z

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2143
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEReport:[Z

    .line 2146
    .end local v0           #newBooleanStack:[Z
    .end local v1           #newIntStack:[I
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEReport:[Z

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    aput-boolean p2, v2, v3

    .line 2147
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEStack:[I

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    aput p1, v2, v3

    .line 2148
    return-void
.end method

.method private final scanAttType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "elName"
    .parameter "atName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x29

    const/16 v8, 0x28

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1342
    const/4 v3, 0x0

    .line 1343
    .local v3, type:Ljava/lang/String;
    iput v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    .line 1349
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v7, "CDATA"

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1350
    const-string v3, "CDATA"

    .line 1433
    :goto_0
    return-object v3

    .line 1352
    :cond_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v7, "IDREFS"

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1353
    const-string v3, "IDREFS"

    .line 1354
    goto :goto_0

    .line 1355
    :cond_1
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v7, "IDREF"

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1356
    const-string v3, "IDREF"

    .line 1357
    goto :goto_0

    .line 1358
    :cond_2
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v7, "ID"

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1359
    const-string v3, "ID"

    .line 1360
    goto :goto_0

    .line 1361
    :cond_3
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v7, "ENTITY"

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1362
    const-string v3, "ENTITY"

    .line 1363
    goto :goto_0

    .line 1364
    :cond_4
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v7, "ENTITIES"

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1365
    const-string v3, "ENTITIES"

    .line 1366
    goto :goto_0

    .line 1367
    :cond_5
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v7, "NMTOKENS"

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1368
    const-string v3, "NMTOKENS"

    .line 1369
    goto :goto_0

    .line 1370
    :cond_6
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v7, "NMTOKEN"

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1371
    const-string v3, "NMTOKEN"

    .line 1372
    goto :goto_0

    .line 1373
    :cond_7
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v7, "NOTATION"

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1374
    const-string v3, "NOTATION"

    .line 1376
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-nez v4, :cond_d

    move v4, v5

    :goto_1
    invoke-direct {p0, v5, v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1377
    const-string v4, "MSG_SPACE_REQUIRED_AFTER_NOTATION_IN_NOTATIONTYPE"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object p2, v7, v5

    invoke-virtual {p0, v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1381
    :cond_8
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v1

    .line 1382
    .local v1, c:I
    if-eq v1, v8, :cond_9

    .line 1383
    const-string v4, "MSG_OPEN_PAREN_REQUIRED_IN_NOTATIONTYPE"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object p2, v7, v5

    invoke-virtual {p0, v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1386
    :cond_9
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1388
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-nez v4, :cond_e

    move v4, v5

    :goto_2
    invoke-direct {p0, v6, v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1389
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v0

    .line 1390
    .local v0, aName:Ljava/lang/String;
    if-nez v0, :cond_b

    .line 1391
    const-string v4, "MSG_NAME_REQUIRED_IN_NOTATIONTYPE"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object p2, v7, v5

    invoke-virtual {p0, v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1394
    :cond_b
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->ensureEnumerationSize(I)V

    .line 1395
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    iget v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    aput-object v0, v4, v7

    .line 1396
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-nez v4, :cond_f

    move v4, v5

    :goto_3
    invoke-direct {p0, v6, v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1397
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v1

    .line 1398
    const/16 v4, 0x7c

    if-eq v1, v4, :cond_a

    .line 1399
    if-eq v1, v10, :cond_c

    .line 1400
    const-string v4, "NotationTypeUnterminated"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object p2, v7, v5

    invoke-virtual {p0, v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1403
    :cond_c
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    goto/16 :goto_0

    .end local v0           #aName:Ljava/lang/String;
    .end local v1           #c:I
    :cond_d
    move v4, v6

    .line 1376
    goto/16 :goto_1

    .restart local v1       #c:I
    :cond_e
    move v4, v6

    .line 1388
    goto :goto_2

    .restart local v0       #aName:Ljava/lang/String;
    :cond_f
    move v4, v6

    .line 1396
    goto :goto_3

    .line 1406
    .end local v0           #aName:Ljava/lang/String;
    .end local v1           #c:I
    :cond_10
    const-string v3, "ENUMERATION"

    .line 1408
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v1

    .line 1409
    .restart local v1       #c:I
    if-eq v1, v8, :cond_11

    .line 1411
    const-string v4, "AttTypeRequiredInAttDef"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object p2, v7, v5

    invoke-virtual {p0, v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1414
    :cond_11
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1416
    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-nez v4, :cond_15

    move v4, v5

    :goto_4
    invoke-direct {p0, v6, v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1417
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanNmtoken()Ljava/lang/String;

    move-result-object v2

    .line 1418
    .local v2, token:Ljava/lang/String;
    if-nez v2, :cond_13

    .line 1419
    const-string v4, "MSG_NMTOKEN_REQUIRED_IN_ENUMERATION"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object p2, v7, v5

    invoke-virtual {p0, v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1422
    :cond_13
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->ensureEnumerationSize(I)V

    .line 1423
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    iget v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    aput-object v2, v4, v7

    .line 1424
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-nez v4, :cond_16

    move v4, v5

    :goto_5
    invoke-direct {p0, v6, v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1425
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v1

    .line 1426
    const/16 v4, 0x7c

    if-eq v1, v4, :cond_12

    .line 1427
    if-eq v1, v10, :cond_14

    .line 1428
    const-string v4, "EnumerationUnterminated"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object p2, v7, v5

    invoke-virtual {p0, v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1431
    :cond_14
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    goto/16 :goto_0

    .end local v2           #token:Ljava/lang/String;
    :cond_15
    move v4, v6

    .line 1416
    goto :goto_4

    .restart local v2       #token:Ljava/lang/String;
    :cond_16
    move v4, v6

    .line 1424
    goto :goto_5
.end method

.method private final scanChildren(Ljava/lang/String;)V
    .locals 11
    .parameter "elName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x7c

    const/16 v9, 0x2c

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 1066
    iput v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    .line 1067
    invoke-direct {p0, v6}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->pushContentStack(I)V

    .line 1068
    const/4 v2, 0x0

    .line 1071
    .local v2, currentOp:I
    :goto_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v7, 0x28

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1072
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1073
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v7, 0x28

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1075
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_0

    .line 1076
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->startGroup(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1079
    :cond_0
    invoke-direct {p0, v2}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->pushContentStack(I)V

    .line 1080
    const/4 v2, 0x0

    .line 1081
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_1
    invoke-direct {p0, v6, v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    .line 1084
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_2
    invoke-direct {p0, v6, v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1085
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v1

    .line 1086
    .local v1, childName:Ljava/lang/String;
    if-nez v1, :cond_4

    .line 1087
    const-string v4, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1187
    :goto_3
    return-void

    .end local v1           #childName:Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 1084
    goto :goto_2

    .line 1092
    .restart local v1       #childName:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_5

    .line 1093
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v1, v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->element(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1095
    :cond_5
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1096
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v0

    .line 1097
    .local v0, c:I
    const/16 v4, 0x3f

    if-eq v0, v4, :cond_6

    const/16 v4, 0x2a

    if-eq v0, v4, :cond_6

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_8

    .line 1099
    :cond_6
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_7

    .line 1101
    const/16 v4, 0x3f

    if-ne v0, v4, :cond_a

    .line 1102
    const/4 v3, 0x2

    .line 1110
    .local v3, oc:S
    :goto_4
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v3, v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1112
    .end local v3           #oc:S
    :cond_7
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 1113
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    int-to-char v7, v0

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1116
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-nez v4, :cond_c

    move v4, v5

    :goto_5
    invoke-direct {p0, v6, v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1117
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v0

    .line 1118
    if-ne v0, v9, :cond_d

    if-eq v2, v10, :cond_d

    .line 1119
    move v2, v0

    .line 1121
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_9

    .line 1122
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v5, v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->separator(SLcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1125
    :cond_9
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 1126
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v9}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1190
    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-nez v4, :cond_16

    move v4, v5

    :goto_7
    invoke-direct {p0, v6, v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto/16 :goto_0

    .line 1104
    :cond_a
    const/16 v4, 0x2a

    if-ne v0, v4, :cond_b

    .line 1105
    const/4 v3, 0x3

    .line 1106
    .restart local v3       #oc:S
    goto :goto_4

    .line 1108
    .end local v3           #oc:S
    :cond_b
    const/4 v3, 0x4

    .restart local v3       #oc:S
    goto :goto_4

    .end local v3           #oc:S
    :cond_c
    move v4, v6

    .line 1116
    goto :goto_5

    .line 1129
    :cond_d
    if-ne v0, v10, :cond_f

    if-eq v2, v9, :cond_f

    .line 1130
    move v2, v0

    .line 1132
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_e

    .line 1133
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v6, v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->separator(SLcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1136
    :cond_e
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 1137
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v10}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_6

    .line 1140
    :cond_f
    const/16 v4, 0x29

    if-eq v0, v4, :cond_10

    .line 1141
    const-string v4, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p1, v7, v6

    invoke-virtual {p0, v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1145
    :cond_10
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_11

    .line 1146
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1149
    :cond_11
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->popContentStack()I

    move-result v2

    .line 1156
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v7, ")?"

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1157
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const-string v7, ")?"

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1159
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_12

    .line 1160
    const/4 v3, 0x2

    .line 1161
    .restart local v3       #oc:S
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v3, v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1185
    .end local v3           #oc:S
    :cond_12
    :goto_8
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1186
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fContentDepth:I

    if-nez v4, :cond_8

    goto/16 :goto_3

    .line 1164
    :cond_13
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v7, ")+"

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1165
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const-string v7, ")+"

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1167
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_12

    .line 1168
    const/4 v3, 0x4

    .line 1169
    .restart local v3       #oc:S
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v3, v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    goto :goto_8

    .line 1172
    .end local v3           #oc:S
    :cond_14
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v7, ")*"

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1173
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const-string v7, ")*"

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1175
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_12

    .line 1176
    const/4 v3, 0x3

    .line 1177
    .restart local v3       #oc:S
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v3, v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    goto :goto_8

    .line 1182
    .end local v3           #oc:S
    :cond_15
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    .line 1183
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v7, 0x29

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_8

    :cond_16
    move v4, v6

    .line 1190
    goto/16 :goto_7
.end method

.method private final scanConditionalSect(I)V
    .locals 12
    .parameter "currPEDepth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x5b

    const/16 v10, 0x5d

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1864
    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1865
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    invoke-direct {p0, v4, v2}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1867
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v5, "INCLUDE"

    invoke-virtual {v2, v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1868
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_1
    invoke-direct {p0, v4, v2}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1869
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    if-eq p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v2, :cond_0

    .line 1870
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "INVALID_PE_IN_CONDITIONAL"

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->name:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {v2, v5, v6, v7, v3}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1876
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2, v11}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1877
    const-string v2, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v2, v9}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1880
    :cond_1
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_2

    .line 1881
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, v4, v9}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->startConditional(SLcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1884
    :cond_2
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    .line 1886
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1981
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v2, v4

    .line 1865
    goto :goto_0

    :cond_5
    move v2, v4

    .line 1868
    goto :goto_1

    .line 1888
    :cond_6
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v5, "IGNORE"

    invoke-virtual {v2, v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1889
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v3

    :goto_3
    invoke-direct {p0, v4, v2}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1890
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    if-eq p1, v2, :cond_7

    iget-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v2, :cond_7

    .line 1891
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "INVALID_PE_IN_CONDITIONAL"

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->name:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {v2, v5, v6, v7, v3}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 1897
    :cond_7
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_8

    .line 1898
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, v3, v9}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->startConditional(SLcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1901
    :cond_8
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2, v11}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1902
    const-string v2, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v2, v9}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1904
    :cond_9
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1905
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    .line 1906
    .local v1, initialDepth:I
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_a

    .line 1907
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 1910
    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1911
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_b

    .line 1912
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1918
    :cond_b
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1919
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2, v11}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1920
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_c

    .line 1921
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const-string v3, "!["

    invoke-virtual {v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1923
    :cond_c
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    goto :goto_4

    .end local v1           #initialDepth:I
    :cond_d
    move v2, v4

    .line 1889
    goto :goto_3

    .line 1925
    .restart local v1       #initialDepth:I
    :cond_e
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_a

    .line 1926
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const-string v3, "!"

    invoke-virtual {v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_4

    .line 1931
    :cond_f
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1932
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_10

    .line 1933
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v10}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1938
    :cond_10
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1939
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_11

    .line 1940
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v10}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1942
    :cond_11
    :goto_5
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1944
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_11

    .line 1945
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v10}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_5

    .line 1948
    :cond_12
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1949
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    if-ne v2, v1, :cond_13

    .line 1950
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1952
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_3

    .line 1953
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->setValues([CII)V

    .line 1955
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-interface {v2, v3, v9}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->ignoredCharacters(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1956
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, v9}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->endConditional(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    goto/16 :goto_2

    .line 1959
    :cond_13
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_a

    .line 1960
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    .line 1966
    :cond_14
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v0

    .line 1967
    .local v0, c:I
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    if-nez v2, :cond_15

    .line 1968
    const-string v2, "IgnoreSectUnterminated"

    invoke-virtual {p0, v2, v9}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1971
    :cond_15
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_a

    .line 1972
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    .line 1978
    .end local v0           #c:I
    .end local v1           #initialDepth:I
    :cond_16
    const-string v2, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v2, v9}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method private final scanEntityDecl()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1499
    const/4 v6, 0x0

    .line 1500
    .local v6, isPEDecl:Z
    const/4 v8, 0x0

    .line 1501
    .local v8, sawPERef:Z
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1502
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1503
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v10, 0x25

    invoke-virtual {v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1504
    const/4 v6, 0x0

    .line 1539
    :goto_0
    if-eqz v8, :cond_1

    .line 1541
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v7

    .line 1542
    .local v7, peName:Ljava/lang/String;
    if-nez v7, :cond_16

    .line 1543
    const-string v0, "NameRequiredInPEReference"

    const/4 v10, 0x0

    invoke-virtual {p0, v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1552
    :goto_2
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    .line 1553
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v10, 0x25

    invoke-virtual {v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1566
    .end local v7           #peName:Ljava/lang/String;
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v1

    .line 1567
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1568
    const-string v0, "MSG_ENTITY_NAME_REQUIRED_IN_ENTITYDECL"

    const/4 v10, 0x0

    invoke-virtual {p0, v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1572
    :cond_2
    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_4
    invoke-direct {p0, v10, v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1573
    const-string v0, "MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {p0, v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1578
    :cond_3
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p0, v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanExternalID([Ljava/lang/String;Z)V

    .line 1579
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v3, v0, v10

    .line 1580
    .local v3, systemId:Ljava/lang/String;
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v2, v0, v10

    .line 1582
    .local v2, publicId:Ljava/lang/String;
    if-eqz v6, :cond_4

    if-eqz v3, :cond_4

    .line 1583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fSeenExternalPE:Z

    .line 1586
    :cond_4
    const/4 v5, 0x0

    .line 1588
    .local v5, notation:Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_5
    invoke-direct {p0, v10, v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v9

    .line 1589
    .local v9, sawSpace:Z
    if-nez v6, :cond_7

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v10, "NDATA"

    invoke-virtual {v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1591
    if-nez v9, :cond_5

    .line 1592
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_NDATA_IN_UNPARSED_ENTITYDECL"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {p0, v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1597
    :cond_5
    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_6
    invoke-direct {p0, v10, v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1598
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_UNPARSED_ENTITYDECL"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {p0, v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1601
    :cond_6
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v5

    .line 1602
    if-nez v5, :cond_7

    .line 1603
    const-string v0, "MSG_NOTATION_NAME_REQUIRED_FOR_UNPARSED_ENTITYDECL"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {p0, v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1609
    :cond_7
    if-nez v3, :cond_8

    .line 1610
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {p0, v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanEntityValue(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 1613
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 1614
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 1615
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    iget-object v10, v10, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->ch:[C

    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    iget-object v12, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    iget v12, v12, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v10, v11, v12}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1616
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    iget-object v10, v10, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->ch:[C

    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    iget v11, v11, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    iget-object v12, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    iget v12, v12, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v10, v11, v12}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1620
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_7
    invoke-direct {p0, v10, v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1623
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v10, 0x3e

    invoke-virtual {v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1624
    const-string v0, "EntityDeclUnterminated"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {p0, v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1626
    :cond_9
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1629
    if-eqz v6, :cond_a

    .line 1630
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "%"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1632
    :cond_a
    if-eqz v3, :cond_21

    .line 1633
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    .line 1634
    .local v4, baseSystemId:Ljava/lang/String;
    if-eqz v5, :cond_1f

    .line 1635
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    :goto_8
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_b

    .line 1643
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    invoke-static {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v2, v3, v4, v10}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    if-eqz v5, :cond_20

    .line 1646
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    const/4 v11, 0x0

    invoke-interface {v0, v1, v10, v5, v11}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1660
    .end local v4           #baseSystemId:Ljava/lang/String;
    :cond_b
    :goto_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1662
    return-void

    .line 1506
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #publicId:Ljava/lang/String;
    .end local v3           #systemId:Ljava/lang/String;
    .end local v5           #notation:Ljava/lang/String;
    .end local v9           #sawSpace:Z
    :cond_c
    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_a
    invoke-direct {p0, v10, v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1508
    const/4 v6, 0x1

    .line 1509
    goto/16 :goto_0

    .line 1506
    :cond_d
    const/4 v0, 0x0

    goto :goto_a

    .line 1510
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1511
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_ENTITYDECL"

    const/4 v10, 0x0

    invoke-virtual {p0, v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1513
    const/4 v6, 0x1

    .line 1514
    goto/16 :goto_0

    .line 1515
    :cond_f
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v0

    const/16 v10, 0x25

    if-ne v0, v10, :cond_11

    .line 1517
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_b
    invoke-direct {p0, v10, v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1518
    const/4 v6, 0x1

    .line 1519
    goto/16 :goto_0

    .line 1517
    :cond_10
    const/4 v0, 0x0

    goto :goto_b

    .line 1521
    :cond_11
    const/4 v8, 0x1

    .line 1523
    goto/16 :goto_0

    .line 1524
    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v10, 0x25

    invoke-virtual {v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1526
    :cond_13
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_ENTITYDECL"

    const/4 v10, 0x0

    invoke-virtual {p0, v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1528
    const/4 v6, 0x0

    .line 1529
    goto/16 :goto_0

    .line 1530
    :cond_14
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1532
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_PERCENT_IN_PEDECL"

    const/4 v10, 0x0

    invoke-virtual {p0, v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1534
    const/4 v6, 0x0

    .line 1535
    goto/16 :goto_0

    .line 1537
    :cond_15
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1545
    .restart local v7       #peName:Ljava/lang/String;
    :cond_16
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v10, 0x3b

    invoke-virtual {v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1546
    const-string v0, "SemicolonRequiredInPEReference"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {p0, v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1550
    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p0, v7, v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1555
    :cond_18
    if-nez v6, :cond_0

    .line 1556
    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_c
    invoke-direct {p0, v10, v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1557
    const/4 v6, 0x1

    .line 1558
    goto/16 :goto_3

    .line 1556
    :cond_19
    const/4 v0, 0x0

    goto :goto_c

    .line 1560
    :cond_1a
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v10, 0x25

    invoke-virtual {v0, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v6

    goto/16 :goto_1

    .line 1572
    .end local v7           #peName:Ljava/lang/String;
    .restart local v1       #name:Ljava/lang/String;
    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 1588
    .restart local v2       #publicId:Ljava/lang/String;
    .restart local v3       #systemId:Ljava/lang/String;
    .restart local v5       #notation:Ljava/lang/String;
    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 1597
    .restart local v9       #sawSpace:Z
    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 1620
    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 1638
    .restart local v4       #baseSystemId:Ljava/lang/String;
    :cond_1f
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1650
    :cond_20
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    const/4 v11, 0x0

    invoke-interface {v0, v1, v10, v11}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->externalEntityDecl(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    goto/16 :goto_9

    .line 1655
    .end local v4           #baseSystemId:Ljava/lang/String;
    :cond_21
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v10}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_b

    .line 1657
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v11, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/4 v12, 0x0

    invoke-interface {v0, v1, v10, v11, v12}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->internalEntityDecl(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    goto/16 :goto_9
.end method

.method private final scanMixed(Ljava/lang/String;)V
    .locals 8
    .parameter "elName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x7c

    const/16 v6, 0x29

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 987
    const/4 v0, 0x0

    .line 989
    .local v0, childName:Ljava/lang/String;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const-string v4, "#PCDATA"

    invoke-virtual {v1, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 991
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_0

    .line 992
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v1, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->pcdata(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 994
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    invoke-direct {p0, v3, v1}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 995
    :goto_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 996
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 998
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_1

    .line 999
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v1, v3, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->separator(SLcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1002
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    invoke-direct {p0, v3, v1}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1004
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v0

    .line 1005
    if-nez v0, :cond_2

    .line 1006
    const-string v1, "MSG_ELEMENT_TYPE_REQUIRED_IN_MIXED_CONTENT"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-virtual {p0, v1, v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1009
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1011
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_3

    .line 1012
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v1, v0, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->element(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1014
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-direct {p0, v3, v1}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto :goto_1

    :cond_4
    move v1, v3

    .line 994
    goto :goto_0

    :cond_5
    move v1, v3

    .line 1002
    goto :goto_2

    :cond_6
    move v1, v3

    .line 1014
    goto :goto_3

    .line 1020
    :cond_7
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v4, ")*"

    invoke-virtual {v1, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1021
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const-string v2, ")*"

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1023
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_8

    .line 1024
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v1, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1025
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1044
    :cond_8
    :goto_4
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1046
    return-void

    .line 1029
    :cond_9
    if-eqz v0, :cond_a

    .line 1030
    const-string v1, "MixedContentUnterminated"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 1033
    :cond_a
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1034
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1036
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_8

    .line 1037
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v1, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    goto :goto_4

    .line 1041
    :cond_b
    const-string v1, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method private final scanNotationDecl()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1794
    iput-boolean v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1795
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v5

    :goto_0
    invoke-direct {p0, v5, v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1796
    const-string v4, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_NOTATIONDECL"

    invoke-virtual {p0, v4, v8}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1801
    :cond_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v1

    .line 1802
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1803
    const-string v4, "MSG_NOTATION_NAME_REQUIRED_IN_NOTATIONDECL"

    invoke-virtual {p0, v4, v8}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1808
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v5

    :goto_1
    invoke-direct {p0, v5, v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1809
    const-string v4, "MSG_SPACE_REQUIRED_AFTER_NOTATION_NAME_IN_NOTATIONDECL"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v1, v7, v6

    invoke-virtual {p0, v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1814
    :cond_2
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanExternalID([Ljava/lang/String;Z)V

    .line 1815
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v3, v4, v6

    .line 1816
    .local v3, systemId:Ljava/lang/String;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v2, v4, v5

    .line 1817
    .local v2, publicId:Ljava/lang/String;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    .line 1819
    .local v0, baseSystemId:Ljava/lang/String;
    if-nez v3, :cond_3

    if-nez v2, :cond_3

    .line 1820
    const-string v4, "ExternalIDorPublicIDRequired"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v1, v7, v6

    invoke-virtual {p0, v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1825
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v5

    :goto_2
    invoke-direct {p0, v6, v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1828
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v7, 0x3e

    invoke-virtual {v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1829
    const-string v4, "NotationDeclUnterminated"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v1, v7, v6

    invoke-virtual {p0, v4, v7}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1831
    :cond_4
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1833
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    invoke-static {v3, v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v3, v0, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    iget-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v4, v1, v6, v8}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->notationDecl(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1836
    :cond_5
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_6

    .line 1839
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fResourceIdentifier:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLResourceIdentifierImpl;

    invoke-interface {v4, v1, v6, v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1841
    :cond_6
    iput-boolean v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1843
    return-void

    .end local v0           #baseSystemId:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #publicId:Ljava/lang/String;
    .end local v3           #systemId:Ljava/lang/String;
    :cond_7
    move v4, v6

    .line 1795
    goto/16 :goto_0

    .restart local v1       #name:Ljava/lang/String;
    :cond_8
    move v4, v6

    .line 1808
    goto :goto_1

    .restart local v0       #baseSystemId:Ljava/lang/String;
    .restart local v2       #publicId:Ljava/lang/String;
    .restart local v3       #systemId:Ljava/lang/String;
    :cond_9
    move v4, v6

    .line 1825
    goto :goto_2
.end method

.method private skipSeparator(ZZ)Z
    .locals 8
    .parameter "spaceRequired"
    .parameter "lookForPERefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x25

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2093
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    .line 2094
    .local v0, depth:I
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v2

    .line 2095
    .local v2, sawSpace:Z
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2096
    :cond_0
    if-eqz p1, :cond_1

    if-nez v2, :cond_1

    iget v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    if-eq v0, v5, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    move v4, v3

    .line 2110
    :goto_0
    return v4

    .line 2099
    :cond_3
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v1

    .line 2100
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_5

    .line 2101
    const-string v5, "NameRequiredInPEReference"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2107
    :cond_4
    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    .line 2108
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    .line 2109
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 2103
    :cond_5
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2104
    const-string v5, "SemicolonRequiredInPEReference"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public endEntity(Ljava/lang/String;)V
    .locals 11
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 645
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->endEntity(Ljava/lang/String;)V

    .line 649
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    if-nez v3, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 654
    .local v1, reportEntity:Z
    const-string v3, "%"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 655
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->peekReportEntity()Z

    move-result v1

    .line 657
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->popPEStack()I

    move-result v2

    .line 660
    .local v2, startMarkUpDepth:I
    if-nez v2, :cond_2

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    if-ge v2, v3, :cond_2

    .line 662
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v5, "ILL_FORMED_PARAMETER_ENTITY_WHEN_USED_IN_DECL"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->name:Ljava/lang/String;

    aput-object v7, v6, v9

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 667
    :cond_2
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    if-eq v2, v3, :cond_3

    .line 668
    const/4 v1, 0x0

    .line 669
    iget-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v3, :cond_3

    .line 672
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v5, "ImproperDeclarationNesting"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p1, v6, v9

    invoke-virtual {v3, v4, v5, v6, v10}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 678
    :cond_3
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 679
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    .line 684
    .end local v2           #startMarkUpDepth:I
    :cond_4
    const-string v3, "[dtd]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 685
    .local v0, dtdEntity:Z
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 686
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    invoke-interface {v3, p1, v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->endParameterEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 690
    :cond_5
    if-eqz v0, :cond_0

    .line 691
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    if-eqz v3, :cond_6

    .line 692
    const-string v3, "IncludeSectUnterminated"

    invoke-virtual {p0, v3, v8}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    :cond_6
    iput v9, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    .line 696
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->endExternalSubset()V

    .line 697
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_7

    .line 698
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    invoke-interface {v3, v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->endExternalSubset(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 699
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    invoke-interface {v3, v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->endDTD(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 701
    :cond_7
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    goto/16 :goto_0
.end method

.method public getDTDContentModelHandler()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    return-object v0
.end method

.method public getDTDHandler()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "featureId"

    .prologue
    .line 511
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 512
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    .line 516
    :goto_1
    return-object v1

    .line 511
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getGrammar()Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;
    .locals 1

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "propertyId"

    .prologue
    .line 529
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 530
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    sget-object v1, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 534
    :goto_1
    return-object v1

    .line 529
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    sget-object v0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->init()V

    .line 466
    return-void
.end method

.method public reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 4
    .parameter "props"

    .prologue
    const/4 v3, 0x0

    .line 469
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->setPropertyManager(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 470
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 472
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fAttributeCacheInitDone:Z

    if-nez v1, :cond_1

    .line 473
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->initialCacheCount:I

    if-ge v0, v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->attributeValueCache:Ljava/util/ArrayList;

    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->stringBufferCache:Ljava/util/ArrayList;

    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fAttributeCacheInitDone:Z

    .line 479
    .end local v0           #i:I
    :cond_1
    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBufferIndex:I

    .line 480
    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fAttributeCacheUsedCount:I

    .line 481
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->init()V

    .line 482
    return-void
.end method

.method public reset(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;)V
    .locals 0
    .parameter "componentManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->reset(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;)V

    .line 458
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->init()V

    .line 460
    return-void
.end method

.method protected final scanAttDefaultDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)Ljava/lang/String;
    .locals 8
    .parameter "elName"
    .parameter "atName"
    .parameter "type"
    .parameter "defaultVal"
    .parameter "nonNormalizedDefaultVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1454
    const/4 v7, 0x0

    .line 1455
    .local v7, defaultType:Ljava/lang/String;
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->clear()V

    .line 1456
    invoke-virtual {p4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->clear()V

    .line 1457
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v2, "#REQUIRED"

    invoke-virtual {v0, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1458
    const-string v7, "#REQUIRED"

    .line 1477
    :goto_0
    return-object v7

    .line 1460
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v2, "#IMPLIED"

    invoke-virtual {v0, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1461
    const-string v7, "#IMPLIED"

    .line 1462
    goto :goto_0

    .line 1464
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v2, "#FIXED"

    invoke-virtual {v0, v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1465
    const-string v7, "#FIXED"

    .line 1467
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1468
    const-string v0, "MSG_SPACE_REQUIRED_AFTER_FIXED_IN_DEFAULTDECL"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1473
    :cond_2
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStandalone:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fSeenExternalPE:Z

    if-eqz v0, :cond_5

    :cond_3
    move v6, v1

    .line 1474
    .local v6, isVC:Z
    :goto_2
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fAttributes:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanAttributeValue(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;IZ)V

    goto :goto_0

    .end local v6           #isVC:Z
    :cond_4
    move v0, v5

    .line 1467
    goto :goto_1

    :cond_5
    move v6, v5

    .line 1473
    goto :goto_2
.end method

.method protected final scanAttlistDecl()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1208
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v6, v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ATTLISTDECL"

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v1

    .line 1215
    .local v1, elName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1216
    const-string v0, "MSG_ELEMENT_TYPE_REQUIRED_IN_ATTLISTDECL"

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1221
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    .line 1222
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    const/4 v6, 0x0

    invoke-interface {v0, v1, v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->startAttlist(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1226
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v6, v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1228
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v6, 0x3e

    invoke-virtual {v0, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1231
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_3

    .line 1232
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->endAttlist(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1234
    :cond_3
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1314
    :goto_2
    return-void

    .line 1208
    .end local v1           #elName:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1226
    .restart local v1       #elName:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 1238
    :cond_6
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ATTRIBUTE_NAME_IN_ATTDEF"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {p0, v0, v6}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1244
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v6, 0x3e

    invoke-virtual {v0, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1245
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v2

    .line 1246
    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_8

    .line 1247
    const-string v0, "AttNameRequiredInAttDef"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {p0, v0, v6}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1251
    :cond_8
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_4
    invoke-direct {p0, v6, v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1252
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ATTTYPE_IN_ATTDEF"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {p0, v0, v6}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1256
    :cond_9
    invoke-direct {p0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanAttType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1259
    .local v3, type:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    invoke-direct {p0, v6, v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1260
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_DEFAULTDECL_IN_ATTDEF"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {p0, v0, v6}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1265
    :cond_a
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanAttDefaultDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)Ljava/lang/String;

    move-result-object v5

    .line 1271
    .local v5, defaultType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1272
    .local v4, enumr:[Ljava/lang/String;
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    if-eqz v0, :cond_c

    .line 1273
    :cond_b
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    if-eqz v0, :cond_c

    .line 1274
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    new-array v4, v0, [Ljava/lang/String;

    .line 1275
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEnumerationCount:I

    invoke-static {v0, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1282
    :cond_c
    if-eqz v5, :cond_12

    const-string v0, "#REQUIRED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "#IMPLIED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1284
    :cond_d
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_e

    .line 1285
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1288
    :cond_e
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    if-eqz v0, :cond_f

    .line 1289
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1304
    :cond_f
    :goto_6
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_7
    invoke-direct {p0, v6, v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto/16 :goto_3

    .line 1251
    .end local v3           #type:Ljava/lang/String;
    .end local v4           #enumr:[Ljava/lang/String;
    .end local v5           #defaultType:Ljava/lang/String;
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 1259
    .restart local v3       #type:Ljava/lang/String;
    :cond_11
    const/4 v0, 0x0

    goto :goto_5

    .line 1295
    .restart local v4       #enumr:[Ljava/lang/String;
    .restart local v5       #defaultType:Ljava/lang/String;
    :cond_12
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_13

    .line 1296
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1299
    :cond_13
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    if-eqz v0, :cond_f

    .line 1300
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fLiteral2:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    goto :goto_6

    .line 1304
    :cond_14
    const/4 v0, 0x0

    goto :goto_7

    .line 1308
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/String;
    .end local v4           #enumr:[Ljava/lang/String;
    .end local v5           #defaultType:Ljava/lang/String;
    :cond_15
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_16

    .line 1309
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->endAttlist(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 1311
    :cond_16
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    goto/16 :goto_2
.end method

.method protected final scanComment()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 863
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 864
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanComment(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V

    .line 865
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 868
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->comment(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 871
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 873
    return-void
.end method

.method public scanDTDExternalSubset(Z)Z
    .locals 4
    .parameter "complete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 353
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v3, p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;)V

    .line 354
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    if-ne v3, v2, :cond_2

    .line 355
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    .line 356
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanTextDecl()Z

    move-result v0

    .line 357
    .local v0, textDecl:Z
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    if-nez v3, :cond_1

    .line 377
    .end local v0           #textDecl:Z
    :cond_0
    :goto_0
    return v1

    .line 363
    .restart local v0       #textDecl:Z
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->setScannerState(I)V

    .line 364
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    move v1, v2

    .line 365
    goto :goto_0

    .line 371
    .end local v0           #textDecl:Z
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanDecls(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    if-nez p1, :cond_2

    move v1, v2

    .line 377
    goto :goto_0
.end method

.method public scanDTDInternalSubset(ZZZ)Z
    .locals 4
    .parameter "complete"
    .parameter "standalone"
    .parameter "hasExternalSubset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 406
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getEntityReader()Lcom/amazonaws/javax/xml/stream/XMLEntityReader;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    .line 407
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;)V

    .line 408
    iput-boolean p2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStandalone:Z

    .line 410
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    if-ne v0, v1, :cond_2

    .line 412
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-interface {v0, v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->startDTD(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 414
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStartDTDCalled:Z

    .line 417
    :cond_0
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    if-eqz v0, :cond_1

    .line 418
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStartDTDCalled:Z

    .line 419
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->startDTD(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 422
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->setScannerState(I)V

    .line 426
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanDecls(Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 428
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_3

    if-nez p3, :cond_3

    .line 429
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->endDTD(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 431
    :cond_3
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    if-eqz v0, :cond_4

    if-nez p3, :cond_4

    .line 432
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    invoke-virtual {v0, v3}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->endDTD(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 435
    :cond_4
    invoke-virtual {p0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->setScannerState(I)V

    .line 436
    const/4 v0, 0x0

    .line 441
    :goto_0
    return v0

    .line 438
    :cond_5
    if-nez p1, :cond_2

    move v0, v1

    .line 441
    goto :goto_0
.end method

.method protected final scanDecls(Z)Z
    .locals 8
    .parameter "complete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2d

    const/16 v6, 0x5d

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1998
    invoke-direct {p0, v2, v1}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1999
    const/4 v0, 0x1

    .line 2001
    .local v0, again:Z
    :goto_0
    if-eqz v0, :cond_10

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_10

    .line 2002
    move v0, p1

    .line 2003
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2004
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 2005
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2006
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 2007
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v3}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanPI(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)V

    .line 2070
    :cond_0
    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto :goto_0

    .line 2009
    :cond_1
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2010
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2011
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2012
    const-string v3, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v3, v5}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2015
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanComment()V

    goto :goto_1

    .line 2018
    :cond_3
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v4, "ELEMENT"

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2019
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanElementDecl()V

    goto :goto_1

    .line 2021
    :cond_4
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v4, "ATTLIST"

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2022
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanAttlistDecl()V

    goto :goto_1

    .line 2024
    :cond_5
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v4, "ENTITY"

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2025
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanEntityDecl()V

    goto :goto_1

    .line 2027
    :cond_6
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v4, "NOTATION"

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2028
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanNotationDecl()V

    goto :goto_1

    .line 2030
    :cond_7
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v3

    if-nez v3, :cond_8

    .line 2032
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    invoke-direct {p0, v3}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanConditionalSect(I)V

    goto :goto_1

    .line 2035
    :cond_8
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 2036
    const-string v3, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v3, v5}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2041
    :cond_9
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 2042
    const-string v3, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v3, v5}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2045
    :cond_a
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    if-lez v3, :cond_e

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2047
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 2049
    :cond_b
    const-string v3, "IncludeSectUnterminated"

    invoke-virtual {p0, v3, v5}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2052
    :cond_c
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_d

    .line 2053
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    invoke-interface {v3, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->endConditional(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 2056
    :cond_d
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fIncludeSectDepth:I

    .line 2057
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    goto/16 :goto_1

    .line 2059
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v3

    if-ne v3, v6, :cond_f

    .line 2072
    :goto_2
    return v2

    .line 2064
    :cond_f
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2068
    const-string v3, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v3, v5}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2072
    :cond_10
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    if-eqz v3, :cond_11

    :goto_3
    move v2, v1

    goto :goto_2

    :cond_11
    move v1, v2

    goto :goto_3
.end method

.method protected final scanElementDecl()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x28

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 888
    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 889
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_0
    invoke-direct {p0, v3, v2}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 890
    const-string v2, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ELEMENTDECL"

    invoke-virtual {p0, v2, v6}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 897
    const-string v2, "MSG_ELEMENT_TYPE_REQUIRED_IN_ELEMENTDECL"

    invoke-virtual {p0, v2, v6}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 902
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_1
    invoke-direct {p0, v3, v2}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 903
    const-string v2, "MSG_SPACE_REQUIRED_BEFORE_CONTENTSPEC_IN_ELEMENTDECL"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v4

    invoke-virtual {p0, v2, v5}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 908
    :cond_2
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_3

    .line 909
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v2, v1, v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->startContentModel(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 911
    :cond_3
    const/4 v0, 0x0

    .line 912
    .local v0, contentModel:Ljava/lang/String;
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 913
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v5, "EMPTY"

    invoke-virtual {v2, v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 914
    const-string v0, "EMPTY"

    .line 916
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_4

    .line 917
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v2, v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->empty(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 951
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_5

    .line 952
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v2, v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->endContentModel(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 955
    :cond_5
    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 956
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-nez v2, :cond_11

    move v2, v3

    :goto_3
    invoke-direct {p0, v4, v2}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 958
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v5, 0x3e

    invoke-virtual {v2, v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 959
    const-string v2, "ElementDeclUnterminated"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v4

    invoke-virtual {p0, v2, v5}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 961
    :cond_6
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    .line 962
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 965
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_7

    .line 966
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, v1, v0, v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 968
    :cond_7
    iget-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    invoke-virtual {v2, v1, v0, v6}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 969
    :cond_8
    return-void

    .end local v0           #contentModel:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    :cond_9
    move v2, v4

    .line 889
    goto/16 :goto_0

    .restart local v1       #name:Ljava/lang/String;
    :cond_a
    move v2, v4

    .line 902
    goto :goto_1

    .line 920
    .restart local v0       #contentModel:Ljava/lang/String;
    :cond_b
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v5, "ANY"

    invoke-virtual {v2, v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 921
    const-string v0, "ANY"

    .line 923
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_4

    .line 924
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v2, v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->any(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    goto :goto_2

    .line 928
    :cond_c
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2, v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 929
    const-string v2, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v4

    invoke-virtual {p0, v2, v5}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 932
    :cond_d
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_e

    .line 933
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v2, v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;->startGroup(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 935
    :cond_e
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 936
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 937
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 938
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-nez v2, :cond_f

    move v2, v3

    :goto_4
    invoke-direct {p0, v4, v2}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 941
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v5, "#PCDATA"

    invoke-virtual {v2, v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 942
    invoke-direct {p0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanMixed(Ljava/lang/String;)V

    .line 947
    :goto_5
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_f
    move v2, v4

    .line 938
    goto :goto_4

    .line 945
    :cond_10
    invoke-direct {p0, v1}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanChildren(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    move v2, v4

    .line 956
    goto/16 :goto_3
.end method

.method protected final scanEntityValue(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V
    .locals 11
    .parameter "value"
    .parameter "nonNormalizedValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1678
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v6

    .line 1679
    .local v6, quote:I
    const/16 v7, 0x27

    if-eq v6, v7, :cond_0

    const/16 v7, 0x22

    if-eq v6, v7, :cond_0

    .line 1680
    const-string v7, "OpenQuoteMissingInDecl"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1683
    :cond_0
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityDepth:I

    .line 1685
    .local v2, entityDepth:I
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    .line 1686
    .local v3, literal:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    .line 1687
    .local v4, literal2:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v7, v6, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanLiteral(ILcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)I

    move-result v7

    if-eq v7, v6, :cond_3

    .line 1688
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 1689
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 1691
    :cond_1
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 1692
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 1693
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1694
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v8, 0x23

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1695
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const-string v8, "&#"

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1696
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanCharReferenceValue(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)I

    .line 1768
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v7, v6, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanLiteral(ILcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)I

    move-result v7

    if-ne v7, v6, :cond_1

    .line 1769
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 1770
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 1771
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 1772
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    .line 1774
    :cond_3
    invoke-virtual {p1, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 1775
    invoke-virtual {p2, v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 1776
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7, v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1777
    const-string v7, "CloseQuoteMissingInDecl"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1779
    :cond_4
    return-void

    .line 1699
    :cond_5
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1700
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1701
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v1

    .line 1702
    .local v1, eName:Ljava/lang/String;
    if-nez v1, :cond_6

    .line 1703
    const-string v7, "NameRequiredInReference"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1710
    :goto_1
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1711
    const-string v7, "SemicolonRequiredInReference"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1707
    :cond_6
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1708
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 1715
    :cond_7
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1716
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_0

    .line 1720
    .end local v1           #eName:Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1722
    :cond_9
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1723
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanName()Ljava/lang/String;

    move-result-object v5

    .line 1724
    .local v5, peName:Ljava/lang/String;
    if-nez v5, :cond_a

    .line 1725
    const-string v7, "NameRequiredInPEReference"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1740
    :goto_2
    const/4 v7, 0x1

    invoke-virtual {p0, v5, v7}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    .line 1744
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipSpaces()Z

    .line 1745
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_9

    goto/16 :goto_0

    .line 1728
    :cond_a
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1729
    const-string v7, "SemicolonRequiredInPEReference"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1733
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1734
    const-string v7, "PEReferenceWithinMarkup"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1737
    :cond_c
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1738
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_2

    .line 1750
    .end local v5           #peName:Ljava/lang/String;
    :cond_d
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v0

    .line 1751
    .local v0, c:I
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1752
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v7}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanSurrogates(Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;)Z

    goto/16 :goto_0

    .line 1754
    :cond_e
    invoke-static {v0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->isInvalidLiteral(I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1755
    const-string v7, "InvalidCharInLiteral"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1757
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    goto/16 :goto_0

    .line 1762
    :cond_f
    if-ne v0, v6, :cond_10

    iget v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityDepth:I

    if-eq v2, v7, :cond_2

    .line 1763
    :cond_10
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1764
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    .line 1765
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    goto/16 :goto_0
.end method

.method protected final scanPIData(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V
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
    .line 843
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 846
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->processingInstruction(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 850
    :cond_0
    return-void
.end method

.method protected final scanTextDecl()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 786
    const/4 v2, 0x0

    .line 787
    .local v2, textDecl:Z
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    const-string v5, "<?xml"

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 788
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 791
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v4

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->isValidNameChar(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 792
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->clear()V

    .line 793
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    const-string v5, "xml"

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 794
    :goto_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->peekChar()I

    move-result v4

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->isValidNameChar(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 795
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->scanChar()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_0

    .line 797
    :cond_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->offset:I

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStringBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    iget v7, v7, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, target:Ljava/lang/String;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fString:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {p0, v1, v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanPIData(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 825
    .end local v1           #target:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;

    iput-boolean v8, v4, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->mayReadChunks:Z

    .line 827
    return v2

    .line 807
    :cond_2
    const/4 v3, 0x0

    .line 808
    .local v3, version:Ljava/lang/String;
    const/4 v0, 0x0

    .line 810
    .local v0, encoding:Ljava/lang/String;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-virtual {p0, v8, v4}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanXMLDeclOrTextDecl(Z[Ljava/lang/String;)V

    .line 811
    const/4 v2, 0x1

    .line 812
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 814
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 815
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v0, v4, v8

    .line 817
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v4, v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->setEncoding(Ljava/lang/String;)V

    .line 820
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_1

    .line 821
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v0, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    goto :goto_1
.end method

.method protected final scanningInternalSubset()Z
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDTDContentModelHandler(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0
    .parameter "dtdContentModelHandler"

    .prologue
    .line 570
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDContentModelHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDContentModelHandler;

    .line 571
    return-void
.end method

.method public setDTDHandler(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;)V
    .locals 0
    .parameter "dtdHandler"

    .prologue
    .line 547
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    .line 548
    return-void
.end method

.method public setInputSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V
    .locals 2
    .parameter "inputSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 321
    if-nez p1, :cond_2

    .line 323
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->startDTD(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 325
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->endDTD(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 327
    :cond_0
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nonValidatingMode:Z

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    invoke-virtual {v0, v1, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->startDTD(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 329
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->nvGrammarInfo:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->endDTD(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 335
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->setEntityHandler(Lcom/amazonaws/javax/xml/stream/XMLEntityHandler;)V

    .line 334
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->startDTDEntity(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V

    goto :goto_0
.end method

.method protected final setScannerState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 715
    iput p1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fScannerState:I

    .line 722
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
    const/4 v3, 0x0

    .line 605
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/XMLScanner;->startEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V

    .line 607
    const-string v1, "[dtd]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 608
    .local v0, dtdEntity:Z
    if-eqz v0, :cond_4

    .line 610
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fStartDTDCalled:Z

    if-nez v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->startDTD(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 613
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_1

    .line 614
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    invoke-interface {v1, p2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->startExternalSubset(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 616
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->startExternalSubset()V

    .line 617
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    .line 627
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    if-eqz v1, :cond_3

    .line 628
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fDTDHandler:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;

    invoke-interface {v1, p1, p2, p3, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLDTDHandler;->startParameterEntity(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V

    .line 631
    :cond_3
    return-void

    .line 619
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_2

    .line 620
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fReportEntity:Z

    invoke-direct {p0, v1, v2}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->pushPEStack(IZ)V

    .line 621
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 622
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fExtEntityDepth:I

    goto :goto_0
.end method

.method protected startPE(Ljava/lang/String;Z)V
    .locals 8
    .parameter "name"
    .parameter "literal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 755
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    .line 756
    .local v0, depth:I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 757
    .local v1, pName:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    invoke-virtual {v2, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 758
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "EntityNotDeclared"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/amazonaws/javax/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    .line 761
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v3, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    .line 765
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fPEDepth:I

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 766
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->scanTextDecl()Z

    .line 768
    :cond_1
    return-void
.end method
