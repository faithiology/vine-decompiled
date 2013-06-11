.class public Lco/vine/android/recorder/RecordConfigUtils;
.super Ljava/lang/Object;
.source "RecordConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final AUDIO_BUFFER_SIZE:I = 0x0

.field public static final AUDIO_CONTAINER_FORMAT:Ljava/lang/String; = "mp4"

.field public static final AUDIO_FORMAT:I = 0x10

.field public static final AUDIO_SAMPLE_RATE_HZ:I = 0xac44

.field public static final DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config; = null

.field public static final DEFAULT_TARGET_SIZE:I = 0x1e0

.field public static final FOLDER_AUDIO:Ljava/lang/String; = "audio"

.field public static final FOLDER_PROCESSED:Ljava/lang/String; = "processed"

.field public static final FOLDER_RAW:Ljava/lang/String; = "raw"

.field public static final FOLDER_ROOT_PROCESS:Ljava/lang/String; = "process"

.field private static final FOLDER_ROOT_PROCESS_DEBUG:Ljava/io/File; = null

.field private static final FOLDER_ROOT_SAVE:Ljava/lang/String; = null

.field public static final FOLDER_ROOT_TO_UPLOAD:Ljava/lang/String; = "upload"

.field public static final HIGHEST_PROFILE:I = 0x4

.field public static final N_AUDIO_CHANNELS:I = 0x1

.field public static final N_IMAGE_CHANNELS:I = 0x4

.field public static final OFFSET:I = 0x1

.field public static final OFFSET_DISTANCE:I = 0x4

.field public static final PROGRESS_THRESHOLD:I = 0x3e8

.field public static final PROGRESS_TIMER_SLEEP:I = 0x23

.field private static final UPLOAD_IMAGE_EXTENSION:Ljava/lang/String; = "_image"

.field public static final VIDEO_CONTAINER_FORMAT:Ljava/lang/String; = "mp4"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 144
    const v0, 0xac44

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    sput v0, Lco/vine/android/recorder/RecordConfigUtils;->AUDIO_BUFFER_SIZE:I

    .line 147
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lco/vine/android/recorder/RecordConfigUtils;->DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    .line 156
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Vine"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lco/vine/android/recorder/RecordConfigUtils;->FOLDER_ROOT_SAVE:Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "vine_capture"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lco/vine/android/recorder/RecordConfigUtils;->FOLDER_ROOT_PROCESS_DEBUG:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lco/vine/android/recorder/RecordConfigUtils;->FOLDER_ROOT_PROCESS_DEBUG:Ljava/io/File;

    return-object v0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 7
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v5, 0x0

    .line 183
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 184
    .local v2, in:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 185
    .local v4, out:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 187
    .local v0, buf:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, len:I
    if-lez v3, :cond_0

    .line 188
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    .end local v0           #buf:[B
    .end local v2           #in:Ljava/io/FileInputStream;
    .end local v3           #len:I
    .end local v4           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 193
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "Failed to copy"

    invoke-static {v6, v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    return v5

    .line 190
    .restart local v0       #buf:[B
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v3       #len:I
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 191
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static copyForUpload(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "root"
    .parameter "path"
    .parameter "originalNameForImage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, actualFile:Ljava/io/File;
    if-nez p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {p0, v2}, Lco/vine/android/recorder/RecordConfigUtils;->getUploadFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 206
    .local v1, finalName:Ljava/io/File;
    invoke-static {v0, v1}, Lco/vine/android/recorder/RecordConfigUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    return-object v1

    .line 205
    .end local v1           #finalName:Ljava/io/File;
    :cond_0
    invoke-static {p2}, Lco/vine/android/recorder/RecordConfigUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 209
    .restart local v1       #finalName:Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Failed to copy file for upload."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static deleteNonFolders(Ljava/io/File;)V
    .locals 5
    .parameter "f"

    .prologue
    .line 174
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 176
    .local v1, c:Ljava/io/File;
    invoke-static {v1}, Lco/vine/android/recorder/RecordConfigUtils;->deleteNonFolders(Ljava/io/File;)V

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #c:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return-void
.end method

.method public static deletePreProcess(Ljava/io/File;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 170
    new-instance v0, Ljava/io/File;

    const-string v1, "process"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lco/vine/android/recorder/RecordConfigUtils;->deleteNonFolders(Ljava/io/File;)V

    .line 171
    return-void
.end method

.method public static declared-synchronized getCameraRollFile(Landroid/content/Context;J)Ljava/io/File;
    .locals 13
    .parameter "context"
    .parameter "startTime"

    .prologue
    const/4 v11, 0x0

    .line 225
    const-class v12, Lco/vine/android/recorder/RecordConfigUtils;

    monitor-enter v12

    const/4 v9, 0x0

    .line 226
    .local v9, mediaStorageDir:Ljava/io/File;
    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    new-instance v10, Ljava/io/File;

    sget-object v0, Lco/vine/android/recorder/RecordConfigUtils;->FOLDER_ROOT_SAVE:Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9           #mediaStorageDir:Ljava/io/File;
    .local v10, mediaStorageDir:Ljava/io/File;
    move-object v9, v10

    .line 240
    .end local v10           #mediaStorageDir:Ljava/io/File;
    .restart local v9       #mediaStorageDir:Ljava/io/File;
    :cond_0
    :goto_0
    if-nez v9, :cond_2

    move-object v0, v11

    .line 252
    :goto_1
    monitor-exit v12

    return-object v0

    .line 230
    :cond_1
    const/4 v0, 0x3

    :try_start_1
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "datetaken"

    aput-object v1, v2, v0

    .line 231
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "datetaken DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 232
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v10, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "Vine"

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v9           #mediaStorageDir:Ljava/io/File;
    .restart local v10       #mediaStorageDir:Ljava/io/File;
    move-object v9, v10

    .end local v10           #mediaStorageDir:Ljava/io/File;
    .restart local v9       #mediaStorageDir:Ljava/io/File;
    goto :goto_0

    .line 235
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 236
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "Failed to get internal path"

    invoke-static {v0, v7}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 225
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0

    .line 244
    :cond_2
    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 245
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    const-string v0, "Failed to make dirs."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 247
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to make directories. You will be doomed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    move-object v0, v11

    .line 248
    goto :goto_1

    .line 251
    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH:mm:sss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 252
    .local v8, fileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "mp4"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method public static getMetadata()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v0, metadata:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "creation_time"

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss.SSSZ"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-object v0
.end method

.method public static declared-synchronized getPreProcessFile(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "config"
    .parameter "folder"
    .parameter "id"
    .parameter "extension"

    .prologue
    .line 269
    const-class v1, Lco/vine/android/recorder/RecordConfigUtils;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->processDir:Ljava/io/File;

    invoke-static {v0, p1, p2, p3}, Lco/vine/android/recorder/RecordConfigUtils;->getPreProcessFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPreProcessFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter "dir"
    .parameter "folder"
    .parameter "id"
    .parameter "extension"

    .prologue
    .line 257
    const-class v2, Lco/vine/android/recorder/RecordConfigUtils;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v3, "process"

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 258
    .local v0, mediaStorageDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    const-string v1, "Failed to make dirs."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 261
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Failed to make directories. You will be doomed."

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .end local v0           #mediaStorageDir:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 264
    .restart local v0       #mediaStorageDir:Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v3

    :cond_1
    :try_start_2
    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getUploadFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "root"
    .parameter "fileName"

    .prologue
    .line 214
    const-class v2, Lco/vine/android/recorder/RecordConfigUtils;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "upload"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    .local v0, mediaStorageDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    const-string v1, "Failed to make dirs: {},"

    invoke-static {v1, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Failed to make directories. You will be doomed."

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .end local v0           #mediaStorageDir:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 221
    .restart local v0       #mediaStorageDir:Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1
.end method
