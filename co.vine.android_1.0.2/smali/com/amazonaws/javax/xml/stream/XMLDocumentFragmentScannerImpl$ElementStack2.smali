.class public Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;
.super Ljava/lang/Object;
.source "XMLDocumentFragmentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ElementStack2"
.end annotation


# instance fields
.field protected fCount:I

.field protected fDepth:I

.field protected fLastDepth:I

.field protected fMark:I

.field protected fPosition:I

.field protected fQName:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;)V
    .locals 3
    .parameter

    .prologue
    .line 1988
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1970
    const/16 v1, 0x14

    new-array v1, v1, [Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 1989
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1990
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    aput-object v2, v1, v0

    .line 1989
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1992
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fMark:I

    .line 1993
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2109
    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fLastDepth:I

    .line 2110
    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    .line 2111
    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    .line 2112
    const/4 v0, 0x1

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fMark:I

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    .line 2113
    return-void
.end method

.method public getNext()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .locals 3

    .prologue
    .line 2094
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    if-ne v0, v1, :cond_0

    .line 2095
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fMark:I

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    .line 2097
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public matchElement(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Z
    .locals 4
    .parameter "element"

    .prologue
    .line 2031
    const/4 v0, 0x0

    .line 2032
    .local v0, match:Z
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fLastDepth:I

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 2036
    iget-object v1, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    .line 2037
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    .line 2040
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fMark:I

    .line 2042
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fMark:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fPosition:I

    .line 2043
    const/4 v0, 0x1

    .line 2045
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    .line 2059
    :cond_0
    :goto_0
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fLastDepth:I

    .line 2060
    return v0

    .line 2054
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    goto :goto_0
.end method

.method public nextElement()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2073
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 2074
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iput-boolean v2, v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fShouldSkip:Z

    .line 2075
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->this$0:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;

    iput-boolean v2, v0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl;->fAdd:Z

    .line 2079
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    aget-object v0, v0, v1

    .line 2084
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fCount:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public popElement()I
    .locals 2

    .prologue
    .line 2103
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fDepth:I

    return v0
.end method

.method public resize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2003
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    array-length v1, v3

    .line 2004
    .local v1, oldLength:I
    mul-int/lit8 v3, v1, 0x2

    new-array v2, v3, [Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 2005
    .local v2, tmp:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2006
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 2008
    move v0, v1

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 2009
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$ElementStack2;->fQName:[Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    new-instance v4, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v4}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    aput-object v4, v3, v0

    .line 2008
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2012
    :cond_0
    return-void
.end method
