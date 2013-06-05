.class Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$3;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# instance fields
.field private final synthetic this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12;

.field private final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$3;->this$0:Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12;

    iput-object p2, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/amazonaws/javax/xml/stream/xerces/util/SecuritySupport12$3;->val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
