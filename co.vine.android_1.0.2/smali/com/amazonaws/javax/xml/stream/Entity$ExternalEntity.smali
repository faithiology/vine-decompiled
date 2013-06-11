.class public Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;
.super Lcom/amazonaws/javax/xml/stream/Entity;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/javax/xml/stream/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalEntity"
.end annotation


# instance fields
.field public entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

.field public notation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/amazonaws/javax/xml/stream/Entity;-><init>()V

    .line 257
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->clear()V

    .line 258
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V
    .locals 0
    .parameter "name"
    .parameter "entityLocation"
    .parameter "notation"
    .parameter "inExternalSubset"

    .prologue
    .line 263
    invoke-direct {p0, p1, p4}, Lcom/amazonaws/javax/xml/stream/Entity;-><init>(Ljava/lang/String;Z)V

    .line 264
    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    .line 265
    iput-object p3, p0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->notation:Ljava/lang/String;

    .line 266
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 284
    invoke-super {p0}, Lcom/amazonaws/javax/xml/stream/Entity;->clear()V

    .line 285
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    .line 286
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->notation:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public final isExternal()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method public final isUnparsed()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->notation:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValues(Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/Entity;->setValues(Lcom/amazonaws/javax/xml/stream/Entity;)V

    .line 299
    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    .line 300
    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->notation:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->notation:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setValues(Lcom/amazonaws/javax/xml/stream/Entity;)V
    .locals 1
    .parameter "entity"

    .prologue
    const/4 v0, 0x0

    .line 291
    invoke-super {p0, p1}, Lcom/amazonaws/javax/xml/stream/Entity;->setValues(Lcom/amazonaws/javax/xml/stream/Entity;)V

    .line 292
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->entityLocation:Lcom/amazonaws/javax/xml/stream/xerces/xni/XMLResourceIdentifier;

    .line 293
    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;->notation:Ljava/lang/String;

    .line 294
    return-void
.end method
