.class public final Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;
.super Ljava/lang/Object;
.source "DTDGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "QNameHashtable"
.end annotation


# static fields
.field private static final HASHTABLE_SIZE:I = 0x65

.field private static final INITIAL_BUCKET_SIZE:I = 0x4

.field public static final UNIQUE_STRINGS:Z = true


# instance fields
.field private fHashTable:[[Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 988
    const/16 v0, 0x65

    new-array v0, v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)I
    .locals 8
    .parameter "key"

    .prologue
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 1040
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->hash(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    rem-int/lit8 v2, v5, 0x65

    .line 1041
    .local v2, hash:I
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    aget-object v0, v5, v2

    .line 1043
    .local v0, bucket:[Ljava/lang/Object;
    if-nez v0, :cond_0

    move v5, v6

    .line 1055
    :goto_0
    return v5

    .line 1046
    :cond_0
    aget-object v5, v0, v7

    check-cast v5, [I

    check-cast v5, [I

    aget v1, v5, v7

    .line 1048
    .local v1, count:I
    const/4 v4, 0x1

    .line 1049
    .local v4, j:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 1050
    aget-object v5, v0, v4

    check-cast v5, Ljava/lang/String;

    if-ne v5, p1, :cond_1

    .line 1051
    add-int/lit8 v5, v4, 0x1

    aget-object v5, v0, v5

    check-cast v5, [I

    check-cast v5, [I

    aget v5, v5, v7

    goto :goto_0

    .line 1053
    :cond_1
    add-int/lit8 v4, v4, 0x2

    .line 1049
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v5, v6

    .line 1055
    goto :goto_0
.end method

.method protected hash(Ljava/lang/String;)I
    .locals 5
    .parameter "symbol"

    .prologue
    .line 1066
    if-nez p1, :cond_0

    .line 1067
    const/4 v3, 0x0

    .line 1074
    :goto_0
    return v3

    .line 1069
    :cond_0
    const/4 v0, 0x0

    .line 1070
    .local v0, code:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1071
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1072
    mul-int/lit8 v3, v0, 0x25

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v0, v3, v4

    .line 1071
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1074
    :cond_1
    const v3, 0x7ffffff

    and-int/2addr v3, v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 13
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 997
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->hash(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x2

    rem-int/lit8 v3, v10, 0x65

    .line 998
    .local v3, hash:I
    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    aget-object v0, v10, v3

    .line 1000
    .local v0, bucket:[Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 1001
    const/16 v10, 0x9

    new-array v0, v10, [Ljava/lang/Object;

    .line 1002
    new-array v10, v11, [I

    aput v11, v10, v12

    aput-object v10, v0, v12

    .line 1003
    aput-object p1, v0, v11

    .line 1004
    const/4 v10, 0x2

    new-array v11, v11, [I

    aput p2, v11, v12

    aput-object v11, v0, v10

    .line 1005
    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    aput-object v0, v10, v3

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    aget-object v10, v0, v12

    check-cast v10, [I

    check-cast v10, [I

    aget v1, v10, v12

    .line 1008
    .local v1, count:I
    mul-int/lit8 v10, v1, 0x2

    add-int/lit8 v8, v10, 0x1

    .line 1009
    .local v8, offset:I
    array-length v10, v0

    if-ne v8, v10, :cond_2

    .line 1010
    add-int/lit8 v7, v1, 0x4

    .line 1011
    .local v7, newSize:I
    mul-int/lit8 v10, v7, 0x2

    add-int/lit8 v10, v10, 0x1

    new-array v6, v10, [Ljava/lang/Object;

    .line 1012
    .local v6, newBucket:[Ljava/lang/Object;
    invoke-static {v0, v12, v6, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1013
    move-object v0, v6

    .line 1014
    iget-object v10, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar$QNameHashtable;->fHashTable:[[Ljava/lang/Object;

    aput-object v0, v10, v3

    .line 1016
    .end local v6           #newBucket:[Ljava/lang/Object;
    .end local v7           #newSize:I
    :cond_2
    const/4 v2, 0x0

    .line 1017
    .local v2, found:Z
    const/4 v5, 0x1

    .line 1018
    .local v5, j:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 1019
    aget-object v10, v0, v5

    check-cast v10, Ljava/lang/String;

    if-ne v10, p1, :cond_4

    .line 1020
    add-int/lit8 v10, v5, 0x1

    aget-object v10, v0, v10

    check-cast v10, [I

    check-cast v10, [I

    aput p2, v10, v12

    .line 1021
    const/4 v2, 0x1

    .line 1026
    :cond_3
    if-nez v2, :cond_0

    .line 1027
    add-int/lit8 v9, v8, 0x1

    .end local v8           #offset:I
    .local v9, offset:I
    aput-object p1, v0, v8

    .line 1028
    new-array v10, v11, [I

    aput p2, v10, v12

    aput-object v10, v0, v9

    .line 1029
    aget-object v10, v0, v12

    check-cast v10, [I

    check-cast v10, [I

    add-int/lit8 v1, v1, 0x1

    aput v1, v10, v12

    goto :goto_0

    .line 1024
    .end local v9           #offset:I
    .restart local v8       #offset:I
    :cond_4
    add-int/lit8 v5, v5, 0x2

    .line 1018
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
