.class Lco/vine/android/recorder/VineRecorder$2;
.super Ljava/lang/Object;
.source "VineRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/VineRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;


# direct methods
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$2;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$2;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$2;->this$0:Lco/vine/android/recorder/VineRecorder;

    #getter for: Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$000(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/RecordController;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$2;->this$0:Lco/vine/android/recorder/VineRecorder;

    #calls: Lco/vine/android/recorder/VineRecorder;->startRecording()V
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$200(Lco/vine/android/recorder/VineRecorder;)V

    .line 112
    :cond_0
    return-void
.end method
