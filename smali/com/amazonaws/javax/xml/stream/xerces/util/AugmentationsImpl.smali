.class public Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;
.super Ljava/lang/Object;
.source "AugmentationsImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/Augmentations;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$LargeContainer;,
        Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;,
        Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
    }
.end annotation


# instance fields
.field private fAugmentationsContainer:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$SmallContainer;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    .line 316
    return-void
.end method


# virtual methods
.method public getItem(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->getItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .parameter "item"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v1, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, oldValue:Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->isFull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->expand()Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    .line 133
    :cond_0
    return-object v0
.end method

.method public removeAllItems()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->clear()V

    .line 172
    return-void
.end method

.method public removeItem(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->removeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
