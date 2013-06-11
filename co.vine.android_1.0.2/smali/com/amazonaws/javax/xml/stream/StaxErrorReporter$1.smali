.class Lcom/amazonaws/javax/xml/stream/StaxErrorReporter$1;
.super Ljava/lang/Object;
.source "StaxErrorReporter.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/stream/Location;


# instance fields
.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;

.field private final synthetic val$location:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;


# direct methods
.method constructor <init>(Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter$1;->this$0:Lcom/amazonaws/javax/xml/stream/StaxErrorReporter;

    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter$1;->val$location:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter$1;->val$location:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v0

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter$1;->val$location:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter$1;->val$location:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter$1;->val$location:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/StaxErrorReporter$1;->val$location:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
