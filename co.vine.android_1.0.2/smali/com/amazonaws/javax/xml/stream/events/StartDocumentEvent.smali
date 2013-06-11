.class public Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;
.super Lcom/amazonaws/javax/xml/stream/events/DummyEvent;
.source "StartDocumentEvent.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/events/StartDocument;


# instance fields
.field protected fEncodingScheam:Ljava/lang/String;

.field private fEncodingSchemeSet:Z

.field protected fStandalone:Z

.field private fStandaloneSet:Z

.field protected fSystemId:Ljava/lang/String;

.field protected fVersion:Ljava/lang/String;

.field private nestedCall:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 62
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 63
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->nestedCall:Z

    .line 66
    const-string v0, "UTF-8"

    const-string v1, "1.0"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->init(Ljava/lang/String;Ljava/lang/String;ZLcom/amazonaws/javax/xml/stream/Location;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "encoding"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 62
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 63
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->nestedCall:Z

    .line 70
    const-string v0, "1.0"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->init(Ljava/lang/String;Ljava/lang/String;ZLcom/amazonaws/javax/xml/stream/Location;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "encoding"
    .parameter "version"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 62
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 63
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->nestedCall:Z

    .line 74
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->init(Ljava/lang/String;Ljava/lang/String;ZLcom/amazonaws/javax/xml/stream/Location;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "encoding"
    .parameter "version"
    .parameter "standalone"

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 62
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 63
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->nestedCall:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->init(Ljava/lang/String;Ljava/lang/String;ZLcom/amazonaws/javax/xml/stream/Location;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/amazonaws/javax/xml/stream/Location;)V
    .locals 1
    .parameter "encoding"
    .parameter "version"
    .parameter "standalone"
    .parameter "loc"

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/events/DummyEvent;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 62
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 63
    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->nestedCall:Z

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 84
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->init(Ljava/lang/String;Ljava/lang/String;ZLcom/amazonaws/javax/xml/stream/Location;)V

    .line 85
    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fEncodingScheam:Ljava/lang/String;

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandalone:Z

    .line 160
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fVersion:Ljava/lang/String;

    .line 161
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 162
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 163
    return-void
.end method

.method public encodingSet()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    return v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fEncodingScheam:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fLocation:Lcom/amazonaws/javax/xml/stream/Location;

    if-nez v0, :cond_0

    .line 102
    const-string v0, ""

    .line 104
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fLocation:Lcom/amazonaws/javax/xml/stream/Location;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fVersion:Ljava/lang/String;

    return-object v0
.end method

.method protected init(Ljava/lang/String;Ljava/lang/String;ZLcom/amazonaws/javax/xml/stream/Location;)V
    .locals 1
    .parameter "encoding"
    .parameter "version"
    .parameter "standalone"
    .parameter "loc"

    .prologue
    .line 87
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->setEventType(I)V

    .line 88
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fEncodingScheam:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fVersion:Ljava/lang/String;

    .line 90
    iput-boolean p3, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandalone:Z

    .line 91
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 97
    :goto_0
    iput-object p4, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fLocation:Lcom/amazonaws/javax/xml/stream/Location;

    .line 98
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 95
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fEncodingScheam:Ljava/lang/String;

    goto :goto_0
.end method

.method public isStandalone()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandalone:Z

    return v0
.end method

.method public isStartDocument()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method setDeclaredEncoding(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fEncodingSchemeSet:Z

    .line 151
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fEncodingScheam:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setStandalone(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    const/4 v1, 0x1

    .line 126
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 127
    if-nez p1, :cond_0

    .line 128
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandalone:Z

    .line 135
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v0, "yes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandalone:Z

    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandalone:Z

    goto :goto_0
.end method

.method public setStandalone(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    .line 122
    iput-boolean p1, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandalone:Z

    .line 123
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fVersion:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public standaloneSet()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "<?xml version=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " encoding=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fEncodingScheam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandaloneSet:Z

    if-eqz v1, :cond_1

    .line 169
    iget-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->fStandalone:Z

    if-eqz v1, :cond_0

    .line 170
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " standalone=\'yes\'?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 172
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " standalone=\'no\'?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    goto :goto_0

    .line 174
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

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
    .line 186
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/events/StartDocumentEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 187
    return-void
.end method
