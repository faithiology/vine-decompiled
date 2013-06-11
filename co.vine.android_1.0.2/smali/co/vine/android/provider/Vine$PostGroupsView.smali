.class public final Lco/vine/android/provider/Vine$PostGroupsView;
.super Ljava/lang/Object;
.source "Vine.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lco/vine/android/provider/Vine$PostColumns;
.implements Lco/vine/android/provider/Vine$BasePostColumns;
.implements Lco/vine/android/provider/Vine$PostGroupColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/Vine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostGroupsView"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_FIND_USER_LIKES:Landroid/net/Uri; = null

.field public static final CONTENT_URI_TIMELINE:Landroid/net/Uri; = null

.field public static final CONTENT_URI_USER_PROFILE:Landroid/net/Uri; = null

.field public static final IS_LAST:Ljava/lang/String; = "is_last"

.field public static final POST_ID:Ljava/lang/String; = "post_id"

.field public static final SORT_ORDER_DEFAULT:Ljava/lang/String; = "timestamp DESC"

.field public static final TABLE_NAME:Ljava/lang/String; = "post_groups_view"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 596
    const-string v0, "content://co.vine.android.provider.VineProvider/post_groups_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$PostGroupsView;->CONTENT_URI:Landroid/net/Uri;

    .line 601
    const-string v0, "content://co.vine.android.provider.VineProvider/post_groups_view/timeline"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$PostGroupsView;->CONTENT_URI_TIMELINE:Landroid/net/Uri;

    .line 608
    const-string v0, "content://co.vine.android.provider.VineProvider/post_groups_view/user_profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$PostGroupsView;->CONTENT_URI_USER_PROFILE:Landroid/net/Uri;

    .line 614
    const-string v0, "content://co.vine.android.provider.VineProvider/post_groups_view/user_likes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$PostGroupsView;->CONTENT_URI_FIND_USER_LIKES:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
