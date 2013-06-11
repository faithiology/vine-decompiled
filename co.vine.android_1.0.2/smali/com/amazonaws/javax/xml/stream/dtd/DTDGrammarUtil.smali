.class public Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;
.super Ljava/lang/Object;
.source "DTDGrammarUtil.java"


# static fields
.field private static final DEBUG_ATTRIBUTES:Z = false

.field private static final DEBUG_ELEMENT_CHILDREN:Z = false

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field private fBuffer:Ljava/lang/StringBuffer;

.field private fCurrentContentSpecType:I

.field private fCurrentElementIndex:I

.field protected fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

.field private fElementContentState:[Z

.field private fElementDepth:I

.field private fInCDATASection:Z

.field private fInElementContent:Z

.field private fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

.field protected fNamespaces:Z

.field protected fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

.field private fTempAttDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

.field private fTempQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;)V
    .locals 4
    .parameter "grammar"
    .parameter "symbolTable"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 152
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 155
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    .line 158
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    .line 160
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    .line 163
    const/16 v0, 0x8

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    .line 166
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    .line 169
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 172
    new-instance v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    .line 175
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 178
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    .line 180
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    .line 188
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 189
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 190
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;)V
    .locals 4
    .parameter "grammar"
    .parameter "symbolTable"
    .parameter "namespaceContext"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 152
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 155
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    .line 158
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    .line 160
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    .line 163
    const/16 v0, 0x8

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    .line 166
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    .line 169
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 172
    new-instance v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    .line 175
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 178
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    .line 180
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    .line 194
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 195
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 196
    iput-object p3, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    .line 197
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;)V
    .locals 4
    .parameter "symbolTable"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 152
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 155
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    .line 158
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    .line 160
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    .line 163
    const/16 v0, 0x8

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    .line 166
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    .line 169
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 172
    new-instance v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    .line 175
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 178
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    .line 180
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    .line 184
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 185
    return-void
.end method

.method private ensureStackCapacity(I)V
    .locals 3
    .parameter "newElementDepth"

    .prologue
    const/4 v2, 0x0

    .line 519
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    array-length v1, v1

    if-ne p1, v1, :cond_0

    .line 520
    mul-int/lit8 v1, p1, 0x2

    new-array v0, v1, [Z

    .line 521
    .local v0, newStack:[Z
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    .line 524
    .end local v0           #newStack:[Z
    :cond_0
    return-void
.end method

.method private getAttributeTypeName(Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Ljava/lang/String;
    .locals 4
    .parameter "attrDecl"

    .prologue
    .line 483
    iget-object v2, p1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-short v2, v2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    packed-switch v2, :pswitch_data_0

    .line 512
    sget-object v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    :goto_0
    return-object v2

    .line 485
    :pswitch_0
    iget-object v2, p1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-boolean v2, v2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    goto :goto_0

    .line 488
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 489
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 490
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 491
    if-lez v1, :cond_1

    .line 492
    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    :cond_1
    iget-object v2, p1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 496
    :cond_2
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 497
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 500
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #i:I
    :pswitch_2
    sget-object v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    goto :goto_0

    .line 503
    :pswitch_3
    iget-object v2, p1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-boolean v2, v2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    goto :goto_0

    .line 506
    :pswitch_4
    iget-object v2, p1, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    iget-boolean v2, v2, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    goto :goto_0

    .line 509
    :pswitch_5
    sget-object v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    goto :goto_0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private normalizeAttrValue(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;I)Z
    .locals 13
    .parameter "attributes"
    .parameter "index"

    .prologue
    const/16 v12, 0x20

    const/4 v9, 0x0

    .line 427
    const/4 v5, 0x1

    .line 428
    .local v5, leadingSpace:Z
    const/4 v8, 0x0

    .line 429
    .local v8, spaceStart:Z
    const/4 v7, 0x0

    .line 430
    .local v7, readingNonSpace:Z
    const/4 v2, 0x0

    .line 431
    .local v2, count:I
    const/4 v3, 0x0

    .line 432
    .local v3, eaten:I
    invoke-interface {p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, attrValue:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    new-array v0, v10, [C

    .line 435
    .local v0, attValue:[C
    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 436
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v1, v9, v10, v0, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 437
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v10, v0

    if-ge v4, v10, :cond_5

    .line 439
    aget-char v10, v0, v4

    if-ne v10, v12, :cond_4

    .line 442
    if-eqz v7, :cond_0

    .line 443
    const/4 v8, 0x1

    .line 444
    const/4 v7, 0x0

    .line 447
    :cond_0
    if-eqz v8, :cond_2

    if-nez v5, :cond_2

    .line 448
    const/4 v8, 0x0

    .line 449
    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    aget-char v11, v0, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 450
    add-int/lit8 v2, v2, 0x1

    .line 437
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 453
    :cond_2
    if-nez v5, :cond_3

    if-nez v8, :cond_1

    .line 454
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 455
    goto :goto_1

    .line 460
    :cond_4
    const/4 v7, 0x1

    .line 461
    const/4 v8, 0x0

    .line 462
    const/4 v5, 0x0

    .line 463
    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    aget-char v11, v0, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 464
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 469
    :cond_5
    if-lez v2, :cond_6

    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v10

    if-ne v10, v12, :cond_6

    .line 470
    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 473
    :cond_6
    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 474
    .local v6, newValue:Ljava/lang/String;
    invoke-interface {p1, p2, v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    .line 475
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v9, 0x1

    :cond_7
    return v9
.end method


# virtual methods
.method public addDTDDefaultAttrs(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;)V
    .locals 29
    .parameter "elementName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)I

    move-result v17

    .line 286
    .local v17, elementIndex:I
    const/16 v27, -0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    .line 415
    :cond_0
    return-void

    .line 295
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v10

    .line 297
    .local v10, attlistIndex:I
    :goto_0
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v10, v0, :cond_d

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDecl(ILcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Z

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 316
    .local v6, attPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 317
    .local v5, attLocalpart:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 318
    .local v7, attRawName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->getAttributeTypeName(Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v8

    .line 320
    .local v8, attType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-short v4, v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    .line 321
    .local v4, attDefaultType:I
    const/4 v9, 0x0

    .line 323
    .local v9, attValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v9, v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    .line 326
    :cond_2
    const/16 v25, 0x0

    .line 327
    .local v25, specified:Z
    const/16 v27, 0x2

    move/from16 v0, v27

    if-ne v4, v0, :cond_8

    const/16 v24, 0x1

    .line 328
    .local v24, required:Z
    :goto_1
    sget-object v27, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object/from16 v0, v27

    if-ne v8, v0, :cond_9

    const/4 v14, 0x1

    .line 330
    .local v14, cdata:Z
    :goto_2
    if-eqz v14, :cond_3

    if-nez v24, :cond_3

    if-eqz v9, :cond_5

    .line 333
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    move-object/from16 v27, v0

    if-eqz v27, :cond_b

    const-string v27, "xmlns"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 334
    const-string v23, ""

    .line 335
    .local v23, prefix:Ljava/lang/String;
    const/16 v27, 0x3a

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    .line 336
    .local v21, pos:I
    const/16 v27, -0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_a

    .line 337
    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 341
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    move-object/from16 v27, v0

    check-cast v27, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->containsPrefixInCurrentContext(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fNamespaceContext:Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v9}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 347
    :cond_4
    const/16 v25, 0x1

    .line 360
    .end local v21           #pos:I
    .end local v23           #prefix:Ljava/lang/String;
    :cond_5
    :goto_4
    if-nez v25, :cond_7

    .line 361
    if-eqz v9, :cond_7

    .line 362
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fNamespaces:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 363
    const/16 v27, 0x3a

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    .line 364
    .local v19, index:I
    const/16 v27, -0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-eq v0, v1, :cond_6

    .line 365
    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 367
    add-int/lit8 v27, v19, 0x1

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 371
    .end local v19           #index:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v6, v5, v7, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempQName:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v8, v9}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->addAttribute(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v10

    .line 376
    goto/16 :goto_0

    .line 327
    .end local v14           #cdata:Z
    .end local v24           #required:Z
    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 328
    .restart local v24       #required:Z
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 339
    .restart local v14       #cdata:Z
    .restart local v21       #pos:I
    .restart local v23       #prefix:Ljava/lang/String;
    :cond_a
    move-object/from16 v23, v7

    goto/16 :goto_3

    .line 349
    .end local v21           #pos:I
    .end local v23           #prefix:Ljava/lang/String;
    :cond_b
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getLength()I

    move-result v11

    .line 350
    .local v11, attrCount:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_5
    move/from16 v0, v18

    if-ge v0, v11, :cond_5

    .line 351
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    if-ne v0, v7, :cond_c

    .line 352
    const/16 v25, 0x1

    .line 353
    goto/16 :goto_4

    .line 350
    :cond_c
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 382
    .end local v4           #attDefaultType:I
    .end local v5           #attLocalpart:Ljava/lang/String;
    .end local v6           #attPrefix:Ljava/lang/String;
    .end local v7           #attRawName:Ljava/lang/String;
    .end local v8           #attType:Ljava/lang/String;
    .end local v9           #attValue:Ljava/lang/String;
    .end local v11           #attrCount:I
    .end local v14           #cdata:Z
    .end local v18           #i:I
    .end local v24           #required:Z
    .end local v25           #specified:Z
    :cond_d
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getLength()I

    move-result v11

    .line 383
    .restart local v11       #attrCount:I
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_6
    move/from16 v0, v18

    if-ge v0, v11, :cond_0

    .line 384
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v12

    .line 385
    .local v12, attrRawName:Ljava/lang/String;
    const/16 v16, 0x0

    .line 386
    .local v16, declared:Z
    const/4 v3, -0x1

    .line 387
    .local v3, attDefIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v22

    .line 389
    .local v22, position:I
    :goto_7
    const/16 v27, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_e

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getAttributeDecl(ILcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Z

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    if-ne v0, v12, :cond_10

    .line 393
    move/from16 v3, v22

    .line 394
    const/16 v16, 0x1

    .line 399
    :cond_e
    if-nez v16, :cond_11

    .line 383
    :cond_f
    :goto_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 397
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v22

    .line 398
    goto :goto_7

    .line 403
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fTempAttDecl:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->getAttributeTypeName(Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v26

    .line 404
    .local v26, type:Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->setType(ILjava/lang/String;)V

    .line 406
    const/4 v15, 0x0

    .line 407
    .local v15, changedByNormalization:Z
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v20

    .line 408
    .local v20, oldValue:Ljava/lang/String;
    move-object/from16 v13, v20

    .line 409
    .local v13, attrValue:Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v27

    if-eqz v27, :cond_f

    sget-object v27, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_f

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->normalizeAttrValue(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;I)Z

    move-result v15

    .line 411
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    goto :goto_8
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
    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    .line 275
    return-void
.end method

.method public endElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V
    .locals 0
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->handleEndElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 255
    return-void
.end method

.method protected handleEndElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V
    .locals 2
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 555
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    .line 556
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    if-ge v0, v1, :cond_0

    .line 557
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FWK008 Element stack underflow"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_0
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    if-gez v0, :cond_1

    .line 560
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    .line 561
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 566
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    goto :goto_0
.end method

.method protected handleStartElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;)V
    .locals 3
    .parameter "element"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 533
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    if-nez v1, :cond_0

    .line 534
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    .line 535
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    .line 536
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 550
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    invoke-virtual {v1, p1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getElementDeclIndex(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)I

    move-result v1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    .line 541
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    invoke-virtual {v1, v2}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getContentSpecType(I)S

    move-result v1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    .line 543
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->addDTDDefaultAttrs(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;)V

    .line 546
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 547
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    .line 548
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->ensureStackCapacity(I)V

    .line 549
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementContentState:[Z

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    iget-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public isIgnorableWhiteSpace(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)Z
    .locals 4
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 573
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->isInElementContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    iget v0, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    .local v0, i:I
    :goto_0
    iget v2, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    iget v3, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_2

    .line 575
    iget-object v2, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->ch:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isSpace(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 581
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v1

    .line 574
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 579
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isInElementContent()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    return v0
.end method

.method public reset(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;)V
    .locals 4
    .parameter "componentManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fDTDGrammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    .line 217
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    .line 218
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fInElementContent:Z

    .line 219
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fCurrentElementIndex:I

    .line 220
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fCurrentContentSpecType:I

    .line 222
    :try_start_0
    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fNamespaces:Z
    :try_end_0
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 228
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fElementDepth:I

    .line 229
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLConfigurationException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fNamespaces:Z

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
    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->fInCDATASection:Z

    .line 265
    return-void
.end method

.method public startElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;)V
    .locals 0
    .parameter "element"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/dtd/DTDGrammarUtil;->handleStartElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;)V

    .line 243
    return-void
.end method
