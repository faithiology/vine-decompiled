.class public Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;
.super Lcom/amazonaws/javax/xml/stream/Entity;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScannedEntity"
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_INTERNAL_BUFFER_SIZE:I = 0x400

.field public static final DEFAULT_XMLDECL_BUFFER_SIZE:I = 0x40


# instance fields
.field public ch:[C

.field public columnNumber:I

.field public count:I

.field public encoding:Ljava/lang/String;

.field public entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

.field public fBufferSize:I

.field public fLastCount:I

.field public fTotalCountTillLastLoad:I

.field public isExternal:Z

.field public lineNumber:I

.field public literal:Z

.field public mayReadChunks:Z

.field public position:I

.field public reader:Ljava/io/Reader;

.field public stream:Ljava/io/InputStream;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/io/InputStream;Ljava/io/Reader;Ljava/lang/String;ZZZ)V
    .locals 4
    .parameter "name"
    .parameter "entityLocation"
    .parameter "stream"
    .parameter "reader"
    .parameter "encoding"
    .parameter "literal"
    .parameter "mayReadChunks"
    .parameter "isExternal"

    .prologue
    const/4 v3, 0x1

    .line 443
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/Entity;-><init>()V

    .line 323
    const/16 v2, 0x2000

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    .line 369
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    .line 377
    iput v3, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->lineNumber:I

    .line 378
    iput v3, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->columnNumber:I

    .line 444
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->name:Ljava/lang/String;

    .line 445
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    .line 446
    iput-object p3, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    .line 447
    iput-object p4, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    .line 448
    iput-object p5, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    .line 449
    iput-boolean p6, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->literal:Z

    .line 450
    iput-boolean p7, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->mayReadChunks:Z

    .line 451
    iput-boolean p8, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->isExternal:Z

    .line 452
    if-eqz p8, :cond_1

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->fBufferSize:I

    .line 453
    .local v1, size:I
    :goto_0
    invoke-static {}, Lcom/amazonaws/javax/xml/stream/util/ThreadLocalBufferAllocator;->getBufferAllocator()Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;

    move-result-object v0

    .line 454
    .local v0, ba:Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;
    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->getCharBuffer(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    .line 455
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    if-nez v2, :cond_0

    .line 456
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    .line 458
    :cond_0
    return-void

    .line 452
    .end local v0           #ba:Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;
    .end local v1           #size:I
    :cond_1
    const/16 v1, 0x400

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-static {}, Lcom/amazonaws/javax/xml/stream/util/ThreadLocalBufferAllocator;->getBufferAllocator()Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;

    move-result-object v0

    .line 465
    .local v0, ba:Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/util/BufferAllocator;->returnCharBuffer([C)V

    .line 466
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    .line 467
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 468
    return-void
.end method

.method public getEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEntityReader()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public getEntityVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final isExternal()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->isExternal:Z

    return v0
.end method

.method public final isUnparsed()Z
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public setEntityVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->version:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 491
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 492
    .local v0, str:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ",ch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->ch:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ",position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
