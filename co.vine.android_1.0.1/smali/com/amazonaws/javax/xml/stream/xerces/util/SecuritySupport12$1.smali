.class Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$1;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12;


# direct methods
.method constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$1;->this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, cl:Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 113
    :catch_0
    move-exception v1

    goto :goto_0
.end method
