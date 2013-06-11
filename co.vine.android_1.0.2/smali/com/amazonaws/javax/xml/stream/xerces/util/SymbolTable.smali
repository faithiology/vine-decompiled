.class public Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;
    }
.end annotation


# static fields
.field protected static final TABLE_SIZE:I = 0xad


# instance fields
.field protected fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

.field protected fTableSize:I

.field protected symbolAsArray:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    const/16 v0, 0xad

    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;-><init>(I)V

    .line 151
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "tableSize"

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->symbolAsArray:[C

    .line 139
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    .line 155
    iput p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->fTableSize:I

    .line 156
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->fTableSize:I

    new-array v0, v0, [Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    .line 157
    return-void
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "symbol"

    .prologue
    const/4 v5, 0x0

    .line 174
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v2

    .line 175
    .local v2, hash:I
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->fTableSize:I

    rem-int v0, v2, v4

    .line 176
    .local v0, bucket:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 177
    .local v3, length:I
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    aget-object v1, v4, v0

    .local v1, entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;
    :goto_0
    if-eqz v1, :cond_1

    .line 178
    iget-object v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v4, v4

    if-ne v3, v4, :cond_0

    iget v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->hashCode:I

    if-ne v2, v4, :cond_0

    .line 179
    iget-object v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    invoke-virtual {p1, v5, v4, v5, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    iget-object v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->characters:[C

    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->symbolAsArray:[C

    .line 181
    iget-object v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    .line 203
    :goto_1
    return-object v4

    .line 177
    :cond_0
    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    goto :goto_0

    .line 199
    :cond_1
    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    .end local v1           #entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    aget-object v4, v4, v0

    invoke-direct {v1, p1, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;)V

    .line 200
    .restart local v1       #entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;
    iput v2, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->hashCode:I

    .line 201
    iget-object v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->characters:[C

    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->symbolAsArray:[C

    .line 202
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    aput-object v1, v4, v0

    .line 203
    iget-object v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto :goto_1
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 219
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->hash([CII)I

    move-result v2

    .line 220
    .local v2, hash:I
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->fTableSize:I

    rem-int v0, v2, v4

    .line 221
    .local v0, bucket:I
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    aget-object v1, v4, v0

    .local v1, entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;
    :goto_0
    if-eqz v1, :cond_3

    .line 222
    iget-object v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v4, v4

    if-ne p3, v4, :cond_0

    iget v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->hashCode:I

    if-ne v2, v4, :cond_0

    .line 223
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, p3, :cond_2

    .line 224
    add-int v4, p2, v3

    aget-char v4, p1, v4

    iget-object v5, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->characters:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_1

    .line 221
    .end local v3           #i:I
    :cond_0
    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    goto :goto_0

    .line 223
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 228
    :cond_2
    iget-object v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->characters:[C

    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->symbolAsArray:[C

    .line 229
    iget-object v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    .line 238
    .end local v3           #i:I
    :goto_2
    return-object v4

    .line 234
    :cond_3
    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    .end local v1           #entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    aget-object v4, v4, v0

    invoke-direct {v1, p1, p2, p3, v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;-><init>([CIILcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;)V

    .line 235
    .restart local v1       #entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    aput-object v1, v4, v0

    .line 236
    iput v2, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->hashCode:I

    .line 237
    iget-object v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->characters:[C

    iput-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->symbolAsArray:[C

    .line 238
    iget-object v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto :goto_2
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 6
    .parameter "symbol"

    .prologue
    const/4 v4, 0x0

    .line 291
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v2

    .line 292
    .local v2, hash:I
    iget v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->fTableSize:I

    rem-int v0, v2, v5

    .line 293
    .local v0, bucket:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 294
    .local v3, length:I
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    aget-object v1, v5, v0

    .local v1, entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;
    :goto_0
    if-eqz v1, :cond_0

    .line 295
    iget-object v5, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v5, v5

    if-ne v3, v5, :cond_1

    iget v5, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->hashCode:I

    if-ne v2, v5, :cond_1

    .line 296
    iget-object v5, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 297
    const/4 v4, 0x1

    .line 313
    :cond_0
    return v4

    .line 294
    :cond_1
    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    goto :goto_0
.end method

.method public containsSymbol([CII)Z
    .locals 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 328
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->hash([CII)I

    move-result v2

    .line 329
    .local v2, hash:I
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->fTableSize:I

    rem-int v0, v2, v4

    .line 330
    .local v0, bucket:I
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    aget-object v1, v4, v0

    .local v1, entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;
    :goto_0
    if-eqz v1, :cond_3

    .line 331
    iget-object v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v4, v4

    if-ne p3, v4, :cond_0

    iget v4, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->hashCode:I

    if-ne v2, v4, :cond_0

    .line 332
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, p3, :cond_2

    .line 333
    add-int v4, p2, v3

    aget-char v4, p1, v4

    iget-object v5, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->characters:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_1

    .line 330
    .end local v3           #i:I
    :cond_0
    iget-object v1, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    goto :goto_0

    .line 332
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 337
    :cond_2
    const/4 v4, 0x1

    .line 341
    .end local v3           #i:I
    :goto_2
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getCharArray()[C
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->symbolAsArray:[C

    return-object v0
.end method

.method public hash(Ljava/lang/String;)I
    .locals 5
    .parameter "symbol"

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, code:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 254
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 255
    mul-int/lit8 v3, v0, 0x25

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v0, v3, v4

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    const v3, 0x7ffffff

    and-int/2addr v3, v0

    return v3
.end method

.method public hash([CII)I
    .locals 4
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, code:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 276
    mul-int/lit8 v2, v0, 0x25

    add-int v3, p2, v1

    aget-char v3, p1, v3

    add-int v0, v2, v3

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_0
    const v2, 0x7ffffff

    and-int/2addr v2, v0

    return v2
.end method
