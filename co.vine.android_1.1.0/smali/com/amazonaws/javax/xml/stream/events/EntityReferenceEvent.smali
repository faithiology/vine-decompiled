.class public Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;
.super Lcom/amazonaws/javax/xml/stream/events/DummyEvent;
.source "EntityReferenceEvent.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/events/EntityReference;


# instance fields
.field private fEntityDeclaration:Lcom/amazonaws/javax/xml/stream/events/EntityDeclaration;

.field private fEntityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/events/EntityDeclaration;)V
    .locals 0
    .parameter "entityName"
    .parameter "entityDeclaration"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;->init()V

    .line 64
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;->fEntityName:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;->fEntityDeclaration:Lcom/amazonaws/javax/xml/stream/events/EntityDeclaration;

    .line 66
    return-void
.end method


# virtual methods
.method public getDeclaration()Lcom/amazonaws/javax/xml/stream/events/EntityDeclaration;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;->fEntityDeclaration:Lcom/amazonaws/javax/xml/stream/events/EntityDeclaration;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;->fEntityName:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;->setEventType(I)V

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;->fEntityDeclaration:Lcom/amazonaws/javax/xml/stream/events/EntityDeclaration;

    invoke-interface {v1}, Lcom/amazonaws/javax/xml/stream/events/EntityDeclaration;->getReplacementText()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, text:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 75
    const-string v0, ""

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ";=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .locals 1
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 83
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/EntityReferenceEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 84
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 85
    return-void
.end method
