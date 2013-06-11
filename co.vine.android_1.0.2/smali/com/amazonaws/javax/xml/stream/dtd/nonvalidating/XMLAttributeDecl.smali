.class public Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;
.super Ljava/lang/Object;
.source "XMLAttributeDecl.java"


# instance fields
.field public final name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

.field public optional:Z

.field public final simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    .line 115
    new-instance v0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    invoke-direct {v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->clear()V

    .line 139
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    invoke-virtual {v0}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->clear()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->optional:Z

    .line 141
    return-void
.end method

.method public setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;Z)V
    .locals 1
    .parameter "name"
    .parameter "simpleType"
    .parameter "optional"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->name:Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;

    invoke-virtual {v0, p1}, Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;->setValues(Lcom/amazonaws/javax/xml/stream/xerces/xni/QName;)V

    .line 130
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->simpleType:Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;

    invoke-virtual {v0, p2}, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;->setValues(Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLSimpleType;)V

    .line 131
    iput-boolean p3, p0, Lcom/amazonaws/javax/xml/stream/dtd/nonvalidating/XMLAttributeDecl;->optional:Z

    .line 132
    return-void
.end method
