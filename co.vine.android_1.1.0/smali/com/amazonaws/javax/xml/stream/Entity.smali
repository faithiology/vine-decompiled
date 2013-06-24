.class public abstract Lcom/amazonaws/javax/xml/stream/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/javax/xml/stream/Entity$ScannedEntity;,
        Lcom/amazonaws/javax/xml/stream/Entity$ExternalEntity;,
        Lcom/amazonaws/javax/xml/stream/Entity$InternalEntity;
    }
.end annotation


# instance fields
.field public inExternalSubset:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p0}, Lcom/amazonaws/javax/xml/stream/Entity;->clear()V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "name"
    .parameter "inExternalSubset"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/Entity;->name:Ljava/lang/String;

    .line 138
    iput-boolean p2, p0, Lcom/amazonaws/javax/xml/stream/Entity;->inExternalSubset:Z

    .line 139
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/Entity;->name:Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/Entity;->inExternalSubset:Z

    .line 160
    return-void
.end method

.method public isEntityDeclInExternalSubset()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/Entity;->inExternalSubset:Z

    return v0
.end method

.method public abstract isExternal()Z
.end method

.method public abstract isUnparsed()Z
.end method

.method public setValues(Lcom/amazonaws/javax/xml/stream/Entity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 164
    iget-object v0, p1, Lcom/amazonaws/javax/xml/stream/Entity;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/javax/xml/stream/Entity;->name:Ljava/lang/String;

    .line 165
    iget-boolean v0, p1, Lcom/amazonaws/javax/xml/stream/Entity;->inExternalSubset:Z

    iput-boolean v0, p0, Lcom/amazonaws/javax/xml/stream/Entity;->inExternalSubset:Z

    .line 166
    return-void
.end method
