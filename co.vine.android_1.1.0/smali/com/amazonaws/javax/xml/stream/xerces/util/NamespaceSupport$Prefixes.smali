.class public final Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "Prefixes"
.end annotation


# instance fields
.field private counter:I

.field private prefixes:[Ljava/lang/String;

.field private size:I

.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;[Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "prefixes"
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 482
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;->this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;->counter:I

    .line 477
    iput v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;->size:I

    .line 483
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;->prefixes:[Ljava/lang/String;

    .line 484
    iput p3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;->size:I

    .line 485
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    .prologue
    .line 491
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;->counter:I

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 498
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;->counter:I

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;->size:I

    if-ge v0, v1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;->this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;->counter:I

    aget-object v0, v0, v1

    return-object v0

    .line 501
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Illegal access to Namespace prefixes enumeration."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 506
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;->size:I

    if-ge v1, v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceSupport$Prefixes;->prefixes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 506
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
