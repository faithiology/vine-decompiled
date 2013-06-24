.class public Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;
.super Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;
.source "XMLAttributesIteratorImpl.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field protected fCurrent:I

.field protected fLastReturnedItem:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->fCurrent:I

    .line 70
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->fCurrent:I

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->fCurrent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->fCurrent:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->fLastReturnedItem:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    return-object v0

    .line 82
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->fLastReturnedItem:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->fAttributes:[Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl$Attribute;

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->fCurrent:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    if-ne v0, v1, :cond_0

    .line 90
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->fCurrent:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->fCurrent:I

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->removeAttributeAt(I)V

    .line 97
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public removeAllAttributes()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->fCurrent:I

    .line 102
    return-void
.end method
