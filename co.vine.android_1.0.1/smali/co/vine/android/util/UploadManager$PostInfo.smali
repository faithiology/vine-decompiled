.class public Lco/vine/android/util/UploadManager$PostInfo;
.super Ljava/lang/Object;
.source "UploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/util/UploadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostInfo"
.end annotation


# instance fields
.field public final caption:Ljava/lang/String;

.field public final postToTwitter:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "caption"
    .parameter "postToTwitter"

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    if-nez p1, :cond_0

    .line 358
    const-string p1, ""

    .line 360
    :cond_0
    iput-object p1, p0, Lco/vine/android/util/UploadManager$PostInfo;->caption:Ljava/lang/String;

    .line 361
    iput-boolean p2, p0, Lco/vine/android/util/UploadManager$PostInfo;->postToTwitter:Z

    .line 362
    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 365
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "postToTwitter"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lco/vine/android/util/UploadManager$PostInfo;-><init>(Ljava/lang/String;Z)V

    .line 366
    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lco/vine/android/util/UploadManager$PostInfo;
    .locals 3
    .parameter "json"

    .prologue
    .line 370
    :try_start_0
    new-instance v1, Lco/vine/android/util/UploadManager$PostInfo;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lco/vine/android/util/UploadManager$PostInfo;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This should never happen."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private toJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 382
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 384
    .local v1, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "description"

    iget-object v3, p0, Lco/vine/android/util/UploadManager$PostInfo;->caption:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    const-string v2, "postToTwitter"

    iget-boolean v3, p0, Lco/vine/android/util/UploadManager$PostInfo;->postToTwitter:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    return-object v1

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This should never happen."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    invoke-direct {p0}, Lco/vine/android/util/UploadManager$PostInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
