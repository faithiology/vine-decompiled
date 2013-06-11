.class public Lcom/googlecode/javacv/JavaCvErrorCallback;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvErrorCallback;
.source "JavaCvErrorCallback.java"


# instance fields
.field private lastErrorTime:J

.field private parent:Ljava/awt/Component;

.field private rc:I

.field private showDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/googlecode/javacv/JavaCvErrorCallback;-><init>(Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "showDialog"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/googlecode/javacv/JavaCvErrorCallback;-><init>(ZLjava/awt/Component;)V

    .line 43
    return-void
.end method

.method public constructor <init>(ZLjava/awt/Component;)V
    .locals 1
    .parameter "showDialog"
    .parameter "parent"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/googlecode/javacv/JavaCvErrorCallback;-><init>(ZLjava/awt/Component;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(ZLjava/awt/Component;I)V
    .locals 2
    .parameter "showDialog"
    .parameter "parent"
    .parameter "rc"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvErrorCallback;-><init>()V

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/javacv/JavaCvErrorCallback;->lastErrorTime:J

    .line 48
    iput-object p2, p0, Lcom/googlecode/javacv/JavaCvErrorCallback;->parent:Ljava/awt/Component;

    .line 49
    iput-boolean p1, p0, Lcom/googlecode/javacv/JavaCvErrorCallback;->showDialog:Z

    .line 50
    iput p3, p0, Lcom/googlecode/javacv/JavaCvErrorCallback;->rc:I

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/googlecode/javacv/JavaCvErrorCallback;)Ljava/awt/Component;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCvErrorCallback;->parent:Ljava/awt/Component;

    return-object v0
.end method


# virtual methods
.method public call(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/googlecode/javacpp/Pointer;)I
    .locals 7
    .parameter "status"
    .parameter "func_name"
    .parameter "err_msg"
    .parameter "file_name"
    .parameter "line"
    .parameter "userdata"

    .prologue
    .line 60
    const-string v1, "OpenCV Error"

    .line 61
    .local v1, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvErrorStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\nin function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, message:Ljava/lang/String;
    const-class v2, Lcom/googlecode/javacv/JavaCvErrorCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OpenCV Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Strack trace"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    iget-boolean v2, p0, Lcom/googlecode/javacv/JavaCvErrorCallback;->showDialog:Z

    if-eqz v2, :cond_1

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/googlecode/javacv/JavaCvErrorCallback;->lastErrorTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 71
    new-instance v2, Lcom/googlecode/javacv/JavaCvErrorCallback$1;

    invoke-direct {v2, p0, v0}, Lcom/googlecode/javacv/JavaCvErrorCallback$1;-><init>(Lcom/googlecode/javacv/JavaCvErrorCallback;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/awt/EventQueue;->invokeLater(Ljava/lang/Runnable;)V

    .line 78
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/googlecode/javacv/JavaCvErrorCallback;->lastErrorTime:J

    .line 80
    :cond_1
    iget v2, p0, Lcom/googlecode/javacv/JavaCvErrorCallback;->rc:I

    return v2
.end method
