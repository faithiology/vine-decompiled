.class Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$LargeContainer;
.super Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
.source "AugmentationsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LargeContainer"
.end annotation


# instance fields
.field final fAugmentations:Ljava/util/Hashtable;

.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;


# direct methods
.method constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$LargeContainer;->this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;

    invoke-direct {p0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl;)V

    .line 317
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 337
    return-void
.end method

.method public expand()Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
    .locals 0

    .prologue
    .line 344
    return-object p0
.end method

.method public getItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "item"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 349
    .local v0, buff:Ljava/lang/StringBuffer;
    const-string v3, "LargeContainer"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 352
    .local v2, keys:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 354
    .local v1, key:Ljava/lang/Object;
    const-string v3, "\nkey == "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 356
    const-string v3, "; value == "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/AugmentationsImpl$LargeContainer;->fAugmentations:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 360
    .end local v1           #key:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
