.class public Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
.super Ljava/lang/Object;
.source "RecordConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/RecordConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordConfig"
.end annotation


# static fields
.field private static final CAMERA_SWITCH_ENABLED:Z = false

.field private static final FLASH_SWITCH_ENABLED:Z = false

.field private static final INITIAL_VIDEO_BUFFER_COUNT:I = 0x78

.field private static final KEY_BUFFER_SIZE:Ljava/lang/String; = "bufferSize"

.field private static final KEY_CAMERA_SWITCH_ENABLED:Ljava/lang/String; = "cameraSwitchEnabled"

.field private static final KEY_FLASH_SWITCH_ENABLED:Ljava/lang/String; = "flashSwitchEnabled"

.field private static final KEY_FRAME_RATE:Ljava/lang/String; = "frameRate"

.field private static final KEY_MAX_DURATION:Ljava/lang/String; = "maxDuration"

.field private static final KEY_PREALLOCATE_BUFFER:Ljava/lang/String; = "preAllocateBuffer"

.field private static final KEY_PREF:Ljava/lang/String; = "RecordConfig"

.field private static final KEY_PREVIEW_WIDTH:Ljava/lang/String; = "previewWidth"

.field private static final KEY_PROCESS_ON_SD:Ljava/lang/String; = "processOnSD"

.field private static final KEY_RECORDING_ENABLED:Ljava/lang/String; = "recordingEnabled"

.field private static final KEY_TARGET_SIZE:Ljava/lang/String; = "targetSize"

.field private static final KEY_UPDATE_TIME:Ljava/lang/String; = "updateTime"

.field private static final KEY_ZOOM_ENABLED:Ljava/lang/String; = "zoomEnabled"

.field private static final PREVIEW_WIDTH:I = 0x280

.field private static final PRE_ALLOCATE:Z = false

.field private static final PROCESS_ON_SD_CARD:Z = false

.field private static final PROGRESS_MAX:I = 0x1770

.field private static final TARGET_FRAME_RATE:I = 0x18

.field private static final ZOOM_ENABLED:Z = true


# instance fields
.field public final bufferCount:I

.field public final cameraSwitchEnabled:Z

.field public final flashSwitchEnabled:Z

.field public final maxDuration:I

.field public final preAllocateBuffer:Z

.field public final previewWidth:I

.field public final processDir:Ljava/io/File;

.field public final processOnSd:Z

.field public final recordingEnabled:Z

.field public final targetFrameRate:I

.field public final targetSize:I

.field public final zoomEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v2, 0x0

    .line 79
    .local v2, mem:I
    :try_start_0
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getLargeMemoryClass()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 83
    :goto_0
    if-nez v2, :cond_0

    move v3, v6

    .line 85
    .local v3, ratio:I
    :goto_1
    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    move v0, v7

    .line 86
    .local v0, defaultPreAllocation:Z
    :goto_2
    if-lt v3, v6, :cond_2

    move v1, v6

    .line 88
    .local v1, defaultRecordingEnabled:Z
    :goto_3
    const-string v5, "RecordConfig"

    invoke-virtual {p1, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 89
    .local v4, sp:Landroid/content/SharedPreferences;
    const-string v5, "preAllocateBuffer"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->preAllocateBuffer:Z

    .line 90
    const-string v5, "recordingEnabled"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->recordingEnabled:Z

    .line 91
    const-string v5, "zoomEnabled"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->zoomEnabled:Z

    .line 92
    const-string v5, "processOnSD"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->processOnSd:Z

    .line 93
    iget-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->processOnSd:Z

    if-eqz v5, :cond_3

    invoke-static {}, Lco/vine/android/recorder/RecordConfigUtils;->access$000()Ljava/io/File;

    move-result-object v5

    :goto_4
    iput-object v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->processDir:Ljava/io/File;

    .line 94
    const-string v5, "cameraSwitchEnabled"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->cameraSwitchEnabled:Z

    .line 95
    const-string v5, "flashSwitchEnabled"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->flashSwitchEnabled:Z

    .line 96
    const-string v5, "frameRate"

    const/16 v6, 0x18

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I

    .line 97
    const-string v5, "targetSize"

    const/16 v6, 0x1e0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetSize:I

    .line 98
    const-string v5, "previewWidth"

    const/16 v6, 0x280

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I

    .line 99
    const-string v5, "bufferSize"

    const/16 v6, 0x78

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->bufferCount:I

    .line 100
    const-string v5, "maxDuration"

    const/16 v6, 0x1770

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I

    .line 101
    return-void

    .line 83
    .end local v0           #defaultPreAllocation:Z
    .end local v1           #defaultRecordingEnabled:Z
    .end local v3           #ratio:I
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_0
    div-int/lit16 v3, v2, 0x80

    goto :goto_1

    .restart local v3       #ratio:I
    :cond_1
    move v0, v6

    .line 85
    goto :goto_2

    .restart local v0       #defaultPreAllocation:Z
    :cond_2
    move v1, v7

    .line 86
    goto :goto_3

    .line 93
    .restart local v1       #defaultRecordingEnabled:Z
    .restart local v4       #sp:Landroid/content/SharedPreferences;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    goto :goto_4

    .line 80
    .end local v0           #defaultPreAllocation:Z
    .end local v1           #defaultRecordingEnabled:Z
    .end local v3           #ratio:I
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method public static needsUpdate(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "RecordConfig"

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "updateTime"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static declared-synchronized update(Landroid/content/Context;Lorg/json/JSONObject;)Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
    .locals 6
    .parameter "context"
    .parameter "config"

    .prologue
    .line 108
    const-class v3, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    monitor-enter v3

    :try_start_0
    const-string v2, "Update config: {}."

    invoke-static {v2, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    new-instance v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    invoke-direct {v1, p0}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V

    .line 110
    .local v1, oldConfig:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
    const-string v2, "RecordConfig"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "preAllocateBuffer"

    const-string v4, "preAllocateBuffer"

    iget-boolean v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->preAllocateBuffer:Z

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string v2, "recordingEnabled"

    const-string v4, "recordingEnabled"

    iget-boolean v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->recordingEnabled:Z

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v2, "zoomEnabled"

    const-string v4, "zoomEnabled"

    iget-boolean v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->zoomEnabled:Z

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-string v2, "cameraSwitchEnabled"

    const-string v4, "cameraSwitchEnabled"

    iget-boolean v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->cameraSwitchEnabled:Z

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    const-string v2, "flashSwitchEnabled"

    const-string v4, "flashSwitchEnabled"

    iget-boolean v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->flashSwitchEnabled:Z

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string v2, "processOnSD"

    const-string v4, "processOnSD"

    iget-boolean v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->processOnSd:Z

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 117
    const-string v2, "frameRate"

    const-string v4, "frameRate"

    iget v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 118
    const-string v2, "targetSize"

    const-string v4, "targetSize"

    iget v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetSize:I

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 119
    const-string v2, "previewWidth"

    const-string v4, "previewWidth"

    iget v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->previewWidth:I

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 120
    const-string v2, "bufferSize"

    const-string v4, "bufferSize"

    iget v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->bufferCount:I

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string v2, "maxDuration"

    const-string v4, "maxDuration"

    iget v5, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string v2, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    new-instance v2, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    invoke-direct {v2, p0}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 108
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #oldConfig:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
