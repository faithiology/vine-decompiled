.class Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;
.super Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
.source "AugmentationsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmallContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;
    }
.end annotation


# static fields
.field static final SIZE_LIMIT:I = 0xa


# instance fields
.field final fAugmentations:[Ljava/lang/Object;

.field fNumEntries:I

.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;


# direct methods
.method constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;

    invoke-direct {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;)V

    .line 190
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    .line 288
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 247
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    aput-object v3, v1, v0

    .line 249
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object v3, v1, v2

    .line 247
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 252
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    .line 253
    return-void
.end method

.method public expand()Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
    .locals 5

    .prologue
    .line 260
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$LargeContainer;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;

    invoke-direct {v0, v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$LargeContainer;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;)V

    .line 262
    .local v0, expandedContainer:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$LargeContainer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$LargeContainer;->putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 267
    :cond_0
    return-object v0
.end method

.method public getItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 198
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    .line 204
    :goto_1
    return-object v1

    .line 198
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 204
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer$SmallContainerKeyEnumeration;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;)V

    return-object v0
.end method

.method public putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter "item"

    .prologue
    .line 208
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    .line 209
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aget-object v1, v2, v3

    .line 211
    .local v1, oldValue:Ljava/lang/Object;
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aput-object p2, v2, v3

    .line 221
    .end local v1           #oldValue:Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 208
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 217
    :cond_1
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v3, v3, 0x2

    aput-object p1, v2, v3

    .line 218
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aput-object p2, v2, v3

    .line 219
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    .line 221
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public removeItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 226
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_2

    .line 227
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    aget-object v2, v4, v5

    .line 230
    .local v2, oldValue:Ljava/lang/Object;
    move v1, v0

    .local v1, j:I
    :goto_1
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x2

    if-ge v1, v4, :cond_0

    .line 231
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x2

    aget-object v5, v5, v6

    aput-object v5, v4, v1

    .line 232
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x3

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    .line 230
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 235
    :cond_0
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    iget v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x2

    aput-object v3, v4, v5

    .line 236
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    iget v5, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x1

    aput-object v3, v4, v5

    .line 237
    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    .line 243
    .end local v1           #j:I
    .end local v2           #oldValue:Ljava/lang/Object;
    :goto_2
    return-object v2

    .line 226
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 243
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 272
    .local v0, buff:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "SmallContainer - fNumEntries == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fNumEntries:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 275
    const-string v2, "\nfAugmentations["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 277
    const-string v2, "] == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 279
    const-string v2, "; fAugmentations["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 281
    const-string v2, "] == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;->fAugmentations:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 274
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
