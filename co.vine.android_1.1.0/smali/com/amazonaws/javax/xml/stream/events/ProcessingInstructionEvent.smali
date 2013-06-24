.class public Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;
.super Lcom/amazonaws/javax/xml/stream/events/DummyEvent;
.source "ProcessingInstructionEvent.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/events/ProcessingInstruction;


# instance fields
.field private fContent:Ljava/lang/String;

.field private fName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "targetName"
    .parameter "data"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;)V
    .locals 0
    .parameter "targetName"
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->init()V

    .line 74
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->fName:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->fContent:Ljava/lang/String;

    .line 76
    invoke-virtual {p0, p3}, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->fContent:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->fName:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->setEventType(I)V

    .line 81
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->fContent:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .parameter "targetName"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->fName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->fContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->fName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->fContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->fName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->fName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->fContent:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->fContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_2
    const-string v0, "<??>"

    goto :goto_0
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
    .line 113
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/ProcessingInstructionEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 114
    return-void
.end method
