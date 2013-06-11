.class public Lcom/amazonaws/javax/xml/transform/dom/DOMSource;
.super Ljava/lang/Object;
.source "DOMSource.java"

# interfaces
.implements Lcom/amazonaws/javax/xml/transform/Source;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.dom.DOMSource/feature"


# instance fields
.field private node:Lorg/w3c/dom/Node;

.field private systemID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0
    .parameter "n"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/transform/dom/DOMSource;->setNode(Lorg/w3c/dom/Node;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 0
    .parameter "node"
    .parameter "systemID"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p0, p1}, Lcom/amazonaws/javax/xml/transform/dom/DOMSource;->setNode(Lorg/w3c/dom/Node;)V

    .line 114
    invoke-virtual {p0, p2}, Lcom/amazonaws/javax/xml/transform/dom/DOMSource;->setSystemId(Ljava/lang/String;)V

    .line 115
    return-void
.end method


# virtual methods
.method public getNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/dom/DOMSource;->node:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/dom/DOMSource;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public setNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/dom/DOMSource;->node:Lorg/w3c/dom/Node;

    .line 124
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0
    .parameter "systemID"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/dom/DOMSource;->systemID:Ljava/lang/String;

    .line 143
    return-void
.end method
