.class Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable$2;
.super Ljava/lang/Object;
.source "ProgressTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->exec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;

.field final synthetic val$controller:Lco/vine/android/recorder/VineRecorder;


# direct methods
.method constructor <init>(Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;Lco/vine/android/recorder/VineRecorder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable$2;->this$0:Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;

    iput-object p2, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable$2;->val$controller:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable$2;->val$controller:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->onProgressMaxReached()V

    .line 87
    return-void
.end method
