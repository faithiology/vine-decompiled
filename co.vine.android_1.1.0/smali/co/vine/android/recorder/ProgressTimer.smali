.class public Lco/vine/android/recorder/ProgressTimer;
.super Ljava/lang/Object;
.source "ProgressTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;
    }
.end annotation


# static fields
.field private static final INTERVAL:I = 0x23


# instance fields
.field private final mTask:Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;

.field private final mTaskThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lco/vine/android/recorder/VineRecorder;Landroid/os/Handler;)V
    .locals 2
    .parameter "controller"
    .parameter "handler"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;

    invoke-direct {v0, p1, p2}, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;-><init>(Lco/vine/android/recorder/VineRecorder;Landroid/os/Handler;)V

    iput-object v0, p0, Lco/vine/android/recorder/ProgressTimer;->mTask:Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;

    .line 22
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lco/vine/android/recorder/ProgressTimer;->mTask:Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lco/vine/android/recorder/ProgressTimer;->mTaskThread:Ljava/lang/Thread;

    .line 23
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lco/vine/android/recorder/ProgressTimer;->mTask:Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->run:Z

    .line 31
    iget-object v0, p0, Lco/vine/android/recorder/ProgressTimer;->mTaskThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 32
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lco/vine/android/recorder/ProgressTimer;->mTaskThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 27
    return-void
.end method
