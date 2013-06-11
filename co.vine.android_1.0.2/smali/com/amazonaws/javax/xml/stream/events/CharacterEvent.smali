.class public Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;
.super Lcom/amazonaws/javax/xml/stream/events/DummyEvent;
.source "CharacterEvent.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/events/Characters;


# instance fields
.field private fCheckIfSpaceNeeded:Z

.field private fData:Ljava/lang/String;

.field private fIsCData:Z

.field private fIsIgnorableWhitespace:Z

.field private fIsSpace:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 65
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fIsSpace:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    .line 70
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fIsCData:Z

    .line 71
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 65
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fIsSpace:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    .line 79
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fIsCData:Z

    .line 80
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->init()V

    .line 81
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "data"
    .parameter "flag"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fIsSpace:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    .line 90
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->init()V

    .line 91
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    .line 92
    iput-boolean p2, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fIsCData:Z

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "data"
    .parameter "flag"
    .parameter "isIgnorableWhiteSpace"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fIsSpace:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    .line 102
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->init()V

    .line 103
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    .line 104
    iput-boolean p2, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fIsCData:Z

    .line 105
    iput-boolean p3, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fIsIgnorableWhitespace:Z

    .line 106
    return-void
.end method

.method private checkWhiteSpace()V
    .locals 2

    .prologue
    .line 202
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fIsSpace:Z

    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isSpace(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fIsSpace:Z

    .line 211
    .end local v0           #i:I
    :cond_0
    return-void

    .line 204
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->setEventType(I)V

    .line 110
    return-void
.end method

.method public isCData()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fIsCData:Z

    return v0
.end method

.method public isIgnorableWhiteSpace()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fIsIgnorableWhitespace:Z

    return v0
.end method

.method public isWhiteSpace()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->checkWhiteSpace()V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    .line 197
    :cond_0
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fIsSpace:Z

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fCheckIfSpaceNeeded:Z

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fIsCData:Z

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    goto :goto_0
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
    .line 166
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fIsCData:Z

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->fData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/javax/xml/stream/events/CharacterEvent;->charEncode(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0
.end method
