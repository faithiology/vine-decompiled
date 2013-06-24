.class public final Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Entry"
.end annotation


# instance fields
.field public characters:[C

.field hashCode:I

.field public next:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

.field public symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;)V
    .locals 3
    .parameter "symbol"
    .parameter "next"

    .prologue
    const/4 v2, 0x0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->hashCode:I

    .line 388
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->characters:[C

    .line 390
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v0, v0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->characters:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 391
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    .line 392
    return-void
.end method

.method public constructor <init>([CIILcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;)V
    .locals 2
    .parameter "ch"
    .parameter "offset"
    .parameter "length"
    .parameter "next"

    .prologue
    const/4 v1, 0x0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->hashCode:I

    .line 399
    new-array v0, p3, [C

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->characters:[C

    .line 400
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->characters:[C

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->characters:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    .line 402
    iput-object p4, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;->next:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable$Entry;

    .line 403
    return-void
.end method
