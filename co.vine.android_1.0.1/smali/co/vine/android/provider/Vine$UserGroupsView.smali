.class public final Lco/vine/android/provider/Vine$UserGroupsView;
.super Ljava/lang/Object;
.source "Vine.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lco/vine/android/provider/Vine$UserColumns;
.implements Lco/vine/android/provider/Vine$UserGroupColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/Vine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserGroupsView"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_FIND_FRIENDS_ADDRESS:Landroid/net/Uri; = null

.field public static final CONTENT_URI_FIND_FRIENDS_TWITTER:Landroid/net/Uri; = null

.field public static final CONTENT_URI_FOLLOWERS:Landroid/net/Uri; = null

.field public static final CONTENT_URI_FOLLOWING:Landroid/net/Uri; = null

.field public static final CONTENT_URI_LIKERS:Landroid/net/Uri; = null

.field public static final SORT_ORDER_DEFAULT:Ljava/lang/String; = "_id ASC"

.field public static final SORT_ORDER_DEFINED_ASCENDING:Ljava/lang/String; = "order_id ASC"

.field public static final SORT_ORDER_DEFINED_DESCENDING:Ljava/lang/String; = "order_id DESC"

.field public static final SORT_ORDER_DEFINED_DESCENDING_IS_LAST:Ljava/lang/String; = "order_id ASC"

.field public static final SORT_ORDER_DEFINED_LAST:Ljava/lang/String; = "order_id DESC"

.field static final TABLE_NAME:Ljava/lang/String; = "user_groups_view"

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 539
    const-string v0, "content://co.vine.android.provider.VineProvider/user_groups_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI:Landroid/net/Uri;

    .line 544
    const-string v0, "content://co.vine.android.provider.VineProvider/user_groups_view/followers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FOLLOWERS:Landroid/net/Uri;

    .line 547
    const-string v0, "content://co.vine.android.provider.VineProvider/user_groups_view/following"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FOLLOWING:Landroid/net/Uri;

    .line 550
    const-string v0, "content://co.vine.android.provider.VineProvider/user_groups_view/find_friends_twitter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FIND_FRIENDS_TWITTER:Landroid/net/Uri;

    .line 553
    const-string v0, "content://co.vine.android.provider.VineProvider/user_groups_view/find_friends_address"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FIND_FRIENDS_ADDRESS:Landroid/net/Uri;

    .line 556
    const-string v0, "content://co.vine.android.provider.VineProvider/user_groups_view/likers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_LIKERS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
