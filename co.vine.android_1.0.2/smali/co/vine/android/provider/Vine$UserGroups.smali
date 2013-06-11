.class public final Lco/vine/android/provider/Vine$UserGroups;
.super Ljava/lang/Object;
.source "Vine.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lco/vine/android/provider/Vine$UserGroupColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/Vine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserGroups"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.vine.android.users.groups"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.vine.android.users.groups"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final SORT_ORDER_DEFAULT:Ljava/lang/String; = "type DESC"

.field static final TABLE_NAME:Ljava/lang/String; = "user_groups"

.field public static final TAG_UNSPECIFIED:I = -0x1

.field public static final TYPE_USER_COMMENTS:I = 0x3

.field public static final TYPE_USER_FIND_FRIENDS_ADDRESS:I = 0x7

.field public static final TYPE_USER_FIND_FRIENDS_TWITTER:I = 0x6

.field public static final TYPE_USER_FOLLOWER:I = 0x2

.field public static final TYPE_USER_FOLLOWING:I = 0x1

.field public static final TYPE_USER_LIKERS:I = 0x5

.field public static final TYPE_USER_POSTS:I = 0x4

.field public static final TYPE_USER_UNDEFINED:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "content://co.vine.android.provider.VineProvider/user_groups"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$UserGroups;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
