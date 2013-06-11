.class public final Lcom/amazonaws/javax/xml/stream/xerces/util/SynchronizedSymbolTable;
.super Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;
.source "SynchronizedSymbolTable.java"


# instance fields
.field protected fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;-><init>()V

    .line 127
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 128
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;-><init>()V

    .line 132
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-direct {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;)V
    .locals 0
    .parameter "symbolTable"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    .line 123
    return-void
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "symbol"

    .prologue
    .line 149
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 2
    .parameter "symbol"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->containsSymbol(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsSymbol([CII)Z
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazonaws/javax/xml/stream/xerces/util/SymbolTable;->containsSymbol([CII)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
