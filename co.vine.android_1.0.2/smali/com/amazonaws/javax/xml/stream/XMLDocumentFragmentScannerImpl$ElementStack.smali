.class public Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;
.super Ljava/lang/Object;
.source "XMLDocumentFragmentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ElementStack"
.end annotation


# instance fields
.field protected fCount:I

.field protected fDepth:I

.field protected fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

.field protected fInt:[I

.field protected fLastDepth:I

.field protected fMark:I

.field protected fPosition:I

.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x14

    .line 2151
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2132
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fInt:[I

    .line 2152
    new-array v1, v2, [Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 2153
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2154
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    aput-object v2, v1, v0

    .line 2153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2156
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2376
    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    .line 2377
    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fLastDepth:I

    .line 2378
    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fCount:I

    .line 2379
    const/4 v0, 0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fMark:I

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    .line 2381
    return-void
.end method

.method public getLastPoppedElement()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .locals 2

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNext()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .locals 2

    .prologue
    .line 2196
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fCount:I

    if-ne v0, v1, :cond_0

    .line 2197
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fMark:I

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    .line 2205
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public matchElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Z
    .locals 6
    .parameter "element"

    .prologue
    const/4 v1, 0x0

    .line 2231
    const/4 v0, 0x0

    .line 2232
    .local v0, match:Z
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fLastDepth:I

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 2237
    iget-object v2, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v2, v3, :cond_1

    .line 2238
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iput-boolean v1, v2, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    .line 2241
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fMark:I

    .line 2243
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fMark:I

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    .line 2244
    const/4 v0, 0x1

    .line 2246
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fCount:I

    .line 2265
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 2267
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fInt:[I

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    aput v4, v2, v3

    .line 2279
    :goto_1
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fCount:I

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    array-length v3, v3

    if-ne v2, v3, :cond_3

    .line 2280
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iput-boolean v1, v2, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fSkip:Z

    .line 2281
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iput-boolean v1, v2, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    .line 2283
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->reposition()V

    move v0, v1

    .line 2301
    .end local v0           #match:Z
    :goto_2
    return v0

    .line 2257
    .restart local v0       #match:Z
    :cond_1
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    goto :goto_0

    .line 2274
    :cond_2
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fInt:[I

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fCount:I

    add-int/lit8 v4, v4, -0x1

    aput v4, v2, v3

    goto :goto_1

    .line 2300
    :cond_3
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fLastDepth:I

    goto :goto_2
.end method

.method public nextElement()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2312
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v2, v2, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fSkip:Z

    if-eqz v2, :cond_0

    .line 2313
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    .line 2315
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fCount:I

    aget-object v2, v2, v3

    .line 2326
    :goto_0
    return-object v2

    .line 2317
    :cond_0
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 2318
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 2319
    .local v0, array:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2320
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 2321
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2322
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    new-instance v3, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    aput-object v3, v2, v1

    .line 2321
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2326
    .end local v0           #array:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    aget-object v2, v2, v3

    goto :goto_0
.end method

.method public popElement()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .locals 4

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v0, v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fSkip:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iget-boolean v0, v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    if-eqz v0, :cond_1

    .line 2348
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fInt:[I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    aget v1, v1, v2

    aget-object v0, v0, v1

    .line 2354
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public push()V
    .locals 4

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fInt:[I

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fPosition:I

    aput v2, v0, v1

    .line 2216
    return-void
.end method

.method public pushElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .locals 5
    .parameter "element"

    .prologue
    const/4 v4, 0x0

    .line 2177
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 2178
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 2179
    .local v0, array:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2180
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 2181
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2182
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    new-instance v3, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    aput-object v3, v2, v1

    .line 2181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2185
    .end local v0           #array:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 2186
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    aget-object v2, v2, v3

    return-object v2
.end method

.method public reposition()V
    .locals 5

    .prologue
    .line 2364
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fDepth:I

    if-gt v0, v1, :cond_0

    .line 2365
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack;->fInt:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 2364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2372
    :cond_0
    return-void
.end method
