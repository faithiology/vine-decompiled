.class public Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;
.super Ljava/lang/Object;
.source "XMLStreamWriterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ElementStack"
.end annotation


# instance fields
.field protected fDepth:S

.field protected fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;)V
    .locals 3
    .parameter

    .prologue
    .line 1932
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->this$0:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1933
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    .line 1935
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1936
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    new-instance v2, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    invoke-direct {v2, p1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;-><init>(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;)V

    aput-object v2, v1, v0

    .line 1935
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1938
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 2009
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    .line 2010
    return-void
.end method

.method public empty()Z
    .locals 1

    .prologue
    .line 2028
    iget-short v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public peek()Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    .locals 2

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-short v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public pop()Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    .locals 2

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-short v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    aget-object v0, v0, v1

    return-object v0
.end method

.method public push(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;)Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    .locals 5
    .parameter "element"

    .prologue
    const/4 v4, 0x0

    .line 1954
    iget-short v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 1955
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    .line 1956
    .local v0, array:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-short v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1957
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    .line 1959
    iget-short v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1960
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    new-instance v3, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->this$0:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    invoke-direct {v3, v4}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;-><init>(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;)V

    aput-object v3, v2, v1

    .line 1959
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1964
    .end local v0           #array:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-short v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 1966
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-short v3, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    add-int/lit8 v4, v3, 0x1

    int-to-short v4, v4

    iput-short v4, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    aget-object v2, v2, v3

    return-object v2
.end method

.method public push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    .locals 8
    .parameter "prefix"
    .parameter "localpart"
    .parameter "rawname"
    .parameter "uri"
    .parameter "isEmpty"

    .prologue
    const/4 v2, 0x0

    .line 1980
    iget-short v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v6, v0, [Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    .line 1982
    .local v6, array:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-short v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    invoke-static {v0, v2, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1983
    iput-object v6, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    .line 1985
    iget-short v7, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 1986
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    new-instance v1, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->this$0:Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;-><init>(Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl;)V

    aput-object v1, v0, v7

    .line 1985
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1990
    .end local v6           #array:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;
    .end local v7           #i:I
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-short v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    aget-object v0, v0, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1992
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-short v1, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lcom/amazonaws/javax/xml/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    aget-object v0, v0, v1

    return-object v0
.end method
