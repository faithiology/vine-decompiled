.class public final Lco/vine/android/provider/Vine$TagSearchResults;
.super Ljava/lang/Object;
.source "Vine.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lco/vine/android/provider/Vine$TagsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/Vine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TagSearchResults"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final SORT_ORDER_DEFAULT:Ljava/lang/String; = "_id ASC"

.field public static final SORT_ORDER_DEFAULT_IS_LAST:Ljava/lang/String; = "_id DESC"

.field public static final TABLE_NAME:Ljava/lang/String; = "tag_search_results"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    const-string v0, "content://co.vine.android.provider.VineProvider/tag_search_results"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$TagSearchResults;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
