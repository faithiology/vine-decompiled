.class public final Lco/vine/android/provider/Vine$Settings;
.super Ljava/lang/Object;
.source "Vine.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/Vine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.vine.android.settings"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final PROP_NAME:Ljava/lang/String; = "name"

.field public static final PROP_VALUE:Ljava/lang/String; = "value"

.field public static final TABLE_NAME:Ljava/lang/String; = "settings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 706
    const-string v0, "content://co.vine.android.provider.VineProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$Settings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
