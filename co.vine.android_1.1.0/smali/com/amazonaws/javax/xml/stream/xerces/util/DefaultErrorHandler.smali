.class public Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;
.super Ljava/lang/Object;
.source "DefaultErrorHandler.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLErrorHandler;


# instance fields
.field protected fOut:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;-><init>(Ljava/io/PrintWriter;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    .line 137
    return-void
.end method

.method private printError(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;)V
    .locals 5
    .parameter "type"
    .parameter "ex"

    .prologue
    const/16 v4, 0x3a

    .line 169
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, systemId:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 174
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 175
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 176
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    .end local v0           #index:I
    :cond_1
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 180
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 181
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 182
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 183
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 186
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 188
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;)V
    .locals 1
    .parameter "domain"
    .parameter "key"
    .parameter "ex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 152
    const-string v0, "Error"

    invoke-direct {p0, v0, p3}, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;->printError(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;)V

    .line 153
    return-void
.end method

.method public fatalError(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;)V
    .locals 1
    .parameter "domain"
    .parameter "key"
    .parameter "ex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 158
    const-string v0, "Fatal Error"

    invoke-direct {p0, v0, p3}, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;->printError(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;)V

    .line 159
    throw p3
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;)V
    .locals 1
    .parameter "domain"
    .parameter "key"
    .parameter "ex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 146
    const-string v0, "Warning"

    invoke-direct {p0, v0, p3}, Lcom/amazonaws/javax/xml/stream/xerces/util/DefaultErrorHandler;->printError(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLParseException;)V

    .line 147
    return-void
.end method
