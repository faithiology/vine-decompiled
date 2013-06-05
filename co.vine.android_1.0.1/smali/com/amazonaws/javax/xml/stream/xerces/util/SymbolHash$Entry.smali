.class public final Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;
.super Ljava/lang/Object;
.source "SymbolHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Entry"
.end annotation


# instance fields
.field public key:Ljava/lang/Object;

.field public next:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    .line 263
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    .line 264
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    .line 265
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;)V
    .locals 0
    .parameter "key"
    .parameter "value"
    .parameter "next"

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    .line 269
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    .line 270
    iput-object p3, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    .line 271
    return-void
.end method


# virtual methods
.method public makeClone()Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;
    .locals 2

    .prologue
    .line 274
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;-><init>()V

    .line 275
    .local v0, entry:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    iput-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    .line 276
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    iput-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    .line 277
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->makeClone()Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolHash$Entry;

    .line 279
    :cond_0
    return-object v0
.end method
