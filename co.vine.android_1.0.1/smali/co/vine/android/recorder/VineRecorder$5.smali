.class Lco/vine/android/recorder/VineRecorder$5;
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
    .line 379
    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$5;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$5;->this$0:Lco/vine/android/recorder/VineRecorder;

    #calls: Lco/vine/android/recorder/VineRecorder;->endRelativeTime()Z
    invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$500(Lco/vine/android/recorder/VineRecorder;)Z

    .line 383
    return-void
.end method
