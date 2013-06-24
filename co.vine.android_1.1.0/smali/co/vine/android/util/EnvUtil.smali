.class public Lco/vine/android/util/EnvUtil;
.super Ljava/lang/Object;
.source "EnvUtil.java"


# static fields
.field public static final CURRENT:I = 0x2

.field public static final DEV:I = 0x1

.field public static final LOGS_ON:Z = false

.field public static final PRODUCTION:I = 0x2

.field private static sInstance:Lco/vine/android/util/EnvUtil;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lco/vine/android/util/EnvUtil;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static get(Landroid/content/Context;)Lco/vine/android/util/EnvUtil;
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    sget-object v0, Lco/vine/android/util/EnvUtil;->sInstance:Lco/vine/android/util/EnvUtil;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lco/vine/android/util/EnvUtil;

    invoke-direct {v0, p0}, Lco/vine/android/util/EnvUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/vine/android/util/EnvUtil;->sInstance:Lco/vine/android/util/EnvUtil;

    .line 31
    :cond_0
    sget-object v0, Lco/vine/android/util/EnvUtil;->sInstance:Lco/vine/android/util/EnvUtil;

    return-object v0
.end method


# virtual methods
.method public getAmazonBucket()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x2

    packed-switch v0, :pswitch_data_0

    .line 69
    iget-object v0, p0, Lco/vine/android/util/EnvUtil;->mContext:Landroid/content/Context;

    sget v1, Lco/vine/android/shared/R$string;->amazon_bucket_dev:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 65
    :pswitch_0
    iget-object v0, p0, Lco/vine/android/util/EnvUtil;->mContext:Landroid/content/Context;

    sget v1, Lco/vine/android/shared/R$string;->amazon_bucket:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x2

    packed-switch v0, :pswitch_data_0

    .line 45
    iget-object v0, p0, Lco/vine/android/util/EnvUtil;->mContext:Landroid/content/Context;

    sget v1, Lco/vine/android/shared/R$string;->vine_api_dev:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 41
    :pswitch_0
    iget-object v0, p0, Lco/vine/android/util/EnvUtil;->mContext:Landroid/content/Context;

    sget v1, Lco/vine/android/shared/R$string;->vine_api:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getDefaultAvatarUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x2

    packed-switch v0, :pswitch_data_0

    .line 111
    iget-object v0, p0, Lco/vine/android/util/EnvUtil;->mContext:Landroid/content/Context;

    sget v1, Lco/vine/android/shared/R$string;->default_avatar_url_dev:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 107
    :pswitch_0
    iget-object v0, p0, Lco/vine/android/util/EnvUtil;->mContext:Landroid/content/Context;

    sget v1, Lco/vine/android/shared/R$string;->default_avatar_url:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getExploreUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x2

    packed-switch v0, :pswitch_data_0

    .line 81
    iget-object v0, p0, Lco/vine/android/util/EnvUtil;->mContext:Landroid/content/Context;

    sget v1, Lco/vine/android/shared/R$string;->explore_url_dev:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 77
    :pswitch_0
    iget-object v0, p0, Lco/vine/android/util/EnvUtil;->mContext:Landroid/content/Context;

    sget v1, Lco/vine/android/shared/R$string;->explore_url:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getMediaUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x2

    packed-switch v0, :pswitch_data_0

    .line 57
    iget-object v0, p0, Lco/vine/android/util/EnvUtil;->mContext:Landroid/content/Context;

    sget v1, Lco/vine/android/shared/R$string;->vine_media_api_dev:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 53
    :pswitch_0
    iget-object v0, p0, Lco/vine/android/util/EnvUtil;->mContext:Landroid/content/Context;

    sget v1, Lco/vine/android/shared/R$string;->vine_media_api:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getStatusUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x2

    packed-switch v0, :pswitch_data_0

    .line 93
    iget-object v0, p0, Lco/vine/android/util/EnvUtil;->mContext:Landroid/content/Context;

    sget v1, Lco/vine/android/shared/R$string;->status_url_dev:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 89
    :pswitch_0
    iget-object v0, p0, Lco/vine/android/util/EnvUtil;->mContext:Landroid/content/Context;

    sget v1, Lco/vine/android/shared/R$string;->status_url:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
