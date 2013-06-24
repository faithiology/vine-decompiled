.class final Lcom/googlecode/javacv/cpp/cvkernels$1;
.super Ljava/lang/ThreadLocal;
.source "cvkernels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/cvkernels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<[",
        "Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/cvkernels$1;->initialValue()[Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()[Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;
    .locals 4

    .prologue
    .line 108
    invoke-static {}, Lcom/googlecode/javacv/Parallel;->getNumThreads()I

    move-result v2

    new-array v1, v2, [Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;

    .line 109
    .local v1, pd:[Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 110
    new-instance v2, Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/googlecode/javacv/cpp/cvkernels$ParallelData;-><init>(Lcom/googlecode/javacv/cpp/cvkernels$1;)V

    aput-object v2, v1, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-object v1
.end method
