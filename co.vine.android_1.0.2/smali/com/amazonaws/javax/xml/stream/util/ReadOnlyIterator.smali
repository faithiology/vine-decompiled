.class public Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;
.super Ljava/lang/Object;
.source "ReadOnlyIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;->iterator:Ljava/util/Iterator;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .parameter "itr"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;->iterator:Ljava/util/Iterator;

    .line 57
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;->iterator:Ljava/util/Iterator;

    .line 58
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;->iterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;->iterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/util/ReadOnlyIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove operation is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
