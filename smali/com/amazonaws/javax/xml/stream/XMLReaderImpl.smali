.class public Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;
.super Ljava/lang/Object;
.source "XMLReaderImpl.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/XMLStreamReader;


# static fields
.field static final DEBUG:Z = false

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field private fBindNamespaces:Z

.field private fDTDDecl:Ljava/lang/String;

.field protected fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

.field protected fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

.field protected fErrorReporter:Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;

.field private fEventType:I

.field protected fInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

.field protected fNamespaceContextWrapper:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;

.field protected fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

.field private fReuse:Z

.field protected fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

.field private fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 4
    .parameter "inputSource"
    .parameter "props"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 103
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    .line 107
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fNamespaceContextWrapper:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;

    .line 108
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    .line 109
    new-instance v0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;

    .line 113
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    .line 116
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    .line 118
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    .line 125
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fReuse:Z

    .line 126
    iput-boolean v3, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fBindNamespaces:Z

    .line 127
    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 190
    invoke-virtual {p0, p2}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->init(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->setInputSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 6
    .parameter "inputStream"
    .parameter "props"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 103
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    .line 107
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;)V

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fNamespaceContextWrapper:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;

    .line 108
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    .line 109
    new-instance v2, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;

    .line 113
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    .line 116
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    .line 118
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    .line 125
    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fReuse:Z

    .line 126
    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fBindNamespaces:Z

    .line 127
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 135
    invoke-virtual {p0, p2}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->init(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 137
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 139
    .local v0, inputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->setInputSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 6
    .parameter "inputStream"
    .parameter "encoding"
    .parameter "props"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 103
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    .line 107
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;)V

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fNamespaceContextWrapper:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;

    .line 108
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    .line 109
    new-instance v2, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;

    .line 113
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    .line 116
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    .line 118
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    .line 125
    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fReuse:Z

    .line 126
    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fBindNamespaces:Z

    .line 127
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 163
    invoke-virtual {p0, p3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->init(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 165
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v1

    move-object v3, v1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 167
    .local v0, inputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->setInputSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 6
    .parameter "reader"
    .parameter "props"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 103
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    .line 107
    new-instance v2, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;

    iget-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v3}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;)V

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fNamespaceContextWrapper:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;

    .line 108
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    .line 109
    new-instance v2, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;

    invoke-direct {v2}, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;

    .line 113
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    .line 116
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    .line 118
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    .line 125
    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fReuse:Z

    .line 126
    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fBindNamespaces:Z

    .line 127
    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 176
    invoke-virtual {p0, p2}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->init(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 179
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .line 181
    .local v0, inputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->setInputSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 5
    .parameter "systemid"
    .parameter "props"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-direct {v1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 103
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-direct {v1}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    .line 107
    new-instance v1, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;-><init>(Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;)V

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fNamespaceContextWrapper:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;

    .line 108
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-direct {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    .line 109
    new-instance v1, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;

    invoke-direct {v1}, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;

    .line 113
    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    .line 116
    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    .line 118
    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    .line 125
    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fReuse:Z

    .line 126
    iput-boolean v4, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fBindNamespaces:Z

    .line 127
    iput-object v3, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 148
    invoke-virtual {p0, p2}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->init(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 150
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    invoke-direct {v0, v3, p1, v3}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v0, inputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->setInputSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V

    .line 153
    return-void
.end method

.method static final getEventTypeString(I)Ljava/lang/String;
    .locals 2
    .parameter "eventType"

    .prologue
    .line 610
    packed-switch p0, :pswitch_data_0

    .line 636
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "UNKNOWN_EVENT_TYPE , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 612
    :pswitch_0
    const-string v0, "START_ELEMENT"

    goto :goto_0

    .line 614
    :pswitch_1
    const-string v0, "END_ELEMENT"

    goto :goto_0

    .line 616
    :pswitch_2
    const-string v0, "PROCESSING_INSTRUCTION"

    goto :goto_0

    .line 618
    :pswitch_3
    const-string v0, "CHARACTERS"

    goto :goto_0

    .line 620
    :pswitch_4
    const-string v0, "COMMENT"

    goto :goto_0

    .line 622
    :pswitch_5
    const-string v0, "START_DOCUMENT"

    goto :goto_0

    .line 624
    :pswitch_6
    const-string v0, "END_DOCUMENT"

    goto :goto_0

    .line 626
    :pswitch_7
    const-string v0, "ENTITY_REFERENCE"

    goto :goto_0

    .line 628
    :pswitch_8
    const-string v0, "ATTRIBUTE"

    goto :goto_0

    .line 630
    :pswitch_9
    const-string v0, "DTD"

    goto :goto_0

    .line 632
    :pswitch_a
    const-string v0, "CDATA"

    goto :goto_0

    .line 634
    :pswitch_b
    const-string v0, "SPACE"

    goto :goto_0

    .line 610
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method static pr(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1292
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1293
    return-void
.end method


# virtual methods
.method public canReuse()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fReuse:Z

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fReuse:Z

    .line 311
    return-void
.end method

.method convertSAXInputSource2XMLInputSource(Lorg/xml/sax/InputSource;)Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    .locals 8
    .parameter "inputSource"

    .prologue
    .line 229
    new-instance v4, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .local v4, xmlInputSource:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 235
    .local v0, inputStream:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    instance-of v5, v0, Ljava/io/ByteArrayInputStream;

    if-nez v5, :cond_0

    instance-of v5, v0, Ljava/io/BufferedInputStream;

    if-nez v5, :cond_0

    .line 237
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v0           #inputStream:Ljava/io/InputStream;
    .local v1, inputStream:Ljava/io/InputStream;
    move-object v0, v1

    .line 239
    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v0       #inputStream:Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v4, v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 240
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v2

    .line 242
    .local v2, reader:Ljava/io/Reader;
    if-eqz v2, :cond_1

    instance-of v5, v2, Ljava/io/BufferedReader;

    if-nez v5, :cond_1

    instance-of v5, v2, Ljava/io/CharArrayReader;

    if-nez v5, :cond_1

    instance-of v5, v2, Ljava/io/StringReader;

    if-nez v5, :cond_1

    .line 245
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v2           #reader:Ljava/io/Reader;
    .local v3, reader:Ljava/io/Reader;
    move-object v2, v3

    .line 247
    .end local v3           #reader:Ljava/io/Reader;
    .restart local v2       #reader:Ljava/io/Reader;
    :cond_1
    invoke-virtual {v4, v2}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 248
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    .line 250
    return-object v4
.end method

.method public convertXNIQNametoJavaxQName(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Lcom/amazonaws/javax/xml/namespace/QName;
    .locals 4
    .parameter "qname"

    .prologue
    .line 1247
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1252
    :goto_0
    return-object v0

    .line 1249
    :cond_0
    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1250
    new-instance v0, Lcom/amazonaws/javax/xml/namespace/QName;

    iget-object v1, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1252
    :cond_1
    new-instance v0, Lcom/amazonaws/javax/xml/namespace/QName;

    iget-object v1, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAttributeCount()I
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 651
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v0, v4, :cond_1

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->getLength()I

    move-result v0

    return v0

    .line 654
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state is not among the states "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "valid for getAttributeCount()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 685
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v0, v4, :cond_1

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 688
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state is not among the states "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "valid for getAttributeLocalName()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeName(I)Lcom/amazonaws/javax/xml/namespace/QName;
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 669
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v0, v4, :cond_1

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->getQualifiedName(I)Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->convertXNIQNametoJavaxQName(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0

    .line 672
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state is not among the states "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "valid for getAttributeName()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 703
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v0, v4, :cond_1

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->getURI(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 706
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state is not among the states "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "valid for getAttributeNamespace()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 722
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v0, v4, :cond_1

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->getPrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 725
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state is not among the states "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "valid for getAttributePrefix()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeQName(I)Lcom/amazonaws/javax/xml/namespace/QName;
    .locals 7
    .parameter "index"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 740
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v2, v6, :cond_1

    .line 742
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, localName:Ljava/lang/String;
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->getURI(I)Ljava/lang/String;

    move-result-object v1

    .line 744
    .local v1, uri:Ljava/lang/String;
    new-instance v2, Lcom/amazonaws/javax/xml/namespace/QName;

    invoke-direct {v2, v1, v0}, Lcom/amazonaws/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 746
    .end local v0           #localName:Ljava/lang/String;
    .end local v1           #uri:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Current state is not among the states "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v5}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v6}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "valid for getAttributeQName()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 761
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v0, v4, :cond_1

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->getType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 764
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state is not among the states "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "valid for getAttributeType()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 780
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v0, v4, :cond_1

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 783
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state is not among the states "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "valid for getAttributeValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 798
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v0, v4, :cond_1

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 801
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state is not among the states "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "valid for getAttributeValue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 816
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventType()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 817
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "parser must be on START_ELEMENT to read next text"

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;)V

    throw v2

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->next()I

    move-result v1

    .line 821
    .local v1, eventType:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 822
    .local v0, content:Ljava/lang/StringBuffer;
    :goto_0
    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    .line 823
    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 827
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 840
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->next()I

    move-result v1

    .line 841
    goto :goto_0

    .line 828
    :cond_3
    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 831
    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 832
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "unexpected end of document when reading element text content"

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2

    .line 833
    :cond_4
    if-ne v1, v3, :cond_5

    .line 834
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v3, "elementGetText() function expects text only elment but START_ELEMENT was encountered."

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;)V

    throw v2

    .line 837
    :cond_5
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unexpected event type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;)V

    throw v2

    .line 842
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEntityDecls()Ljava/util/List;
    .locals 9

    .prologue
    .line 1296
    iget v7, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_1

    .line 1297
    iget-object v7, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v7}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getEntityStore()Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    move-result-object v2

    .line 1298
    .local v2, entityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;
    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->getDeclaredEntities()Ljava/util/Hashtable;

    move-result-object v4

    .line 1299
    .local v4, ht:Ljava/util/Hashtable;
    const/4 v6, 0x0

    .line 1300
    .local v6, list:Ljava/util/ArrayList;
    if-eqz v4, :cond_2

    .line 1301
    const/4 v0, 0x0

    .line 1302
    .local v0, decl:Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #list:Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1303
    .restart local v6       #list:Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 1304
    .local v3, enu:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1305
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1306
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/javax/xml/stream/Entity;

    .line 1307
    .local v1, en:Lcom/amazonaws/javax/xml/stream/Entity;
    new-instance v0, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;

    .end local v0           #decl:Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;
    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;-><init>()V

    .line 1308
    .restart local v0       #decl:Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;
    invoke-virtual {v0, v5}, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->setEntityName(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/Entity;->isExternal()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v1

    .line 1310
    check-cast v7, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;

    iget-object v7, v7, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-virtual {v0, v7}, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->setXMLResourceIdentifier(Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;)V

    .line 1311
    check-cast v1, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;

    .end local v1           #en:Lcom/amazonaws/javax/xml/stream/Entity;
    iget-object v7, v1, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->notation:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->setNotationName(Ljava/lang/String;)V

    .line 1314
    :goto_1
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1313
    .restart local v1       #en:Lcom/amazonaws/javax/xml/stream/Entity;
    :cond_0
    check-cast v1, Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;

    .end local v1           #en:Lcom/amazonaws/javax/xml/stream/Entity;
    iget-object v7, v1, Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;->setEntityReplacementText(Ljava/lang/String;)V

    goto :goto_1

    .line 1319
    .end local v0           #decl:Lcom/amazonaws/javax/xml/stream/events/EntityDeclarationImpl;
    .end local v2           #entityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;
    .end local v3           #enu:Ljava/util/Enumeration;
    .end local v4           #ht:Ljava/util/Hashtable;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #list:Ljava/util/ArrayList;
    :cond_1
    const/4 v6, 0x0

    :cond_2
    return-object v6
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 352
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getElementQName()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-result-object v0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 356
    :goto_0
    return-object v0

    .line 355
    :cond_1
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 356
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getEntityName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Method getLocalName() cannot be called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " event."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocation()Lcom/amazonaws/javax/xml/stream/Location;
    .locals 1

    .prologue
    .line 853
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;

    invoke-direct {v0, p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl$1;-><init>(Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;)V

    return-object v0
.end method

.method public getName()Lcom/amazonaws/javax/xml/namespace/QName;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 907
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v0, v4, :cond_1

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getElementQName()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->convertXNIQNametoJavaxQName(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)Lcom/amazonaws/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0

    .line 910
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal to call getName() when event type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " Valid states are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceContext()Lcom/amazonaws/javax/xml/namespace/NamespaceContext;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fNamespaceContextWrapper:Lcom/amazonaws/javax/xml/stream/xerces/util/NamespaceContextWrapper;

    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 936
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v0, v5, :cond_1

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v0

    return v0

    .line 940
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is not among the states "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v5}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " valid for getNamespaceCount()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 7
    .parameter "index"

    .prologue
    const/16 v6, 0xd

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 957
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v1, v6, :cond_2

    .line 959
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, prefix:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .end local v0           #prefix:Ljava/lang/String;
    :cond_1
    return-object v0

    .line 962
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Current state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is not among the states "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v5}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v6}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " valid for getNamespacePrefix()."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getElementQName()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-result-object v0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 370
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 6
    .parameter "index"

    .prologue
    const/16 v5, 0xd

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 978
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v0, v5, :cond_1

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 982
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is not among the states "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v5}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " valid for getNamespaceURI()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "prefix"

    .prologue
    .line 1270
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getNamespaceURI(String prefix) is called with a null prefix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getNamespaceContext()Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v1, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNotationDecls()Ljava/util/List;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1323
    iget v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_0

    .line 1324
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fDTDScanner:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    if-nez v5, :cond_1

    .line 1339
    :cond_0
    return-object v2

    .line 1325
    :cond_1
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    iget-object v5, v5, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fDTDScanner:Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLDTDScanner;

    check-cast v5, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;

    check-cast v5, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLDTDScannerImpl;->getGrammar()Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;

    move-result-object v0

    .line 1326
    .local v0, grammar:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;
    if-eqz v0, :cond_0

    .line 1327
    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/DTDGrammar;->getNotationDecls()Ljava/util/List;

    move-result-object v4

    .line 1329
    .local v4, notations:Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1330
    .local v1, it:Ljava/util/Iterator;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v2, list:Ljava/util/ArrayList;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1332
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLNotationDecl;

    .line 1333
    .local v3, ni:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLNotationDecl;
    if-eqz v3, :cond_2

    .line 1334
    new-instance v5, Lcom/amazonaws/javax/xml/stream/events/NotationDeclarationImpl;

    invoke-direct {v5, v3}, Lcom/amazonaws/javax/xml/stream/events/NotationDeclarationImpl;-><init>(Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLNotationDecl;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPIData()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 378
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v0, v3, :cond_0

    .line 379
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getPIData()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state of the parser is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " But expected state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 389
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v0, v3, :cond_0

    .line 390
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getPITarget()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state of the parser is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " But expected state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 403
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getElementQName()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-result-object v1

    iget-object v0, v1, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 405
    .local v0, prefix:Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v0, ""

    .line 407
    .end local v0           #prefix:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 997
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    if-eqz v0, :cond_3

    .line 999
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    const-string v0, "com.amazonaws.javax.xml.stream.notations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getNotationDecls()Ljava/util/List;

    move-result-object v0

    .line 1006
    :goto_0
    return-object v0

    .line 1001
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    const-string v0, "com.amazonaws.javax.xml.stream.entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1002
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEntityDecls()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1004
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1006
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPropertyManager()Lcom/amazonaws/javax/xml/stream/PropertyManager;
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0xb

    const/16 v11, 0x9

    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    .line 1019
    iget v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v5, v8, :cond_0

    iget v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v5, v9, :cond_0

    iget v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v6, 0xc

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v5, v10, :cond_1

    .line 1023
    :cond_0
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getCharacterData()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1048
    :goto_0
    return-object v5

    .line 1024
    :cond_1
    iget v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v5, v11, :cond_6

    .line 1025
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getEntityName()Ljava/lang/String;

    move-result-object v3

    .line 1026
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 1027
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    iget-boolean v5, v5, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->foundBuiltInRefs:Z

    if-eqz v5, :cond_2

    .line 1028
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getCharacterData()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1030
    :cond_2
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getEntityStore()Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    move-result-object v1

    .line 1031
    .local v1, entityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;
    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->getDeclaredEntities()Ljava/util/Hashtable;

    move-result-object v2

    .line 1032
    .local v2, ht:Ljava/util/Hashtable;
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/Entity;

    .line 1033
    .local v0, en:Lcom/amazonaws/javax/xml/stream/Entity;
    if-nez v0, :cond_3

    .line 1034
    const/4 v5, 0x0

    goto :goto_0

    .line 1035
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/Entity;->isExternal()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1036
    check-cast v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;

    .end local v0           #en:Lcom/amazonaws/javax/xml/stream/Entity;
    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v5}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1038
    .restart local v0       #en:Lcom/amazonaws/javax/xml/stream/Entity;
    :cond_4
    check-cast v0, Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;

    .end local v0           #en:Lcom/amazonaws/javax/xml/stream/Entity;
    iget-object v5, v0, Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    goto :goto_0

    .line 1040
    .end local v1           #entityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;
    .end local v2           #ht:Ljava/util/Hashtable;
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 1042
    .end local v3           #name:Ljava/lang/String;
    :cond_6
    iget v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v5, v12, :cond_8

    .line 1043
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 1044
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    goto :goto_0

    .line 1046
    :cond_7
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v5}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getDTDDecl()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    move-result-object v4

    .line 1047
    .local v4, tmpBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;
    invoke-virtual {v4}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 1048
    iget-object v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    goto :goto_0

    .line 1050
    .end local v4           #tmpBuffer:Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;
    :cond_8
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Current state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v7}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " is not among the states"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v8}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v9}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0xc

    invoke-static {v7}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v10}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v11}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v12}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " valid for getText() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getTextCharacters(I[CII)I
    .locals 4
    .parameter "sourceStart"
    .parameter "target"
    .parameter "targetStart"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1120
    if-nez p2, :cond_0

    .line 1121
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "target char array can\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1124
    :cond_0
    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    if-ltz p1, :cond_1

    array-length v2, p2

    if-ge p3, v2, :cond_1

    add-int v2, p3, p4

    array-length v3, p2

    if-le v2, v3, :cond_2

    .line 1126
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1131
    :cond_2
    const/4 v1, 0x0

    .line 1133
    .local v1, copiedLength:I
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getTextLength()I

    move-result v2

    sub-int v0, v2, p1

    .line 1134
    .local v0, available:I
    if-gez v0, :cond_3

    .line 1135
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "sourceStart is greater thannumber of characters associated with this event"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1138
    :cond_3
    if-ge v0, p4, :cond_4

    .line 1139
    move v1, v0

    .line 1144
    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getTextCharacters()[C

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getTextStart()I

    move-result v3

    add-int/2addr v3, p1

    invoke-static {v2, v3, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1145
    return v1

    .line 1141
    :cond_4
    move v1, p4

    goto :goto_0
.end method

.method public getTextCharacters()[C
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 416
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v6, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v0, v5, :cond_1

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getCharacterData()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    move-result-object v0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->ch:[C

    return-object v0

    .line 420
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is not among the states "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v6}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v5}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " valid for getTextCharacters() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextLength()I
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 431
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v6, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v0, v5, :cond_1

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getCharacterData()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    move-result-object v0

    iget v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    return v0

    .line 435
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is not among the states "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v6}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v5}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " valid for getTextLength() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextStart()I
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 446
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v6, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v0, v5, :cond_1

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getCharacterData()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    move-result-object v0

    iget v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->offset:I

    return v0

    .line 449
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is not among the states "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v6}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v5}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " valid for getTextStart() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 460
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getPIData()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    :goto_0
    return-object v0

    .line 462
    :cond_0
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 463
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getComment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 464
    :cond_1
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getElementQName()Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    move-result-object v0

    iget-object v0, v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->localpart:Ljava/lang/String;

    goto :goto_0

    .line 466
    :cond_3
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 467
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getCharacterData()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 469
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 486
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 489
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 499
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 502
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasText()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1154
    iget v6, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_3

    .line 1155
    :cond_0
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v6}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getCharacterData()Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;

    move-result-object v6

    iget v6, v6, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLString;->length:I

    if-lez v6, :cond_2

    .line 1178
    :cond_1
    :goto_0
    return v4

    :cond_2
    move v4, v5

    .line 1155
    goto :goto_0

    .line 1156
    :cond_3
    iget v6, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_7

    .line 1157
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v6}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getEntityName()Ljava/lang/String;

    move-result-object v3

    .line 1158
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 1159
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    iget-boolean v6, v6, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->foundBuiltInRefs:Z

    if-nez v6, :cond_1

    .line 1162
    iget-object v6, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v6}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getEntityStore()Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;

    move-result-object v1

    .line 1163
    .local v1, entityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;
    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;->getDeclaredEntities()Ljava/util/Hashtable;

    move-result-object v2

    .line 1164
    .local v2, ht:Ljava/util/Hashtable;
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/Entity;

    .line 1165
    .local v0, en:Lcom/amazonaws/javax/xml/stream/Entity;
    if-nez v0, :cond_4

    move v4, v5

    .line 1166
    goto :goto_0

    .line 1167
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/Entity;->isExternal()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1168
    check-cast v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;

    .end local v0           #en:Lcom/amazonaws/javax/xml/stream/Entity;
    iget-object v6, v0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v6}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    move v4, v5

    goto :goto_0

    .line 1170
    .restart local v0       #en:Lcom/amazonaws/javax/xml/stream/Entity;
    :cond_5
    check-cast v0, Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;

    .end local v0           #en:Lcom/amazonaws/javax/xml/stream/Entity;
    iget-object v6, v0, Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    if-nez v6, :cond_1

    move v4, v5

    goto :goto_0

    .end local v1           #entityStore:Lcom/amazonaws/javax/xml/stream/XMLEntityStorage;
    .end local v2           #ht:Ljava/util/Hashtable;
    :cond_6
    move v4, v5

    .line 1173
    goto :goto_0

    .line 1175
    .end local v3           #name:Ljava/lang/String;
    :cond_7
    iget v4, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v6, 0xb

    if-ne v4, v6, :cond_8

    .line 1176
    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    iget-boolean v4, v4, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fSeenDoctypeDecl:Z

    goto :goto_0

    :cond_8
    move v4, v5

    .line 1178
    goto :goto_0
.end method

.method public hasValue()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 509
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method init(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 2
    .parameter "propertyManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 254
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    .line 261
    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {p1, v0, v1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fErrorReporter:Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;

    invoke-virtual {p1, v0, v1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    const-string v0, "http://apache.org/xml/properties/internal/entity-manager"

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {p1, v0, v1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->reset()V

    .line 268
    return-void
.end method

.method public isAttributeSpecified(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 1189
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v0, v4, :cond_1

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->getAttributeIterator()Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLAttributesIteratorImpl;->isSpecified(I)Z

    move-result v0

    return v0

    .line 1192
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state is not among the states "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v4}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "valid for isAttributeSpecified()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCharacters()Z
    .locals 2

    .prologue
    .line 1203
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v1, 0x4

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
    .line 523
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStandalone()Z
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->isStandAlone()Z

    move-result v0

    return v0
.end method

.method public isStartElement()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 537
    iget v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhiteSpace()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 547
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->isCharacters()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getTextCharacters()[C

    move-result-object v0

    .line 549
    .local v0, ch:[C
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getTextStart()I

    move-result v3

    .line 550
    .local v3, start:I
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getTextLength()I

    move-result v5

    add-int v1, v3, v5

    .line 551
    .local v1, end:I
    move v2, v3

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 552
    aget-char v5, v0, v2

    invoke-static {v5}, Lcom/amazonaws/javax/xml/stream/xerces/util/XMLChar;->isSpace(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 558
    .end local v0           #ch:[C
    .end local v1           #end:I
    .end local v2           #i:I
    .end local v3           #start:I
    :cond_1
    :goto_1
    return v4

    .line 551
    .restart local v0       #ch:[C
    .restart local v1       #end:I
    .restart local v2       #i:I
    .restart local v3       #start:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public next()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xb

    .line 568
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 569
    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 570
    new-instance v2, Ljava/util/NoSuchElementException;

    const-string v3, "END_DOCUMENT reached: no more elements on the stream."

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 572
    :cond_0
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException;

    const-string v3, "Error processing input source. The input stream is not complete."

    invoke-direct {v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 576
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->next()I

    move-result v2

    iput v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 597
    :goto_0
    return v2

    .line 577
    :catch_0
    move-exception v0

    .line 580
    .local v0, ex:Ljava/io/IOException;
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    iget v2, v2, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fScannerState:I

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_4

    .line 581
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    const-string v4, "com.amazonaws.javax.xml.stream.isValidating"

    invoke-virtual {v2, v4}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 583
    .local v1, isValidating:Ljava/lang/Boolean;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 586
    iput v3, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    .line 587
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    const/16 v4, 0x2b

    invoke-virtual {v2, v4}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->setScannerState(I)V

    .line 588
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    iget-object v4, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    iget-object v4, v4, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->fPrologDriver:Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v2, v4}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->setDriver(Lcom/amazonaws/javax/xml/stream/XMLDocumentFragmentScannerImpl$Driver;)V

    .line 589
    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 591
    :cond_2
    const-string v2, "<!-- Exception scanning External DTD Subset.  True contents of DTD cannot be determined.  Processing will continue as XMLInputFactory.IS_VALIDATING == false. -->"

    iput-object v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    :cond_3
    move v2, v3

    .line 597
    goto :goto_0

    .line 602
    .end local v1           #isValidating:Ljava/lang/Boolean;
    :cond_4
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v2

    .line 603
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 604
    .local v0, ex:Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
    new-instance v2, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public nextTag()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1218
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->next()I

    move-result v0

    .line 1224
    .local v0, eventType:I
    :goto_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->isWhiteSpace()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->isWhiteSpace()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 1226
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->next()I

    move-result v0

    .line 1227
    goto :goto_0

    .line 1228
    :cond_3
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 1229
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    const-string v2, "expected start or end tag"

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;)V

    throw v1

    .line 1231
    :cond_4
    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1069
    iget v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    if-eq p1, v0, :cond_0

    .line 1070
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " specified did "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "not match with current parser event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    invoke-static {v2}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1073
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Namespace URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " specified did not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "with current namespace URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1075
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1076
    new-instance v0, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "LocalName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " specified did not match with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "current local name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1079
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fReuse:Z

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I

    .line 291
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 293
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->reset(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityManager:Lcom/amazonaws/javax/xml/stream/XMLEntityManager;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLEntityManager;->getEntityReader()Lcom/amazonaws/javax/xml/stream/XMLEntityReader;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEntityScanner:Lcom/amazonaws/javax/xml/stream/XMLEntityReaderImpl;

    .line 300
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    const-string v1, "com.amazonaws.javax.xml.stream.isNamespaceAware"

    invoke-virtual {v0, v1}, Lcom/amazonaws/javax/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fBindNamespaces:Z

    .line 301
    return-void
.end method

.method public setInputSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V
    .locals 5
    .parameter "inputSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fReuse:Z

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1, p1}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->setInputSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V

    .line 207
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->next()I

    move-result v1

    iput v1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fEventType:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-direct {v1, v0}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 210
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 211
    .local v0, ex:Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;
    new-instance v1, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->getLocation()Lcom/amazonaws/javax/xml/stream/Location;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amazonaws/javax/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 1
    .parameter "inputSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->convertSAXInputSource2XMLInputSource(Lorg/xml/sax/InputSource;)Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->setInputSource(Lcom/amazonaws/javax/xml/stream/xerces/xni/parser/XMLInputSource;)V

    .line 222
    return-void
.end method

.method protected setPropertyManager(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V
    .locals 2
    .parameter "propertyManager"

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fPropertyManager:Lcom/amazonaws/javax/xml/stream/PropertyManager;

    .line 1280
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    const-string v1, "stax-properties"

    invoke-virtual {v0, v1, p1}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1281
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->setPropertyManager(Lcom/amazonaws/javax/xml/stream/PropertyManager;)V

    .line 1282
    return-void
.end method

.method public standaloneSet()Z
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/XMLReaderImpl;->fScanner:Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/XMLNSDocumentScannerImpl;->standaloneSet()Z

    move-result v0

    return v0
.end method
