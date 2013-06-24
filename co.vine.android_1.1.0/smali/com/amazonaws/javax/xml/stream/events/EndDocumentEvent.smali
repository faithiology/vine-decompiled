.class public Lcom/amazonaws/javax/xml/stream/events/EndDocumentEvent;
.super Lcom/amazonaws/javax/xml/stream/events/DummyEvent;
.source "EndDocumentEvent.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/events/EndDocument;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/EndDocumentEvent;->init()V

    .line 59
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/events/EndDocumentEvent;->setEventType(I)V

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "ENDDOCUMENT"

    return-object v0
.end method

.method protected writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .locals 0
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    return-void
.end method
