.class public final Lco/vine/android/provider/Vine$PostCommentsLikesView;
.super Ljava/lang/Object;
.source "Vine.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lco/vine/android/provider/Vine$BasePostColumns;
.implements Lco/vine/android/provider/Vine$PostColumns;
.implements Lco/vine/android/provider/Vine$PostGroupColumns;
.implements Lco/vine/android/provider/Vine$LikesColumns;
.implements Lco/vine/android/provider/Vine$CommentsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/Vine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostCommentsLikesView"
.end annotation


# static fields
.field public static final COMMENT_USER_AVATAR_URL:Ljava/lang/String; = "comment_user_avatar_url"

.field public static final COMMENT_USER_LOCATION:Ljava/lang/String; = "comment_user_location"

.field public static final COMMENT_USER_TIMESTAMP:Ljava/lang/String; = "comment_user_timestamp"

.field public static final COMMENT_USER_USERNAME:Ljava/lang/String; = "comment_user_username"

.field public static final COMMENT_USER_USER_ID:Ljava/lang/String; = "comment_user_user_id"

.field public static final COMMENT_USER_VERIFIED:Ljava/lang/String; = "comment_user_verified"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_ALL_TIMELINE:Landroid/net/Uri; = null

.field public static final CONTENT_URI_ALL_TIMELINE_EDITORS_PICK:Landroid/net/Uri; = null

.field public static final CONTENT_URI_ALL_TIMELINE_POPULAR_NOW:Landroid/net/Uri; = null

.field public static final CONTENT_URI_ALL_TIMELINE_SINGLE:Landroid/net/Uri; = null

.field public static final CONTENT_URI_ALL_TIMELINE_TAG:Landroid/net/Uri; = null

.field public static final CONTENT_URI_ALL_TIMELINE_USER:Landroid/net/Uri; = null

.field public static final CONTENT_URI_ALL_TIMELINE_USER_LIKES:Landroid/net/Uri; = null

.field public static final IS_LAST:Ljava/lang/String; = "is_last"

.field public static final LIKE_USER_AVATAR_URL:Ljava/lang/String; = "like_user_avatar_url"

.field public static final LIKE_USER_LOCATION:Ljava/lang/String; = "like_user_location"

.field public static final LIKE_USER_TIMESTAMP:Ljava/lang/String; = "like_user_timestamp"

.field public static final LIKE_USER_USERNAME:Ljava/lang/String; = "like_user_username"

.field public static final LIKE_USER_USER_ID:Ljava/lang/String; = "like_user_user_id"

.field public static final LIKE_USER_VERIFIED:Ljava/lang/String; = "like_user_verified"

.field public static final POST_ID:Ljava/lang/String; = "post_id"

.field public static final QUERY_TAG_NAME:Ljava/lang/String; = "tag_name"

.field public static final REQUIRED_ORDER:Ljava/lang/String; = "post_id DESC, comment_id ASC, like_id"

.field public static final SORT_ORDER_DEFINED_LAST:Ljava/lang/String; = "timestamp ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "post_comments_likes_view"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 641
    const-string v0, "content://co.vine.android.provider.VineProvider/post_comments_likes_view"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI:Landroid/net/Uri;

    .line 644
    const-string v0, "content://co.vine.android.provider.VineProvider/post_comments_likes_view/all_timeline"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE:Landroid/net/Uri;

    .line 647
    const-string v0, "content://co.vine.android.provider.VineProvider/post_comments_likes_view/all_timeline_user"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_USER:Landroid/net/Uri;

    .line 650
    const-string v0, "content://co.vine.android.provider.VineProvider/post_comments_likes_view/all_timeline_user_likes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_USER_LIKES:Landroid/net/Uri;

    .line 653
    const-string v0, "content://co.vine.android.provider.VineProvider/post_comments_likes_view/all_timeline_editor"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_EDITORS_PICK:Landroid/net/Uri;

    .line 656
    const-string v0, "content://co.vine.android.provider.VineProvider/post_comments_likes_view/all_timeline_popular"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_POPULAR_NOW:Landroid/net/Uri;

    .line 659
    const-string v0, "content://co.vine.android.provider.VineProvider/post_comments_likes_view/all_timeline_tag"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_TAG:Landroid/net/Uri;

    .line 662
    const-string v0, "content://co.vine.android.provider.VineProvider/post_comments_likes_view/post"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_SINGLE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
