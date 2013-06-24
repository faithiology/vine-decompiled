.class public Lcom/googlecode/javacv/Parallel;
.super Ljava/lang/Object;
.source "Parallel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/Parallel$Looper;
    }
.end annotation


# static fields
.field public static final NUM_THREADS:Ljava/lang/String; = "com.googlecode.javacv.numthreads"

.field private static final threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/Parallel;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static getNumCores()I
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public static getNumThreads()I
    .locals 3

    .prologue
    .line 37
    :try_start_0
    const-string v2, "com.googlecode.javacv.numthreads"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 44
    :goto_0
    return v2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 44
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    invoke-static {}, Lcom/googlecode/javacv/Parallel;->getNumCores()I

    move-result v2

    goto :goto_0
.end method

.method public static loop(IIILcom/googlecode/javacv/Parallel$Looper;)V
    .locals 8
    .parameter "from"
    .parameter "to"
    .parameter "numThreads"
    .parameter "looper"

    .prologue
    .line 92
    sub-int v6, p1, p0

    if-lez p2, :cond_0

    .end local p2
    :goto_0
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 93
    .local v2, numLoopers:I
    new-array v3, v2, [Ljava/lang/Runnable;

    .line 94
    .local v3, runnables:[Ljava/lang/Runnable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 95
    sub-int v6, p1, p0

    mul-int/2addr v6, v0

    div-int/2addr v6, v2

    add-int v4, v6, p0

    .line 96
    .local v4, subFrom:I
    sub-int v6, p1, p0

    add-int/lit8 v7, v0, 0x1

    mul-int/2addr v6, v7

    div-int/2addr v6, v2

    add-int v5, v6, p0

    .line 97
    .local v5, subTo:I
    move v1, v0

    .line 98
    .local v1, looperID:I
    new-instance v6, Lcom/googlecode/javacv/Parallel$1;

    invoke-direct {v6, p3, v4, v5, v1}, Lcom/googlecode/javacv/Parallel$1;-><init>(Lcom/googlecode/javacv/Parallel$Looper;III)V

    aput-object v6, v3, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    .end local v0           #i:I
    .end local v1           #looperID:I
    .end local v2           #numLoopers:I
    .end local v3           #runnables:[Ljava/lang/Runnable;
    .end local v4           #subFrom:I
    .end local v5           #subTo:I
    .restart local p2
    :cond_0
    invoke-static {}, Lcom/googlecode/javacv/Parallel;->getNumCores()I

    move-result p2

    goto :goto_0

    .line 104
    .end local p2
    .restart local v0       #i:I
    .restart local v2       #numLoopers:I
    .restart local v3       #runnables:[Ljava/lang/Runnable;
    :cond_1
    invoke-static {v3}, Lcom/googlecode/javacv/Parallel;->run([Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public static loop(IILcom/googlecode/javacv/Parallel$Looper;)V
    .locals 1
    .parameter "from"
    .parameter "to"
    .parameter "looper"

    .prologue
    .line 89
    invoke-static {}, Lcom/googlecode/javacv/Parallel;->getNumThreads()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/googlecode/javacv/Parallel;->loop(IIILcom/googlecode/javacv/Parallel$Looper;)V

    .line 90
    return-void
.end method

.method public static varargs run([Ljava/lang/Runnable;)V
    .locals 11
    .parameter "runnables"

    .prologue
    const/4 v10, 0x1

    .line 55
    array-length v8, p0

    if-ne v8, v10, :cond_1

    .line 56
    const/4 v8, 0x0

    aget-object v8, p0, v8

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 82
    :cond_0
    return-void

    .line 60
    :cond_1
    array-length v8, p0

    new-array v3, v8, [Ljava/util/concurrent/Future;

    .line 61
    .local v3, futures:[Ljava/util/concurrent/Future;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, p0

    if-ge v4, v8, :cond_2

    .line 62
    sget-object v8, Lcom/googlecode/javacv/Parallel;->threadPool:Ljava/util/concurrent/ExecutorService;

    aget-object v9, p0, v4

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v8

    aput-object v8, v3, v4

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 65
    :cond_2
    const/4 v1, 0x0

    .line 67
    .local v1, error:Ljava/lang/Throwable;
    move-object v0, v3

    .local v0, arr$:[Ljava/util/concurrent/Future;
    :try_start_0
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v2, v0, v5

    .line 68
    .local v2, f:Ljava/util/concurrent/Future;
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v8

    if-nez v8, :cond_3

    .line 69
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 72
    .end local v2           #f:Ljava/util/concurrent/Future;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_0
    move-exception v7

    .line 73
    .local v7, t:Ljava/lang/Throwable;
    move-object v1, v7

    .line 76
    .end local v7           #t:Ljava/lang/Throwable;
    :cond_4
    if-eqz v1, :cond_0

    .line 77
    move-object v0, v3

    array-length v6, v0

    .restart local v6       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    :goto_2
    if-ge v5, v6, :cond_5

    aget-object v2, v0, v5

    .line 78
    .restart local v2       #f:Ljava/util/concurrent/Future;
    invoke-interface {v2, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 77
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 80
    .end local v2           #f:Ljava/util/concurrent/Future;
    :cond_5
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public static setNumThreads(I)V
    .locals 2
    .parameter "numThreads"

    .prologue
    .line 47
    const-string v0, "com.googlecode.javacv.numthreads"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    return-void
.end method
