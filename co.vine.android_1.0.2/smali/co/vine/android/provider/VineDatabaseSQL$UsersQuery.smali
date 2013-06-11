.class public final Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;
.super Ljava/lang/Object;
.source "VineDatabaseSQL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/VineDatabaseSQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UsersQuery"
.end annotation


# static fields
.field public static final INDEX_AVATAR_URL:I = 0x2

.field public static final INDEX_BLOCKED:I = 0x3

.field public static final INDEX_BLOCKING:I = 0x4

.field public static final INDEX_DESCRIPTION:I = 0x5

.field public static final INDEX_EXPLICIT:I = 0x7

.field public static final INDEX_FOLLOWER_COUNT:I = 0x8

.field public static final INDEX_FOLLOWING_COUNT:I = 0x9

.field public static final INDEX_FRIENDSHIP:I = 0xa

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_IS_LAST:I = 0x10

.field public static final INDEX_LIKE_COUNT:I = 0xb

.field public static final INDEX_LOCATION:I = 0x6

.field public static final INDEX_ORDER:I = 0xf

.field public static final INDEX_POST_COUNT:I = 0xc

.field public static final INDEX_USERNAME:I = 0xd

.field public static final INDEX_USER_ID:I = 0x1

.field public static final INDEX_VERIFIED:I = 0xe

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 288
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "avatar_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "blocked"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "blocking"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "explicit"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "follower_count"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "following_count"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "following_flag"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "like_count"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "post_count"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "username"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "verified"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "order_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "is_last"

    aput-object v2, v0, v1

    sput-object v0, Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
