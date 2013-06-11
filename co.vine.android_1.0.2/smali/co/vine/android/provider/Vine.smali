.class public Lco/vine/android/provider/Vine;
.super Ljava/lang/Object;
.source "Vine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/provider/Vine$PageCursors;,
        Lco/vine/android/provider/Vine$Settings;,
        Lco/vine/android/provider/Vine$PostCommentsLikesView;,
        Lco/vine/android/provider/Vine$PostGroupsView;,
        Lco/vine/android/provider/Vine$UserGroupsView;,
        Lco/vine/android/provider/Vine$PostGroupColumns;,
        Lco/vine/android/provider/Vine$PostColumns;,
        Lco/vine/android/provider/Vine$BasePostColumns;,
        Lco/vine/android/provider/Vine$LikesColumns;,
        Lco/vine/android/provider/Vine$CommentsColumns;,
        Lco/vine/android/provider/Vine$UserGroupColumns;,
        Lco/vine/android/provider/Vine$UserColumns;,
        Lco/vine/android/provider/Vine$Activity;,
        Lco/vine/android/provider/Vine$Likes;,
        Lco/vine/android/provider/Vine$PostGroups;,
        Lco/vine/android/provider/Vine$Posts;,
        Lco/vine/android/provider/Vine$Comments;,
        Lco/vine/android/provider/Vine$UserGroups;,
        Lco/vine/android/provider/Vine$Users;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "co.vine.android.provider.VineProvider"

.field public static final CONTENT_AUTHORITY:Ljava/lang/String; = "content://co.vine.android.provider.VineProvider/"

.field public static final LIMIT_DEFAULT:I = 0x14

.field public static final QUERY_PARAMETER_DB_OWNER_ID:Ljava/lang/String; = "db_owner_id"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    return-void
.end method
