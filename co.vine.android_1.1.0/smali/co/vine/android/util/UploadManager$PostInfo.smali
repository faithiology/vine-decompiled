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

.field public final postToFacebook:Z

.field public final postToTwitter:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "caption"
    .parameter "postToTwitter"
    .parameter "postToFacebook"

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    if-nez p1, :cond_0

    .line 419
    const-string p1, ""

    .line 421
    :cond_0
    iput-object p1, p0, Lco/vine/android/util/UploadManager$PostInfo;->caption:Ljava/lang/String;

    .line 422
    iput-boolean p2, p0, Lco/vine/android/util/UploadManager$PostInfo;->postToTwitter:Z

    .line 423
    iput-boolean p3, p0, Lco/vine/android/util/UploadManager$PostInfo;->postToFacebook:Z

    .line 424
    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 427
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "postToTwitter"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "postToFacebook"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lco/vine/android/util/UploadManager$PostInfo;-><init>(Ljava/lang/String;ZZ)V

    .line 428
    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lco/vine/android/util/UploadManager$PostInfo;
    .locals 3
    .parameter "json"

    .prologue
    .line 432
    :try_start_0
    new-instance v1, Lco/vine/android/util/UploadManager$PostInfo;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lco/vine/android/util/UploadManager$PostInfo;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This should never happen."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private toJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 444
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 446
    .local v1, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "description"

    iget-object v3, p0, Lco/vine/android/util/UploadManager$PostInfo;->caption:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    const-string v2, "postToTwitter"

    iget-boolean v3, p0, Lco/vine/android/util/UploadManager$PostInfo;->postToTwitter:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 448
    const-string v2, "postToFacebook"

    iget-boolean v3, p0, Lco/vine/android/util/UploadManager$PostInfo;->postToFacebook:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    return-object v1

    .line 450
    :catch_0
    move-exception v0

    .line 451
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
    .line 440
    invoke-direct {p0}, Lco/vine/android/util/UploadManager$PostInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
