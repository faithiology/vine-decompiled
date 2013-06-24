.class Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;
.super Ljava/lang/Object;
.source "XMLReaderImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/Location;


# instance fields
.field _columnNumber:I

.field _lineNumber:I

.field _offset:I

.field _publicId:Ljava/lang/String;

.field _systemId:Ljava/lang/String;

.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;


# direct methods
.method constructor <init>(Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 883
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->this$0:Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->this$0:Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->_systemId:Ljava/lang/String;

    .line 855
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->this$0:Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->_publicId:Ljava/lang/String;

    .line 856
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->this$0:Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getCharacterOffset()I

    move-result v0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->_offset:I

    .line 857
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->this$0:Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->_columnNumber:I

    .line 858
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->this$0:Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getLineNumber()I

    move-result v0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->_lineNumber:I

    return-void
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 1

    .prologue
    .line 864
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->_offset:I

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 868
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->_columnNumber:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 872
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->_lineNumber:I

    return v0
.end method

.method public getLocationURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->_systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->_publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->_systemId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 884
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 885
    .local v0, sbuffer:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Line number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 886
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 887
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Column number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 888
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 889
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "System Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 890
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 891
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Public Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 892
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 893
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Location Uri= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->getLocationURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 894
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 895
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "CharacterOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;->getCharacterOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 896
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 897
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
