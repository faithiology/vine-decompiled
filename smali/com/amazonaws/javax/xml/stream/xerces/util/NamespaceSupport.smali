.class public Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;,
        Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$IteratorPrefixes;
    }
.end annotation


# instance fields
.field protected fContext:[I

.field protected fCurrentContext:I

.field protected fNamespace:[Ljava/lang/String;

.field protected fNamespaceSize:I

.field protected fPrefixes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    .line 144
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fContext:[I

    .line 149
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    .line 157
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/16 v3, 0x20

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    .line 144
    const/16 v3, 0x8

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fContext:[I

    .line 149
    const/16 v3, 0x10

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->pushContext()V

    .line 166
    invoke-interface {p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->getAllPrefixes()Ljava/util/Enumeration;

    move-result-object v1

    .line 167
    .local v1, prefixes:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    .local v0, prefix:Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, uri:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 172
    .end local v0           #prefix:Ljava/lang/String;
    .end local v2           #uri:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public containsPrefix(Ljava/lang/String;)Z
    .locals 3
    .parameter "prefix"

    .prologue
    .line 397
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_1

    .line 398
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_0

    .line 399
    const/4 v1, 0x1

    .line 404
    :goto_1
    return v1

    .line 397
    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 404
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public containsPrefixInCurrentContext(Ljava/lang/String;)Z
    .locals 3
    .parameter "prefix"

    .prologue
    .line 418
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fContext:[I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v0, v1, v2

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    if-ge v0, v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 420
    const/4 v1, 0x1

    .line 425
    :goto_1
    return v1

    .line 418
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 425
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "prefix"
    .parameter "uri"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 232
    sget-object v4, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-eq p1, v4, :cond_0

    sget-object v4, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne p1, v4, :cond_1

    :cond_0
    move v2, v3

    .line 261
    :goto_0
    return v2

    .line 237
    :cond_1
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fContext:[I

    iget v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v4, v4, v5

    if-le v0, v4, :cond_3

    .line 238
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v5, v0, -0x2

    aget-object v4, v4, v5

    if-ne v4, p1, :cond_2

    .line 245
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    aput-object p2, v3, v4

    goto :goto_0

    .line 237
    :cond_2
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 251
    :cond_3
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v5, v5

    if-ne v4, v5, :cond_4

    .line 252
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    .line 253
    .local v1, namespacearray:[Ljava/lang/String;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    invoke-static {v4, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    .line 258
    .end local v1           #namespacearray:[Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    aput-object p1, v3, v4

    .line 259
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    aput-object p2, v3, v4

    goto :goto_0
.end method

.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 9

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, count:I
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    array-length v7, v7

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v8, v8

    div-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_0

    .line 347
    iget v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    new-array v5, v7, [Ljava/lang/String;

    .line 348
    .local v5, prefixes:[Ljava/lang/String;
    iput-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    .line 350
    .end local v5           #prefixes:[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .line 351
    .local v4, prefix:Ljava/lang/String;
    const/4 v6, 0x1

    .line 352
    .local v6, unique:Z
    const/4 v2, 0x2

    .local v2, i:I
    :goto_0
    iget v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v7, v7, -0x2

    if-ge v2, v7, :cond_4

    .line 353
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v8, v2, 0x2

    aget-object v4, v7, v8

    .line 354
    const/4 v3, 0x0

    .local v3, k:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 355
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    aget-object v7, v7, v3

    if-ne v7, v4, :cond_3

    .line 356
    const/4 v6, 0x0

    .line 360
    :cond_1
    if-eqz v6, :cond_2

    .line 361
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    aput-object v4, v7, v0

    move v0, v1

    .line 363
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_2
    const/4 v6, 0x1

    .line 352
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 354
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 365
    .end local v3           #k:I
    :cond_4
    new-instance v7, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    invoke-direct {v7, p0, v8, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;[Ljava/lang/String;I)V

    return-object v7
.end method

.method public getDeclaredPrefixAt(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fContext:[I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v1, v1, v2

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDeclaredPrefixCount()I
    .locals 3

    .prologue
    .line 306
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fContext:[I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 289
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_1

    .line 290
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    .line 297
    :goto_1
    return-object v1

    .line 289
    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 297
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getPrefixes()Ljava/util/Iterator;
    .locals 9

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, count:I
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    array-length v7, v7

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v8, v8

    div-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_0

    .line 320
    iget v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    new-array v5, v7, [Ljava/lang/String;

    .line 321
    .local v5, prefixes:[Ljava/lang/String;
    iput-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    .line 323
    .end local v5           #prefixes:[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .line 324
    .local v4, prefix:Ljava/lang/String;
    const/4 v6, 0x1

    .line 325
    .local v6, unique:Z
    const/4 v2, 0x2

    .local v2, i:I
    :goto_0
    iget v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v7, v7, -0x2

    if-ge v2, v7, :cond_4

    .line 326
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v8, v2, 0x2

    aget-object v4, v7, v8

    .line 327
    const/4 v3, 0x0

    .local v3, k:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 328
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    aget-object v7, v7, v3

    if-ne v7, v4, :cond_3

    .line 329
    const/4 v6, 0x0

    .line 333
    :cond_1
    if-eqz v6, :cond_2

    .line 334
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    aput-object v4, v7, v0

    move v0, v1

    .line 336
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_2
    const/4 v6, 0x1

    .line 325
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 327
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 338
    .end local v3           #k:I
    :cond_4
    new-instance v7, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$IteratorPrefixes;

    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    invoke-direct {v7, p0, v8, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$IteratorPrefixes;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;[Ljava/lang/String;I)V

    return-object v7
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Vector;
    .locals 7
    .parameter "uri"

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, count:I
    const/4 v2, 0x0

    .line 371
    .local v2, prefix:Ljava/lang/String;
    const/4 v4, 0x1

    .line 372
    .local v4, unique:Z
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 373
    .local v3, prefixList:Ljava/util/Vector;
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_1

    .line 374
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    aget-object v5, v5, v6

    if-ne v5, p1, :cond_0

    .line 375
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v6, v1, -0x2

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 376
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v6, v1, -0x2

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_0
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    .line 379
    :cond_1
    return-object v3
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "prefix"

    .prologue
    .line 271
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_1

    .line 272
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    .line 278
    :goto_1
    return-object v1

    .line 271
    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 278
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public popContext()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fContext:[I

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v0, v0, v1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    .line 225
    return-void
.end method

.method public pushContext()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 207
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fContext:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 208
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fContext:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 209
    .local v0, contextarray:[I
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fContext:[I

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fContext:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fContext:[I

    .line 214
    .end local v0           #contextarray:[I
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fContext:[I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fCurrentContext:I

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    aput v3, v1, v2

    .line 216
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 185
    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    .line 186
    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fCurrentContext:I

    .line 189
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 190
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 192
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 193
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 195
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fContext:[I

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fCurrentContext:I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fNamespaceSize:I

    aput v2, v0, v1

    .line 198
    return-void
.end method
