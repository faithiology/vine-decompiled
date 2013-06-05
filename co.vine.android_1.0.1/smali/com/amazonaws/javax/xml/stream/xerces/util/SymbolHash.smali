.class public Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;
.super Ljava/lang/Object;
.source "SymbolHash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;
    }
.end annotation


# instance fields
.field protected fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

.field protected fNum:I

.field protected fTableSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/16 v0, 0x65

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fTableSize:I

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fNum:I

    .line 131
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fTableSize:I

    new-array v0, v0, [Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    .line 132
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/16 v0, 0x65

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fTableSize:I

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fNum:I

    .line 140
    iput p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fTableSize:I

    .line 141
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fTableSize:I

    new-array v0, v0, [Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    .line 142
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 231
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fTableSize:I

    if-ge v0, v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fNum:I

    .line 235
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"

    .prologue
    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fTableSize:I

    rem-int v0, v2, v3

    .line 180
    .local v0, bucket:I
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->search(Ljava/lang/Object;I)Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    move-result-object v1

    .line 181
    .local v1, entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;
    if-eqz v1, :cond_0

    .line 182
    iget-object v2, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    .line 184
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fNum:I

    return v0
.end method

.method public getValues([Ljava/lang/Object;I)I
    .locals 5
    .parameter "elements"
    .parameter "from"

    .prologue
    .line 204
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fTableSize:I

    if-ge v1, v3, :cond_1

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fNum:I

    if-ge v2, v3, :cond_1

    .line 205
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    aget-object v0, v3, v1

    .local v0, entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;
    :goto_1
    if-eqz v0, :cond_0

    .line 206
    add-int v3, p2, v2

    iget-object v4, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 207
    add-int/lit8 v2, v2, 0x1

    .line 205
    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    goto :goto_1

    .line 204
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v0           #entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;
    :cond_1
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fNum:I

    return v3
.end method

.method public makeClone()Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;
    .locals 4

    .prologue
    .line 217
    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fTableSize:I

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;-><init>(I)V

    .line 218
    .local v1, newTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fNum:I

    iput v2, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fNum:I

    .line 219
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fTableSize:I

    if-ge v0, v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->makeClone()Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    move-result-object v3

    aput-object v3, v2, v0

    .line 219
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_1
    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fTableSize:I

    rem-int v0, v2, v3

    .line 158
    .local v0, bucket:I
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->search(Ljava/lang/Object;I)Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    move-result-object v1

    .line 161
    .local v1, entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;
    if-eqz v1, :cond_0

    .line 162
    iput-object p2, v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    .end local v1           #entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    aget-object v2, v2, v0

    invoke-direct {v1, p1, p2, v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;)V

    .line 167
    .restart local v1       #entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    aput-object v1, v2, v0

    .line 168
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fNum:I

    goto :goto_0
.end method

.method protected search(Ljava/lang/Object;I)Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;
    .locals 2
    .parameter "key"
    .parameter "bucket"

    .prologue
    .line 239
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;->fBuckets:[Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    aget-object v0, v1, p2

    .local v0, entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;
    :goto_0
    if-eqz v0, :cond_1

    .line 240
    iget-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    .end local v0           #entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;
    :goto_1
    return-object v0

    .line 239
    .restart local v0       #entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;
    :cond_0
    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    goto :goto_0

    .line 243
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
