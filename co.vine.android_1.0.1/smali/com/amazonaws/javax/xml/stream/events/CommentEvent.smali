.class public Lcom/amazonaws/javax/xml/stream/events/CommentEvent;
.super Lcom/amazonaws/javax/xml/stream/events/DummyEvent;
.source "CommentEvent.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/events/Comment;


# instance fields
.field private fText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/CommentEvent;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 61
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/CommentEvent;->init()V

    .line 62
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/CommentEvent;->fText:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/CommentEvent;->fText:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/events/CommentEvent;->setEventType(I)V

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/CommentEvent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .locals 2
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/CommentEvent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 89
    return-void
.end method
