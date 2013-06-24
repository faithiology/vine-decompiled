.class public Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;
.super Ljava/lang/Object;
.source "XMLAttributesImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLAttributes;
.implements Lcom/amazonaws/javax/xml/stream/XMLBufferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    }
.end annotation


# static fields
.field protected static final SIZE_LIMIT:I = 0x14

.field protected static final TABLE_SIZE:I = 0x65


# instance fields
.field protected fAttributeTableView:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

.field protected fAttributeTableViewChainState:[I

.field protected fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

.field protected fIsTableViewConsistent:Z

.field protected fLargeCount:I

.field protected fLength:I

.field protected fNamespaces:Z

.field protected fTableViewBuckets:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 190
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;-><init>(I)V

    .line 191
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "tableSize"

    .prologue
    const/4 v1, 0x1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    .line 152
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLargeCount:I

    .line 158
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 197
    iput p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    .line 198
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v2, v1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method


# virtual methods
.method public addAttribute(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "name"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->addAttribute(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)I

    move-result v0

    return v0
.end method

.method public addAttribute(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)I
    .locals 11
    .parameter "name"
    .parameter "type"
    .parameter "value"
    .parameter "valueCache"

    .prologue
    const/16 v10, 0x14

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 257
    iget v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v6, v10, :cond_4

    .line 258
    iget-object v6, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v7, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 262
    .local v5, index:I
    :goto_0
    if-ne v5, v9, :cond_2

    .line 263
    iget v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    .line 264
    iget v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    if-ne v6, v7, :cond_2

    .line 265
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v6, v6

    add-int/lit8 v6, v6, 0x4

    new-array v1, v6, [Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 266
    .local v1, attributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v6

    .local v4, i:I
    :goto_1
    array-length v6, v1

    if-ge v4, v6, :cond_1

    .line 268
    new-instance v6, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v6, v1, v4

    .line 267
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 258
    .end local v1           #attributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .end local v4           #i:I
    .end local v5           #index:I
    :cond_0
    iget-object v6, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 270
    .restart local v1       #attributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .restart local v4       #i:I
    .restart local v5       #index:I
    :cond_1
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 346
    .end local v1           #attributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .end local v4           #i:I
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v6, v5

    .line 347
    .local v0, attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v6, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v6, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 348
    iput-object p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 349
    iput-object p3, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 350
    iput-object p4, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->xmlValue:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    .line 351
    iput-object p3, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 352
    iput-boolean v8, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    .line 355
    iget-object v6, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->augs:Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;

    if-eqz v6, :cond_3

    .line 356
    iget-object v6, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->augs:Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;

    invoke-interface {v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;->removeAllItems()V

    .line 358
    :cond_3
    return v5

    .line 274
    .end local v0           #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .end local v5           #index:I
    :cond_4
    iget-object v6, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v7, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .restart local v5       #index:I
    if-ne v5, v9, :cond_2

    .line 286
    .end local v5           #index:I
    :cond_5
    iget-boolean v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-ne v6, v10, :cond_7

    .line 287
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->prepareAndPopulateTableView()V

    .line 288
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    .line 291
    :cond_7
    iget-object v6, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v2

    .line 295
    .local v2, bucket:I
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v6, v6, v2

    iget v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v6, v7, :cond_a

    .line 296
    iget v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    .line 297
    .restart local v5       #index:I
    iget v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    if-ne v6, v7, :cond_9

    .line 298
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 299
    .restart local v1       #attributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v6

    .restart local v4       #i:I
    :goto_3
    array-length v6, v1

    if-ge v4, v6, :cond_8

    .line 301
    new-instance v6, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v6, v1, v4

    .line 300
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 303
    :cond_8
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 307
    .end local v1           #attributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .end local v4           #i:I
    :cond_9
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    iget v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v7, v6, v2

    .line 308
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v6, v6, v5

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 309
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v7, v7, v5

    aput-object v7, v6, v2

    goto/16 :goto_2

    .line 315
    .end local v5           #index:I
    :cond_a
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v3, v6, v2

    .line 316
    .local v3, found:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    :goto_4
    if-eqz v3, :cond_b

    .line 317
    iget-object v6, v3, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v6, v6, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v7, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v6, v7, :cond_c

    .line 323
    :cond_b
    if-nez v3, :cond_f

    .line 324
    iget v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    .line 325
    .restart local v5       #index:I
    iget v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    if-ne v6, v7, :cond_e

    .line 326
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 327
    .restart local v1       #attributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v6

    .restart local v4       #i:I
    :goto_5
    array-length v6, v1

    if-ge v4, v6, :cond_d

    .line 329
    new-instance v6, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v6, v1, v4

    .line 328
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 320
    .end local v1           #attributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .end local v4           #i:I
    .end local v5           #index:I
    :cond_c
    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 321
    goto :goto_4

    .line 331
    .restart local v1       #attributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .restart local v4       #i:I
    .restart local v5       #index:I
    :cond_d
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 335
    .end local v1           #attributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .end local v4           #i:I
    :cond_e
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v6, v6, v5

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v7, v7, v2

    iput-object v7, v6, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 336
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v7, v7, v5

    aput-object v7, v6, v2

    goto/16 :goto_2

    .line 340
    .end local v5           #index:I
    :cond_f
    iget-object v6, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v5

    .restart local v5       #index:I
    goto/16 :goto_2
.end method

.method public addAttributeNS(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "name"
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 932
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    .line 933
    .local v3, index:I
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v5, v5

    if-ne v4, v5, :cond_2

    .line 935
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v5, 0x14

    if-ge v4, v5, :cond_0

    .line 936
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x4

    new-array v1, v4, [Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 941
    .local v1, attributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    :goto_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 942
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v2, v4

    .local v2, i:I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 943
    new-instance v4, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v4, v1, v2

    .line 942
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 939
    .end local v1           #attributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .end local v2           #i:I
    :cond_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .restart local v1       #attributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    goto :goto_0

    .line 945
    .restart local v2       #i:I
    :cond_1
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 949
    .end local v1           #attributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .end local v2           #i:I
    :cond_2
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v4, v3

    .line 950
    .local v0, attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v4, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 951
    iput-object p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 952
    iput-object p3, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 953
    iput-object p3, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 954
    iput-boolean v6, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    .line 957
    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->augs:Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;

    if-eqz v4, :cond_3

    .line 958
    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->augs:Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;->removeAllItems()V

    .line 959
    :cond_3
    return-void
.end method

.method public checkDuplicatesNS()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 975
    iget v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v9, 0x14

    if-gt v8, v9, :cond_3

    .line 976
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_0

    .line 977
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v8, v5

    .line 978
    .local v0, att1:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    add-int/lit8 v6, v5, 0x1

    .local v6, j:I
    :goto_1
    iget v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v6, v8, :cond_2

    .line 979
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v8, v6

    .line 980
    .local v1, att2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v8, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v9, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v9, v9, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v8, v9, :cond_1

    iget-object v8, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v9, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v9, v9, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v8, v9, :cond_1

    .line 982
    iget-object v7, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 1028
    .end local v0           #att1:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .end local v1           #att2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .end local v6           #j:I
    :cond_0
    :goto_2
    return-object v7

    .line 978
    .restart local v0       #att1:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .restart local v1       #att2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .restart local v6       #j:I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 976
    .end local v1           #att2:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 991
    .end local v0           #att1:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .end local v5           #i:I
    .end local v6           #j:I
    :cond_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    .line 993
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->prepareTableView()V

    .line 998
    iget v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v5, v8, -0x1

    .restart local v5       #i:I
    :goto_3
    if-ltz v5, :cond_0

    .line 999
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v2, v8, v5

    .line 1000
    .local v2, attr:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v8, v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v9, v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v9, v9, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1004
    .local v3, bucket:I
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v8, v8, v3

    iget v9, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v8, v9, :cond_4

    .line 1005
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    iget v9, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v9, v8, v3

    .line 1006
    iput-object v7, v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 1007
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v2, v8, v3

    .line 998
    :goto_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 1013
    :cond_4
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v4, v8, v3

    .line 1014
    .local v4, found:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    :goto_5
    if-eqz v4, :cond_6

    .line 1015
    iget-object v8, v4, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v9, v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v9, v9, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v8, v9, :cond_5

    iget-object v8, v4, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v8, v8, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v9, v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v9, v9, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v8, v9, :cond_5

    .line 1017
    iget-object v7, v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    goto :goto_2

    .line 1019
    :cond_5
    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 1020
    goto :goto_5

    .line 1023
    :cond_6
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v8, v8, v3

    iput-object v8, v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 1024
    iget-object v8, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v2, v8, v3

    goto :goto_4
.end method

.method protected cleanTableView()V
    .locals 3

    .prologue
    .line 1105
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLargeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-gez v1, :cond_1

    .line 1107
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    if-eqz v1, :cond_0

    .line 1108
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1109
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 1108
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1112
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLargeCount:I

    .line 1114
    :cond_1
    return-void
.end method

.method public getAugmentations(I)Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;
    .locals 1
    .parameter "attributeIndex"

    .prologue
    .line 834
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_1

    .line 835
    :cond_0
    const/4 v0, 0x0

    .line 837
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->augs:Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;

    goto :goto_0
.end method

.method public getAugmentations(Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;
    .locals 2
    .parameter "qName"

    .prologue
    .line 823
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 824
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->augs:Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;
    .locals 2
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 809
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 810
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->augs:Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 3
    .parameter "qName"

    .prologue
    .line 636
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v1, v2, :cond_1

    .line 637
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v2, v1

    .line 638
    .local v0, attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    .end local v0           #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .end local v1           #i:I
    :goto_1
    return v1

    .line 636
    .restart local v0       #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 643
    .end local v0           #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "localPart"

    .prologue
    .line 656
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v1, v2, :cond_2

    .line 657
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v2, v1

    .line 658
    .local v0, attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_1

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 665
    .end local v0           #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v1

    .line 656
    .restart local v0       #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 665
    .end local v0           #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getIndexByLocalName(Ljava/lang/String;)I
    .locals 3
    .parameter "localPart"

    .prologue
    .line 677
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v1, v2, :cond_1

    .line 678
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v2, v1

    .line 679
    .local v0, attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 684
    .end local v0           #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .end local v1           #i:I
    :goto_1
    return v1

    .line 677
    .restart local v0       #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 684
    .end local v0           #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getIndexFast(Ljava/lang/String;)I
    .locals 3
    .parameter "qName"

    .prologue
    .line 895
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v1, v2, :cond_1

    .line 896
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v2, v1

    .line 897
    .local v0, attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v2, p1, :cond_0

    .line 901
    .end local v0           #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .end local v1           #i:I
    :goto_1
    return v1

    .line 895
    .restart local v0       #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 901
    .end local v0           #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getIndexFast(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "localPart"

    .prologue
    .line 1046
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v1, v2, :cond_1

    .line 1047
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v2, v1

    .line 1048
    .local v0, attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v2, p2, :cond_0

    iget-object v2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v2, p1, :cond_0

    .line 1053
    .end local v0           #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .end local v1           #i:I
    :goto_1
    return v1

    .line 1046
    .restart local v0       #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1053
    .end local v0           #attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    if-nez v0, :cond_0

    .line 698
    const-string v0, ""

    .line 703
    :goto_0
    return-object v0

    .line 700
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_2

    .line 701
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 618
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_1

    .line 619
    :cond_0
    const/4 v0, 0x0

    .line 621
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName(ILcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V
    .locals 1
    .parameter "attrIndex"
    .parameter "attrName"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {p2, v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 410
    return-void
.end method

.method public getNonNormalizedValue(I)Ljava/lang/String;
    .locals 2
    .parameter "attrIndex"

    .prologue
    .line 471
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 472
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 757
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v1, :cond_2

    .line 758
    :cond_0
    const/4 v0, 0x0

    .line 762
    :cond_1
    :goto_0
    return-object v0

    .line 760
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 762
    .local v0, prefix:Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 716
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v1, :cond_2

    .line 717
    :cond_0
    const/4 v0, 0x0

    .line 720
    :cond_1
    :goto_0
    return-object v0

    .line 719
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 720
    .local v0, rawname:Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0
.end method

.method public getQualifiedName(I)Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .locals 1
    .parameter "index"

    .prologue
    .line 724
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_1

    .line 725
    :cond_0
    const/4 v0, 0x0

    .line 727
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    goto :goto_0
.end method

.method protected getReportableType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 1064
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1065
    const-string p1, "NMTOKEN"

    .line 1067
    .end local p1
    :cond_0
    return-object p1
.end method

.method public getSchemaId(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 865
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_1

    .line 866
    :cond_0
    const/4 v0, 0x0

    .line 868
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->schemaId:Z

    goto :goto_0
.end method

.method public getSchemaId(Ljava/lang/String;)Z
    .locals 2
    .parameter "qname"

    .prologue
    .line 871
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 872
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->schemaId:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSchemaId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "uri"
    .parameter "localName"

    .prologue
    const/4 v1, 0x0

    .line 875
    iget-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    if-nez v2, :cond_1

    .line 879
    :cond_0
    :goto_0
    return v1

    .line 878
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 879
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->schemaId:Z

    goto :goto_0
.end method

.method protected getTableViewBucket(Ljava/lang/String;)I
    .locals 2
    .parameter "qname"

    .prologue
    .line 1079
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr v0, v1

    return v0
.end method

.method protected getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "localpart"
    .parameter "uri"

    .prologue
    const v2, 0x7fffffff

    .line 1092
    if-nez p2, :cond_0

    .line 1093
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    and-int/2addr v0, v2

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr v0, v1

    .line 1096
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    and-int/2addr v0, v2

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr v0, v1

    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 533
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_1

    .line 534
    :cond_0
    const/4 v0, 0x0

    .line 536
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "qname"

    .prologue
    .line 551
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 552
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"
    .parameter "localName"

    .prologue
    const/4 v1, 0x0

    .line 744
    iget-boolean v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    if-nez v2, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-object v1

    .line 747
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 748
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 773
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v1, :cond_1

    .line 774
    :cond_0
    const/4 v0, 0x0

    .line 777
    :goto_0
    return-object v0

    .line 776
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 777
    .local v0, uri:Ljava/lang/String;
    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 569
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_1

    .line 570
    :cond_0
    const/4 v0, 0x0

    .line 574
    :goto_0
    return-object v0

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->xmlValue:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    if-eqz v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->xmlValue:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "qname"

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 590
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 591
    const/4 v1, 0x0

    .line 594
    :goto_0
    return-object v1

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->xmlValue:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 594
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"
    .parameter "localName"

    .prologue
    const/4 v1, 0x0

    .line 795
    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getIndexByLocalName(Ljava/lang/String;)I

    move-result v0

    .line 797
    .end local p1
    .local v0, index:I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    .line 795
    .end local v0           #index:I
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object p1, v1

    .end local p1
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public isSpecified(I)Z
    .locals 1
    .parameter "attrIndex"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    return v0
.end method

.method protected prepareAndPopulateTableView()V
    .locals 5

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->prepareTableView()V

    .line 1139
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v2, v3, :cond_1

    .line 1140
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v3, v2

    .line 1141
    .local v0, attr:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v3, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v1

    .line 1142
    .local v1, bucket:I
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v3, v3, v1

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v3, v4, :cond_0

    .line 1143
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v4, v3, v1

    .line 1144
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 1145
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v0, v3, v1

    .line 1139
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1149
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v3, v3, v1

    iput-object v3, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 1150
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v0, v3, v1

    goto :goto_1

    .line 1153
    .end local v0           #attr:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    .end local v1           #bucket:I
    :cond_1
    return-void
.end method

.method protected prepareTableView()V
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    if-nez v0, :cond_0

    .line 1121
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    new-array v0, v0, [Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    .line 1122
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    .line 1127
    :goto_0
    return-void

    .line 1125
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->cleanTableView()V

    goto :goto_0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 1160
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-lez v1, :cond_0

    .line 1161
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v0, v1, :cond_0

    .line 1162
    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->getValue(I)Ljava/lang/String;

    .line 1161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1165
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public refresh(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 1167
    return-void
.end method

.method public removeAllAttributes()V
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    .line 368
    return-void
.end method

.method public removeAttributeAt(I)V
    .locals 5
    .parameter "attrIndex"

    .prologue
    .line 379
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    .line 380
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v1, p1

    .line 382
    .local v0, removedAttr:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 388
    .end local v0           #removedAttr:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    :cond_0
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fLength:I

    .line 389
    return-void
.end method

.method public setAugmentations(ILcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;)V
    .locals 1
    .parameter "attrIndex"
    .parameter "augs"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iput-object p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->augs:Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;

    .line 848
    return-void
.end method

.method public setName(ILcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V
    .locals 1
    .parameter "attrIndex"
    .parameter "attrName"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v0, p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 399
    return-void
.end method

.method public setNamespaces(Z)V
    .locals 0
    .parameter "namespaces"

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    .line 217
    return-void
.end method

.method public setNonNormalizedValue(ILjava/lang/String;)V
    .locals 1
    .parameter "attrIndex"
    .parameter "attrValue"

    .prologue
    .line 457
    if-nez p2, :cond_0

    .line 458
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iput-object p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public setSchemaId(IZ)V
    .locals 1
    .parameter "attrIndex"
    .parameter "schemaId"

    .prologue
    .line 862
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->schemaId:Z

    .line 863
    return-void
.end method

.method public setSpecified(IZ)V
    .locals 1
    .parameter "attrIndex"
    .parameter "specified"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    .line 485
    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .locals 1
    .parameter "attrIndex"
    .parameter "attrType"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iput-object p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setURI(ILjava/lang/String;)V
    .locals 1
    .parameter "attrIndex"
    .parameter "uri"

    .prologue
    .line 857
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iput-object p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 858
    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 1
    .parameter "attrIndex"
    .parameter "attrValue"

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->setValue(ILjava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V

    .line 440
    return-void
.end method

.method public setValue(ILjava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;)V
    .locals 2
    .parameter "attrIndex"
    .parameter "attrValue"
    .parameter "value"

    .prologue
    .line 443
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v1, p1

    .line 444
    .local v0, attribute:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;
    iput-object p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    .line 445
    iput-object p2, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    .line 446
    iput-object p3, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;->xmlValue:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    .line 447
    return-void
.end method
