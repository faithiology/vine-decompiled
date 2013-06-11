.class Lcom/googlecode/javacv/JavaCvErrorCallback$1;
.super Ljava/lang/Object;
.source "JavaCvErrorCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/JavaCvErrorCallback;->call(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/googlecode/javacpp/Pointer;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacv/JavaCvErrorCallback;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/JavaCvErrorCallback;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/googlecode/javacv/JavaCvErrorCallback$1;->this$0:Lcom/googlecode/javacv/JavaCvErrorCallback;

    iput-object p2, p0, Lcom/googlecode/javacv/JavaCvErrorCallback$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCvErrorCallback$1;->this$0:Lcom/googlecode/javacv/JavaCvErrorCallback;

    #getter for: Lcom/googlecode/javacv/JavaCvErrorCallback;->parent:Ljava/awt/Component;
    invoke-static {v0}, Lcom/googlecode/javacv/JavaCvErrorCallback;->access$000(Lcom/googlecode/javacv/JavaCvErrorCallback;)Ljava/awt/Component;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacv/JavaCvErrorCallback$1;->val$message:Ljava/lang/String;

    const-string v2, "OpenCV Error"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 75
    return-void
.end method
