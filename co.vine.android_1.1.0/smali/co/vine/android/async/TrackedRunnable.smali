.class public Lco/vine/android/async/TrackedRunnable;
.super Ljava/lang/Object;
.source "TrackedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private action:Ljava/lang/Runnable;

.field private isDone:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lco/vine/android/async/TrackedRunnable;->action:Ljava/lang/Runnable;

    .line 11
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lco/vine/android/async/TrackedRunnable;->action:Ljava/lang/Runnable;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lco/vine/android/async/TrackedRunnable;->isDone:Z

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/async/TrackedRunnable;->isDone:Z

    .line 16
    iget-object v0, p0, Lco/vine/android/async/TrackedRunnable;->action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/async/TrackedRunnable;->isDone:Z

    .line 18
    return-void
.end method
