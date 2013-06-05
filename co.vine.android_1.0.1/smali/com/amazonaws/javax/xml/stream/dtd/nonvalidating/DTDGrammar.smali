.class public Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;
.super Ljava/lang/Object;
.source "DTDGrammar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;
    }
.end annotation


# static fields
.field private static final CHUNK_MASK:I = 0xff

.field private static final CHUNK_SHIFT:I = 0x8

.field private static final CHUNK_SIZE:I = 0x100

.field private static final DEBUG:Z = false

.field private static final INITIAL_CHUNK_COUNT:I = 0x4

.field private static final LIST_FLAG:S = 0x80s

.field private static final LIST_MASK:S = -0x81s

.field public static final TOP_LEVEL_SCOPE:I = -0x1


# instance fields
.field protected fAttributeDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

.field private fAttributeDeclCount:I

.field private fAttributeDeclDefaultType:[[S

.field private fAttributeDeclDefaultValue:[[Ljava/lang/String;

.field private fAttributeDeclEnumeration:[[[Ljava/lang/String;

.field private fAttributeDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

.field private fAttributeDeclNextAttributeDeclIndex:[[I

.field private fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

.field private fAttributeDeclType:[[S

.field protected fCurrentAttributeIndex:I

.field protected fCurrentElementIndex:I

.field protected fDTDContentModelSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDContentModelSource;

.field protected fDTDSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDSource;

.field private fDepth:I

.field private fElementDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;

.field private fElementDeclCount:I

.field private fElementDeclFirstAttributeDeclIndex:[[I

.field private fElementDeclLastAttributeDeclIndex:[[I

.field private fElementDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

.field fElementDeclTab:Ljava/util/Hashtable;

.field private fElementDeclType:[[S

.field private fElementIndexMap:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;

.field private fEpsilonIndex:I

.field private fIsImmutable:Z

.field private fLeafCount:I

.field private fNodeIndexStack:[I

.field private fOpStack:[S

.field private fPrevNodeIndexStack:[I

.field private fQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

.field private fQName2:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

.field protected fReadingExternalDTD:Z

.field private fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

.field private fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

.field nodeIndex:I

.field private notationDecls:Ljava/util/ArrayList;

.field prevNodeIndex:I

.field valueIndex:I


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;)V
    .locals 5
    .parameter "symbolTable"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fDTDSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDSource;

    .line 166
    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fDTDContentModelSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDContentModelSource;

    .line 175
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fReadingExternalDTD:Z

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->notationDecls:Ljava/util/ArrayList;

    .line 184
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    .line 187
    new-array v0, v1, [[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 193
    new-array v0, v1, [[S

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    .line 197
    new-array v0, v1, [[I

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    .line 200
    new-array v0, v1, [[I

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    .line 205
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclCount:I

    .line 208
    new-array v0, v1, [[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 211
    iput-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fIsImmutable:Z

    .line 217
    new-array v0, v1, [[S

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    .line 220
    new-array v0, v1, [[[Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    .line 221
    new-array v0, v1, [[S

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    .line 222
    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    .line 223
    new-array v0, v1, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    .line 224
    new-array v0, v1, [[I

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    .line 227
    new-instance v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementIndexMap:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;

    .line 230
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 233
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fQName2:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 236
    new-instance v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    .line 240
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fLeafCount:I

    .line 241
    iput v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fEpsilonIndex:I

    .line 244
    new-instance v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;

    .line 247
    new-instance v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    .line 251
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    .line 254
    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fOpStack:[S

    .line 257
    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fNodeIndexStack:[I

    .line 260
    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fPrevNodeIndexStack:[I

    .line 263
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fDepth:I

    .line 265
    iput v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->valueIndex:I

    .line 266
    iput v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->prevNodeIndex:I

    .line 267
    iput v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->nodeIndex:I

    .line 272
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 273
    return-void
.end method

.method private ensureAttributeDeclCapacity(I)V
    .locals 3
    .parameter "chunk"

    .prologue
    const/16 v2, 0x100

    .line 889
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;I)[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 891
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    .line 892
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[[Ljava/lang/String;I)[[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    .line 893
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    .line 894
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    .line 895
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    .line 896
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    new-array v1, v2, [Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    aput-object v1, v0, p1

    .line 903
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    new-array v1, v2, [S

    aput-object v1, v0, p1

    .line 904
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    new-array v1, v2, [[Ljava/lang/String;

    aput-object v1, v0, p1

    .line 905
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    new-array v1, v2, [S

    aput-object v1, v0, p1

    .line 906
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    .line 907
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, p1

    .line 908
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    new-array v1, v2, [I

    aput-object v1, v0, p1

    .line 909
    :goto_0
    return-void

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private ensureElementDeclCapacity(I)V
    .locals 3
    .parameter "chunk"

    .prologue
    const/16 v2, 0x100

    .line 869
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;I)[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 872
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    .line 873
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    .line 874
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->resize([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    new-array v1, v2, [Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    aput-object v1, v0, p1

    .line 881
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    new-array v1, v2, [S

    aput-object v1, v0, p1

    .line 882
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    new-array v1, v2, [I

    aput-object v1, v0, p1

    .line 883
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    new-array v1, v2, [I

    aput-object v1, v0, p1

    .line 884
    :goto_0
    return-void

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private normalizeDefaultAttrValue(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)Z
    .locals 9
    .parameter "value"

    .prologue
    const/16 v8, 0x20

    .line 1088
    iget v4, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    .line 1090
    .local v4, oldLength:I
    const/4 v5, 0x1

    .line 1091
    .local v5, skipSpace:Z
    iget v0, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    .line 1092
    .local v0, current:I
    iget v6, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    iget v7, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    add-int v2, v6, v7

    .line 1093
    .local v2, end:I
    iget v3, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    .local v3, i:I
    move v1, v0

    .end local v0           #current:I
    .local v1, current:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1094
    iget-object v6, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->ch:[C

    aget-char v6, v6, v3

    if-ne v6, v8, :cond_0

    .line 1095
    if-nez v5, :cond_5

    .line 1097
    iget-object v6, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->ch:[C

    add-int/lit8 v0, v1, 0x1

    .end local v1           #current:I
    .restart local v0       #current:I
    aput-char v8, v6, v1

    .line 1098
    const/4 v5, 0x1

    .line 1093
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0           #current:I
    .restart local v1       #current:I
    goto :goto_0

    .line 1106
    :cond_0
    if-eq v1, v3, :cond_1

    .line 1107
    iget-object v6, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->ch:[C

    iget-object v7, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->ch:[C

    aget-char v7, v7, v3

    aput-char v7, v6, v1

    .line 1109
    :cond_1
    add-int/lit8 v0, v1, 0x1

    .line 1110
    .end local v1           #current:I
    .restart local v0       #current:I
    const/4 v5, 0x0

    goto :goto_1

    .line 1113
    .end local v0           #current:I
    .restart local v1       #current:I
    :cond_2
    if-eq v1, v2, :cond_3

    .line 1114
    if-eqz v5, :cond_4

    .line 1116
    add-int/lit8 v0, v1, -0x1

    .line 1119
    .end local v1           #current:I
    .restart local v0       #current:I
    :goto_2
    iget v6, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    sub-int v6, v0, v6

    iput v6, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    .line 1120
    const/4 v6, 0x1

    .line 1122
    :goto_3
    return v6

    .end local v0           #current:I
    .restart local v1       #current:I
    :cond_3
    const/4 v6, 0x0

    move v0, v1

    .end local v1           #current:I
    .restart local v0       #current:I
    goto :goto_3

    .end local v0           #current:I
    .restart local v1       #current:I
    :cond_4
    move v0, v1

    .end local v1           #current:I
    .restart local v0       #current:I
    goto :goto_2

    .end local v0           #current:I
    .restart local v1       #current:I
    :cond_5
    move v0, v1

    .end local v1           #current:I
    .restart local v0       #current:I
    goto :goto_1
.end method

.method private printAttribute(I)V
    .locals 3
    .parameter "attributeDeclIndex"

    .prologue
    .line 857
    new-instance v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;-><init>()V

    .line 858
    .local v0, attributeDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDecl(ILcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " { "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 860
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 861
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 864
    :cond_0
    return-void
.end method

.method private static resize([[BI)[[B
    .locals 3
    .parameter "array"
    .parameter "newsize"

    .prologue
    const/4 v2, 0x0

    .line 916
    new-array v0, p1, [[B

    .line 917
    .local v0, newarray:[[B
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 918
    return-object v0
.end method

.method private static resize([[II)[[I
    .locals 3
    .parameter "array"
    .parameter "newsize"

    .prologue
    const/4 v2, 0x0

    .line 928
    new-array v0, p1, [[I

    .line 929
    .local v0, newarray:[[I
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 930
    return-object v0
.end method

.method private static resize([[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;I)[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .locals 3
    .parameter "array"
    .parameter "newsize"

    .prologue
    const/4 v2, 0x0

    .line 941
    new-array v0, p1, [[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 942
    .local v0, newarray:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 943
    return-object v0
.end method

.method private static resize([[Ljava/lang/Object;I)[[Ljava/lang/Object;
    .locals 3
    .parameter "array"
    .parameter "newsize"

    .prologue
    const/4 v2, 0x0

    .line 935
    new-array v0, p1, [[Ljava/lang/Object;

    .line 936
    .local v0, newarray:[[Ljava/lang/Object;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 937
    return-object v0
.end method

.method private static resize([[Ljava/lang/String;I)[[Ljava/lang/String;
    .locals 3
    .parameter "array"
    .parameter "newsize"

    .prologue
    const/4 v2, 0x0

    .line 947
    new-array v0, p1, [[Ljava/lang/String;

    .line 948
    .local v0, newarray:[[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 949
    return-object v0
.end method

.method private static resize([[SI)[[S
    .locals 3
    .parameter "array"
    .parameter "newsize"

    .prologue
    const/4 v2, 0x0

    .line 922
    new-array v0, p1, [[S

    .line 923
    .local v0, newarray:[[S
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 924
    return-object v0
.end method

.method private static resize([[[Ljava/lang/String;I)[[[Ljava/lang/String;
    .locals 3
    .parameter "array"
    .parameter "newsize"

    .prologue
    const/4 v2, 0x0

    .line 953
    new-array v0, p1, [[[Ljava/lang/String;

    .line 954
    .local v0, newarray:[[[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 955
    return-object v0
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 8
    .parameter "elementName"
    .parameter "attributeName"
    .parameter "type"
    .parameter "enumeration"
    .parameter "defaultType"
    .parameter "defaultValue"
    .parameter "nonNormalizedDefaultValue"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 413
    sget-object v4, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-eq p3, v4, :cond_0

    if-eqz p6, :cond_0

    .line 414
    invoke-direct {p0, p6}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->normalizeDefaultAttrValue(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)Z

    .line 417
    :cond_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 438
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v2

    .line 442
    .local v2, elementIndex:I
    invoke-virtual {p0, v2, p2}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDeclIndex(ILjava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 514
    :goto_1
    return-void

    .line 423
    .end local v2           #elementIndex:I
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->createElementDecl()I

    move-result v4

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    .line 425
    new-instance v1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;

    invoke-direct {v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;-><init>()V

    .line 426
    .local v1, elementDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;
    iget-object v4, v1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, p1, v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/4 v4, -0x1

    iput v4, v1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->scope:I

    .line 431
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {v4, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    invoke-virtual {p0, v4, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->setElementDecl(ILcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;)V

    goto :goto_0

    .line 446
    .end local v1           #elementDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;
    .restart local v2       #elementIndex:I
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->createAttributeDecl()I

    move-result v4

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentAttributeIndex:I

    .line 448
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->clear()V

    .line 449
    if-eqz p5, :cond_3

    .line 450
    const-string v4, "#FIXED"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 451
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v5, 0x1

    iput-short v5, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    .line 461
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    if-eqz p6, :cond_7

    invoke-virtual {p6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    iput-object v4, v5, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    .line 462
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    if-eqz p7, :cond_8

    invoke-virtual {p7}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    iput-object v4, v5, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    .line 463
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iput-object p4, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    .line 465
    const-string v4, "CDATA"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 466
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v5, 0x0

    iput-short v5, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    .line 505
    :cond_4
    :goto_5
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, p2, v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;Z)V

    .line 508
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentAttributeIndex:I

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-virtual {p0, v2, v4, v5}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->setAttributeDecl(IILcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)V

    .line 510
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentAttributeIndex:I

    shr-int/lit8 v0, v4, 0x8

    .line 511
    .local v0, chunk:I
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentAttributeIndex:I

    and-int/lit16 v3, v4, 0xff

    .line 512
    .local v3, index:I
    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->ensureAttributeDeclCapacity(I)V

    goto/16 :goto_1

    .line 452
    .end local v0           #chunk:I
    .end local v3           #index:I
    :cond_5
    const-string v4, "#IMPLIED"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 453
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v5, 0x0

    iput-short v5, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    goto :goto_2

    .line 454
    :cond_6
    const-string v4, "#REQUIRED"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 455
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v5, 0x2

    iput-short v5, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    goto :goto_2

    .line 461
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 462
    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 468
    :cond_9
    const-string v4, "ID"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 469
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v5, 0x3

    iput-short v5, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    goto :goto_5

    .line 471
    :cond_a
    const-string v4, "IDREF"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 472
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v5, 0x4

    iput-short v5, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    .line 473
    const-string v4, "S"

    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_4

    .line 474
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    goto :goto_5

    .line 477
    :cond_b
    const-string v4, "ENTITIES"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 478
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v5, 0x1

    iput-short v5, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    .line 479
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    goto/16 :goto_5

    .line 481
    :cond_c
    const-string v4, "ENTITY"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 482
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v5, 0x1

    iput-short v5, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    goto/16 :goto_5

    .line 484
    :cond_d
    const-string v4, "NMTOKENS"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 485
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v5, 0x5

    iput-short v5, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    .line 486
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    goto/16 :goto_5

    .line 488
    :cond_e
    const-string v4, "NMTOKEN"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 489
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v5, 0x5

    iput-short v5, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    goto/16 :goto_5

    .line 491
    :cond_f
    const-string v4, "NOTATION"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 492
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v5, 0x6

    iput-short v5, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    goto/16 :goto_5

    .line 494
    :cond_10
    const-string v4, "ENUMERATION"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 495
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSimpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v5, 0x2

    iput-short v5, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    goto/16 :goto_5

    .line 499
    :cond_11
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "!!! unknown attribute type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method protected createAttributeDecl()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 783
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclCount:I

    shr-int/lit8 v0, v2, 0x8

    .line 784
    .local v0, chunk:I
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclCount:I

    and-int/lit16 v1, v2, 0xff

    .line 786
    .local v1, index:I
    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->ensureAttributeDeclCapacity(I)V

    .line 787
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    aget-object v2, v2, v0

    new-instance v3, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    aput-object v3, v2, v1

    .line 788
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v2, v2, v0

    aput-short v5, v2, v1

    .line 789
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v4, v2, v1

    .line 790
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-short v3, v2, v1

    .line 791
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v4, v2, v1

    .line 792
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v4, v2, v1

    .line 793
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v2, v2, v0

    aput v5, v2, v1

    .line 794
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclCount:I

    return v2
.end method

.method protected createElementDecl()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 734
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    shr-int/lit8 v0, v2, 0x8

    .line 735
    .local v0, chunk:I
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    and-int/lit16 v1, v2, 0xff

    .line 736
    .local v1, index:I
    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->ensureElementDeclCapacity(I)V

    .line 737
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    aget-object v2, v2, v0

    new-instance v3, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    aput-object v3, v2, v1

    .line 738
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    aget-object v2, v2, v0

    aput-short v4, v2, v1

    .line 739
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v2, v2, v0

    aput v4, v2, v1

    .line 740
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    aget-object v2, v2, v0

    aput v4, v2, v1

    .line 741
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    return v2
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 8
    .parameter "name"
    .parameter "contentModel"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 329
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;

    .line 330
    .local v4, tmpElementDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;
    if-eqz v4, :cond_2

    .line 331
    iget-short v5, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    if-ne v5, v6, :cond_1

    .line 332
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    .line 343
    :goto_0
    new-instance v1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;

    invoke-direct {v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;-><init>()V

    .line 344
    .local v1, elementDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v2, v7, p1, p1, v7}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .local v2, elementName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    iget-object v5, v1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v5, v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 347
    iput v6, v1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->scope:I

    .line 348
    const-string v5, "EMPTY"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 349
    const/4 v5, 0x1

    iput-short v5, v1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    .line 365
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclTab:Ljava/util/Hashtable;

    invoke-virtual {v5, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;

    .line 375
    iget v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;

    invoke-virtual {p0, v5, v6}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->setElementDecl(ILcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;)V

    .line 377
    iget v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    shr-int/lit8 v0, v5, 0x8

    .line 378
    .local v0, chunk:I
    iget v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    and-int/lit16 v3, v5, 0xff

    .line 379
    .local v3, index:I
    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->ensureElementDeclCapacity(I)V

    .line 381
    .end local v0           #chunk:I
    .end local v1           #elementDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;
    .end local v2           #elementName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .end local v3           #index:I
    :cond_1
    return-void

    .line 340
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->createElementDecl()I

    move-result v5

    iput v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fCurrentElementIndex:I

    goto :goto_0

    .line 351
    .restart local v1       #elementDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;
    .restart local v2       #elementName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    :cond_3
    const-string v5, "ANY"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 352
    const/4 v5, 0x0

    iput-short v5, v1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    goto :goto_1

    .line 354
    :cond_4
    const-string v5, "("

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 355
    const-string v5, "#PCDATA"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_5

    .line 356
    const/4 v5, 0x2

    iput-short v5, v1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    goto :goto_1

    .line 359
    :cond_5
    const/4 v5, 0x3

    iput-short v5, v1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    goto :goto_1
.end method

.method public endDTD(Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 0
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1126
    return-void
.end method

.method public getAttributeDecl(ILcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Z
    .locals 11
    .parameter "attributeDeclIndex"
    .parameter "attributeDecl"

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 656
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclCount:I

    if-lt p1, v0, :cond_1

    :cond_0
    move v10, v4

    .line 680
    :goto_0
    return v10

    .line 659
    :cond_1
    shr-int/lit8 v8, p1, 0x8

    .line 660
    .local v8, chunk:I
    and-int/lit16 v9, p1, 0xff

    .line 662
    .local v9, index:I
    iget-object v0, p2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    aget-object v2, v2, v8

    aget-object v2, v2, v9

    invoke-virtual {v0, v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 667
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v0, v0, v8

    aget-short v0, v0, v9

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 669
    const/4 v1, -0x1

    .line 670
    .local v1, attributeType:S
    const/4 v4, 0x0

    .line 675
    .local v4, isList:Z
    :goto_1
    iget-object v0, p2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    aget-object v2, v2, v8

    aget-object v2, v2, v9

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    aget-object v3, v3, v8

    aget-object v3, v3, v9

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    aget-object v5, v5, v8

    aget-short v5, v5, v9

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    aget-object v6, v6, v8

    aget-object v6, v6, v9

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    aget-object v7, v7, v8

    aget-object v7, v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->setValues(SLjava/lang/String;[Ljava/lang/String;ZSLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 672
    .end local v1           #attributeType:S
    .end local v4           #isList:Z
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v0, v0, v8

    aget-short v0, v0, v9

    and-int/lit16 v0, v0, -0x81

    int-to-short v1, v0

    .line 673
    .restart local v1       #attributeType:S
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v0, v0, v8

    aget-short v0, v0, v9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move v4, v10

    .restart local v4       #isList:Z
    :cond_3
    goto :goto_1
.end method

.method public getAttributeDeclIndex(ILjava/lang/String;)I
    .locals 3
    .parameter "elementDeclIndex"
    .parameter "attributeDeclName"

    .prologue
    const/4 v1, -0x1

    .line 276
    if-ne p1, v1, :cond_1

    move v0, v1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v0

    .line 280
    .local v0, attDefIndex:I
    :goto_1
    if-eq v0, v1, :cond_2

    .line 281
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-virtual {p0, v0, v2}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDecl(ILcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Z

    .line 283
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v2, p2, :cond_0

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v0

    .line 288
    goto :goto_1

    :cond_2
    move v0, v1

    .line 289
    goto :goto_0
.end method

.method public getContentSpecType(I)S
    .locals 4
    .parameter "elementIndex"

    .prologue
    const/4 v2, -0x1

    .line 568
    if-ltz p1, :cond_0

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v3, :cond_1

    .line 579
    :cond_0
    :goto_0
    return v2

    .line 572
    :cond_1
    shr-int/lit8 v0, p1, 0x8

    .line 573
    .local v0, chunk:I
    and-int/lit16 v1, p1, 0xff

    .line 575
    .local v1, index:I
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    aget-object v3, v3, v0

    aget-short v3, v3, v1

    if-eq v3, v2, :cond_0

    .line 579
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    aget-object v2, v2, v0

    aget-short v2, v2, v1

    and-int/lit16 v2, v2, -0x81

    int-to-short v2, v2

    goto :goto_0
.end method

.method public getElementDecl(ILcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;)Z
    .locals 7
    .parameter "elementDeclIndex"
    .parameter "elementDecl"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 594
    if-ltz p1, :cond_0

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v4, :cond_1

    :cond_0
    move v3, v2

    .line 613
    :goto_0
    return v3

    .line 598
    :cond_1
    shr-int/lit8 v0, p1, 0x8

    .line 599
    .local v0, chunk:I
    and-int/lit16 v1, p1, 0xff

    .line 601
    .local v1, index:I
    iget-object v4, p2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 603
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    aget-object v4, v4, v0

    aget-short v4, v4, v1

    if-ne v4, v6, :cond_2

    .line 604
    iput-short v6, p2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    .line 605
    iget-object v4, p2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iput-boolean v2, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    .line 611
    :goto_1
    iget-object v2, p2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iput-short v6, v2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    .line 612
    iget-object v2, p2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    goto :goto_0

    .line 607
    :cond_2
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    aget-object v4, v4, v0

    aget-short v4, v4, v1

    and-int/lit16 v4, v4, -0x81

    int-to-short v4, v4

    iput-short v4, p2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    .line 608
    iget-object v4, p2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    aget-object v5, v5, v0

    aget-short v5, v5, v1

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, v4, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    goto :goto_1
.end method

.method public getElementDeclIndex(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)I
    .locals 1
    .parameter "elementDeclQName"

    .prologue
    .line 560
    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getElementDeclIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "elementDeclName"

    .prologue
    .line 551
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementIndexMap:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;

    invoke-virtual {v1, p1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->get(Ljava/lang/String;)I

    move-result v0

    .line 553
    .local v0, mapping:I
    return v0
.end method

.method public getFirstAttributeDeclIndex(I)I
    .locals 3
    .parameter "elementDeclIndex"

    .prologue
    .line 627
    shr-int/lit8 v0, p1, 0x8

    .line 628
    .local v0, chunk:I
    and-int/lit16 v1, p1, 0xff

    .line 630
    .local v1, index:I
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    return v2
.end method

.method public getFirstElementDeclIndex()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getNextAttributeDeclIndex(I)I
    .locals 3
    .parameter "attributeDeclIndex"

    .prologue
    .line 641
    shr-int/lit8 v0, p1, 0x8

    .line 642
    .local v0, chunk:I
    and-int/lit16 v1, p1, 0xff

    .line 644
    .local v1, index:I
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    return v2
.end method

.method public getNextElementDeclIndex(I)I
    .locals 1
    .parameter "elementDeclIndex"

    .prologue
    .line 539
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getNotationDecls()Ljava/util/List;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->notationDecls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSymbolTable()Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    return-object v0
.end method

.method public isCDATAAttribute(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Z
    .locals 3
    .parameter "elName"
    .parameter "atName"

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)I

    move-result v1

    .line 695
    .local v1, elDeclIdx:I
    iget-object v2, p2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDeclIndex(ILjava/lang/String;)I

    move-result v0

    .line 696
    .local v0, atDeclIdx:I
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDecl(ILcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-short v2, v2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    if-eqz v2, :cond_0

    .line 698
    const/4 v2, 0x0

    .line 700
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public notationDecl(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 4
    .parameter "name"
    .parameter "identifier"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 842
    new-instance v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLNotationDecl;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLNotationDecl;-><init>()V

    .line 843
    .local v0, notationDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLNotationDecl;
    invoke-interface {p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLNotationDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->notationDecls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    return-void
.end method

.method public printAttributes(I)V
    .locals 4
    .parameter "elementDeclIndex"

    .prologue
    const/4 v3, -0x1

    .line 717
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v0

    .line 718
    .local v0, attributeDeclIndex:I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(I)V

    .line 719
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 720
    :cond_0
    :goto_0
    if-eq v0, v3, :cond_1

    .line 721
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 722
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(I)V

    .line 723
    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->printAttribute(I)V

    .line 724
    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v0

    .line 725
    if-eq v0, v3, :cond_0

    .line 726
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 729
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public printElements()V
    .locals 6

    .prologue
    .line 706
    const/4 v1, 0x0

    .line 707
    .local v1, elementDeclIndex:I
    new-instance v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;-><init>()V

    .line 708
    .local v0, elementDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #elementDeclIndex:I
    .local v2, elementDeclIndex:I
    invoke-virtual {p0, v1, v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getElementDecl(ILcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 710
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "element decl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v2

    .line 713
    .end local v2           #elementDeclIndex:I
    .restart local v1       #elementDeclIndex:I
    goto :goto_0

    .line 714
    .end local v1           #elementDeclIndex:I
    .restart local v2       #elementDeclIndex:I
    :cond_0
    return-void
.end method

.method protected setAttributeDecl(IILcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)V
    .locals 8
    .parameter "elementDeclIndex"
    .parameter "attributeDeclIndex"
    .parameter "attributeDecl"

    .prologue
    const/4 v7, -0x1

    .line 800
    shr-int/lit8 v0, p2, 0x8

    .line 801
    .local v0, attrChunk:I
    and-int/lit16 v1, p2, 0xff

    .line 802
    .local v1, attrIndex:I
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    iget-object v6, p3, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v5, v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 803
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v5, v5, v0

    iget-object v6, p3, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-short v6, v6, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    aput-short v6, v5, v1

    .line 805
    iget-object v5, p3, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    if-eqz v5, :cond_0

    .line 806
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclType:[[S

    aget-object v5, v5, v0

    aget-short v6, v5, v1

    or-int/lit16 v6, v6, 0x80

    int-to-short v6, v6

    aput-short v6, v5, v1

    .line 808
    :cond_0
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclEnumeration:[[[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p3, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    aput-object v6, v5, v1

    .line 809
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultType:[[S

    aget-object v5, v5, v0

    iget-object v6, p3, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-short v6, v6, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    aput-short v6, v5, v1

    .line 811
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclDefaultValue:[[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p3, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    aput-object v6, v5, v1

    .line 812
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNonNormalizedDefaultValue:[[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p3, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    aput-object v6, v5, v1

    .line 814
    shr-int/lit8 v2, p1, 0x8

    .line 815
    .local v2, elemChunk:I
    and-int/lit16 v3, p1, 0xff

    .line 816
    .local v3, elemIndex:I
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v5, v5, v2

    aget v4, v5, v3

    .line 817
    .local v4, index:I
    :goto_0
    if-eq v4, v7, :cond_1

    .line 818
    if-ne v4, p2, :cond_3

    .line 825
    :cond_1
    if-ne v4, v7, :cond_2

    .line 826
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v5, v5, v2

    aget v5, v5, v3

    if-ne v5, v7, :cond_4

    .line 827
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v5, v5, v2

    aput p2, v5, v3

    .line 834
    :goto_1
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    aget-object v5, v5, v2

    aput p2, v5, v3

    .line 836
    :cond_2
    return-void

    .line 821
    :cond_3
    shr-int/lit8 v0, v4, 0x8

    .line 822
    and-int/lit16 v1, v4, 0xff

    .line 823
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v5, v5, v0

    aget v4, v5, v1

    .line 824
    goto :goto_0

    .line 829
    :cond_4
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclLastAttributeDeclIndex:[[I

    aget-object v5, v5, v2

    aget v4, v5, v3

    .line 830
    shr-int/lit8 v0, v4, 0x8

    .line 831
    and-int/lit16 v1, v4, 0xff

    .line 832
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fAttributeDeclNextAttributeDeclIndex:[[I

    aget-object v5, v5, v0

    aput p2, v5, v1

    goto :goto_1
.end method

.method protected setElementDecl(ILcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;)V
    .locals 5
    .parameter "elementDeclIndex"
    .parameter "elementDecl"

    .prologue
    .line 745
    if-ltz p1, :cond_0

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v3, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    shr-int/lit8 v0, p1, 0x8

    .line 749
    .local v0, chunk:I
    and-int/lit16 v1, p1, 0xff

    .line 751
    .local v1, index:I
    iget v2, p2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->scope:I

    .line 754
    .local v2, scope:I
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclName:[[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v4, p2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 755
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    aget-object v3, v3, v0

    iget-short v4, p2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->type:S

    aput-short v4, v3, v1

    .line 759
    iget-object v3, p2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-boolean v3, v3, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 760
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclType:[[S

    aget-object v3, v3, v0

    aget-short v4, v3, v1

    or-int/lit16 v4, v4, 0x80

    int-to-short v4, v4

    aput-short v4, v3, v1

    .line 763
    :cond_2
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementIndexMap:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;

    iget-object v4, p2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLElementDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->put(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected setFirstAttributeDeclIndex(II)V
    .locals 3
    .parameter "elementDeclIndex"
    .parameter "newFirstAttrIndex"

    .prologue
    .line 771
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclCount:I

    if-lt p1, v2, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    shr-int/lit8 v0, p1, 0x8

    .line 776
    .local v0, chunk:I
    and-int/lit16 v1, p1, 0xff

    .line 778
    .local v1, index:I
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fElementDeclFirstAttributeDeclIndex:[[I

    aget-object v2, v2, v0

    aput p2, v2, v1

    goto :goto_0
.end method

.method public startDTD(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "locator"
    .parameter "augs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fOpStack:[S

    .line 309
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fNodeIndexStack:[I

    .line 310
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->fPrevNodeIndexStack:[I

    .line 311
    return-void
.end method
