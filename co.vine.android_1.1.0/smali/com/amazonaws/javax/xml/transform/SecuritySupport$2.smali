.class Lcom/amazonaws/javax/xml/transform/SecuritySupport$2;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/javax/xml/transform/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/javax/xml/transform/SecuritySupport;

.field final synthetic val$propName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazonaws/javax/xml/transform/SecuritySupport;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/amazonaws/javax/xml/transform/SecuritySupport$2;->this$0:Lcom/amazonaws/javax/xml/transform/SecuritySupport;

    iput-object p2, p0, Lcom/amazonaws/javax/xml/transform/SecuritySupport$2;->val$propName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazonaws/javax/xml/transform/SecuritySupport$2;->val$propName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
