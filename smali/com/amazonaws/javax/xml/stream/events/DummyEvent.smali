.class public abstract Lcom/amazonaws/javax/xml/stream/events/DummyEvent;
.super Ljava/lang/Object;
.source "DummyEvent.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/events/XMLEvent;


# instance fields
.field private fEventType:I

.field protected fLocation:Lcom/amazonaws/javax/xml/stream/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->fLocation:Lcom/amazonaws/javax/xml/stream/Location;

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->fLocation:Lcom/amazonaws/javax/xml/stream/Location;

    .line 75
    iput p1, p0, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->fEventType:I

    .line 76
    return-void
.end method


# virtual methods
.method public asCharacters()Lcom/amazonaws/javax/xml/stream/events/Characters;
    .locals 0

    .prologue
    .line 127
    check-cast p0, Lcom/amazonaws/javax/xml/stream/events/Characters;

    .end local p0
    return-object p0
.end method

.method public asEndElement()Lcom/amazonaws/javax/xml/stream/events/EndElement;
    .locals 0

    .prologue
    .line 134
    check-cast p0, Lcom/amazonaws/javax/xml/stream/events/EndElement;

    .end local p0
    return-object p0
.end method

.method public asStartElement()Lcom/amazonaws/javax/xml/stream/events/StartElement;
    .locals 0

    .prologue
    .line 141
    check-cast p0, Lcom/amazonaws/javax/xml/stream/events/StartElement;

    .end local p0
    return-object p0
.end method

.method protected charEncode(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 4
    .parameter "writer"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    if-eqz p2, :cond_0

    const-string v3, ""

    if-ne p2, v3, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v2, 0x0

    .line 213
    .local v2, start:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 216
    .local v1, len:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 217
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 216
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    :sswitch_0
    sub-int v3, v0, v2

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 220
    const-string v3, "&lt;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 221
    add-int/lit8 v2, v0, 0x1

    .line 222
    goto :goto_2

    .line 225
    :sswitch_1
    sub-int v3, v0, v2

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 226
    const-string v3, "&amp;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 227
    add-int/lit8 v2, v0, 0x1

    .line 228
    goto :goto_2

    .line 231
    :sswitch_2
    sub-int v3, v0, v2

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 232
    const-string v3, "&gt;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 233
    add-int/lit8 v2, v0, 0x1

    .line 234
    goto :goto_2

    .line 236
    :sswitch_3
    sub-int v3, v0, v2

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 237
    const-string v3, "&quot;"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 238
    add-int/lit8 v2, v0, 0x1

    goto :goto_2

    .line 243
    :cond_2
    sub-int v3, v1, v2

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    goto :goto_0

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_1
        0x3c -> :sswitch_0
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->fEventType:I

    return v0
.end method

.method public getLocation()Lcom/amazonaws/javax/xml/stream/Location;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->fLocation:Lcom/amazonaws/javax/xml/stream/Location;

    return-object v0
.end method

.method public getSchemaType()Lcom/amazonaws/javax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAttribute()Z
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->fEventType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCharacterData()Z
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->fEventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCharacters()Z
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->fEventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEndDocument()Z
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->fEventType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEndElement()Z
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->fEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEntityReference()Z
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->fEventType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNamespace()Z
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->fEventType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProcessingInstruction()Z
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->fEventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartDocument()Z
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->fEventType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartElement()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 88
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->fEventType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setEventType(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 83
    iput p1, p0, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->fEventType:I

    .line 84
    return-void
.end method

.method setLocation(Lcom/amazonaws/javax/xml/stream/Location;)V
    .locals 0
    .parameter "loc"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->fLocation:Lcom/amazonaws/javax/xml/stream/Location;

    .line 121
    return-void
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 192
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;->writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method
