.class public Lco/vine/android/util/image/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/util/image/ImageUtils$BitmapInfo;,
        Lco/vine/android/util/image/ImageUtils$ImageFilenameFilter;
    }
.end annotation


# static fields
.field public static final MAX_AVATAR_UPLOAD_SIZE_KB:I = 0x2bc

.field public static final MAX_TWEET_UPLOAD_SIZE_KB:I = 0xc00

.field public static final MIN_REQUIRED_SD_SPACE:J = 0x100000L

.field public static final SUPPORTS_FILTERS:Z = false

.field public static final TEMP_FILENAME_PREFIX:Ljava/lang/String; = "pic-"

.field public static final TEMP_RESIZED_PREFIX:Ljava/lang/String; = "pic-r-"

.field private static final sInStrokePaint:Landroid/graphics/Paint;

.field private static final sOutStrokePaint:Landroid/graphics/Paint;

.field private static final sResizePaint:Landroid/graphics/Paint;

.field private static final sSolidStrokePaint:Landroid/graphics/Paint;

.field public static final sSrcXferMode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, -0xf0f10

    const/high16 v2, 0x3f80

    .line 61
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lco/vine/android/util/image/ImageUtils;->sSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lco/vine/android/util/image/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lco/vine/android/util/image/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    .line 74
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    const v1, -0x1f1f20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lco/vine/android/util/image/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    .line 82
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lco/vine/android/util/image/ImageUtils;->sSolidStrokePaint:Landroid/graphics/Paint;

    .line 90
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sSolidStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sSolidStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    sget-object v0, Lco/vine/android/util/image/ImageUtils;->sSolidStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static adjustRotation(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "uri"
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 1027
    invoke-static {p0, p1}, Lco/vine/android/util/image/ImageUtils;->getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v8

    .line 1029
    .local v8, degrees:I
    packed-switch v8, :pswitch_data_0

    .line 1050
    .end local p2
    :goto_0
    :pswitch_0
    return-object p2

    .line 1031
    .restart local p2
    :pswitch_1
    const/high16 v10, 0x4334

    .line 1043
    .local v10, rotation:F
    :goto_1
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1044
    .local v6, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v6, v10}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1045
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p2

    move v3, v2

    invoke-static/range {v0 .. v7}, Lco/vine/android/util/image/ImageUtils;->createBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1047
    .local v9, result:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    if-eq v9, p2, :cond_0

    .line 1048
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    move-object p2, v9

    .line 1050
    goto :goto_0

    .line 1034
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v9           #result:Landroid/graphics/Bitmap;
    .end local v10           #rotation:F
    :pswitch_2
    const/high16 v10, 0x4387

    .line 1035
    .restart local v10       #rotation:F
    goto :goto_1

    .line 1037
    .end local v10           #rotation:F
    :pswitch_3
    const/high16 v10, 0x42b4

    .line 1038
    .restart local v10       #rotation:F
    goto :goto_1

    .line 1029
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static changeFormatIfNeeded(Landroid/content/Context;Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter "ownerId"

    .prologue
    const/4 v7, 0x0

    .line 666
    if-nez p1, :cond_0

    move-object v4, v7

    .line 701
    :goto_0
    return-object v4

    .line 671
    :cond_0
    const/4 v3, 0x0

    .line 672
    .local v3, inputStream:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 675
    .local v5, optionsStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 676
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 677
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 678
    .local v1, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 679
    const/4 v8, 0x0

    invoke-static {p0, v5, v8, v1}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 680
    iget-object v8, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v9, "image/jpeg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v9, "image/gif"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v9, "image/png"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    .line 700
    :cond_1
    invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 701
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, p1

    goto :goto_0

    .line 686
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 687
    invoke-static {p0, v3}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 688
    .local v6, srcBitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_4

    .line 689
    invoke-static {p0, v6, p2, p3}, Lco/vine/android/util/image/ImageUtils;->writePicToFile(Landroid/content/Context;Landroid/graphics/Bitmap;J)Landroid/net/Uri;

    move-result-object v4

    .line 690
    .local v4, newUri:Landroid/net/Uri;
    if-eqz v4, :cond_3

    .line 691
    invoke-static {p1}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 700
    :cond_3
    invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 701
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 700
    .end local v4           #newUri:Landroid/net/Uri;
    :cond_4
    invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 701
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, v7

    goto :goto_0

    .line 697
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #srcBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 700
    .local v2, e:Ljava/io/IOException;
    invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 701
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v4, v7

    goto :goto_0

    .line 700
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 701
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v7
.end method

.method public static createBitmap(Landroid/content/Context;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 815
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 818
    :goto_0
    return-object v1

    .line 816
    :catch_0
    move-exception v0

    .line 818
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "bmp"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 786
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 789
    :goto_0
    return-object v1

    .line 787
    :catch_0
    move-exception v0

    .line 789
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "bmp"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "matrix"
    .parameter "filter"

    .prologue
    .line 801
    :try_start_0
    invoke-static/range {p1 .. p7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 804
    :goto_0
    return-object v1

    .line 802
    :catch_0
    move-exception v0

    .line 804
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decodeByteArray(Landroid/content/Context;[BII)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 8
    .parameter "context"
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 739
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 740
    .local v1, dbo:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1, p2, p3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 741
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 742
    new-instance v3, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v3, v0, v5, v6, v7}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #dbo:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v3

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #dbo:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    move-object v3, v4

    .line 744
    goto :goto_0

    .line 746
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #dbo:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/OutOfMemoryError;
    move-object v3, v4

    .line 748
    goto :goto_0
.end method

.method public static decodeByteArray(Landroid/content/Context;[BIILandroid/graphics/BitmapFactory$Options;)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 9
    .parameter "context"
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "opts"

    .prologue
    const/4 v7, 0x0

    .line 760
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 761
    .local v1, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 762
    const/4 v6, 0x0

    array-length v8, p1

    invoke-static {p1, v6, v8, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 763
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 764
    .local v4, origWidth:I
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 766
    .local v3, origHeight:I
    iget v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 767
    .local v5, scale:I
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 768
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 769
    new-instance v6, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    invoke-direct {v6, v0, v5, v4, v3}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #origHeight:I
    .end local v4           #origWidth:I
    .end local v5           #scale:I
    :goto_0
    return-object v6

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #dbo:Landroid/graphics/BitmapFactory$Options;
    .restart local v3       #origHeight:I
    .restart local v4       #origWidth:I
    .restart local v5       #scale:I
    :cond_0
    move-object v6, v7

    .line 771
    goto :goto_0

    .line 773
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #origHeight:I
    .end local v4           #origWidth:I
    .end local v5           #scale:I
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/OutOfMemoryError;
    move-object v6, v7

    .line 775
    goto :goto_0
.end method

.method public static decodeResource(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "resources"
    .parameter "id"

    .prologue
    .line 846
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 849
    :goto_0
    return-object v1

    .line 847
    :catch_0
    move-exception v0

    .line 849
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decodeResource(Landroid/content/Context;Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "resources"
    .parameter "id"
    .parameter "opts"

    .prologue
    .line 832
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 835
    :goto_0
    return-object v1

    .line 833
    :catch_0
    move-exception v0

    .line 835
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decodeStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "is"

    .prologue
    .line 711
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 714
    :goto_0
    return-object v1

    .line 712
    :catch_0
    move-exception v0

    .line 714
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "is"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    .line 726
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 729
    :goto_0
    return-object v1

    .line 727
    :catch_0
    move-exception v0

    .line 729
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deleteTempPic(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 592
    invoke-static {p0}, Lco/vine/android/util/image/ImageUtils;->isTempPic(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 593
    const/4 v1, 0x0

    .line 596
    :goto_0
    return v1

    .line 595
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_0
.end method

.method public static getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 13
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v12, 0x0

    .line 973
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 974
    .local v11, scheme:Ljava/lang/String;
    if-eqz v11, :cond_0

    const-string v1, "file"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 975
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/util/image/ImageUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v10

    .line 1015
    :goto_0
    return v10

    .line 976
    :cond_1
    const-string v1, "content"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 977
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 979
    .local v0, provider:Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_6

    .line 982
    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "orientation"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 990
    .local v8, result:Landroid/database/Cursor;
    if-nez v8, :cond_2

    move v10, v12

    .line 991
    goto :goto_0

    .line 986
    .end local v8           #result:Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    move v10, v12

    .line 987
    goto :goto_0

    .line 995
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v8       #result:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 996
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 997
    .local v7, path:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 998
    invoke-static {v7}, Lco/vine/android/util/image/ImageUtils;->getExifOrientation(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 999
    .local v10, rotationFromFile:I
    if-eqz v10, :cond_3

    .line 1011
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1004
    .end local v10           #rotationFromFile:I
    :cond_3
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    .line 1005
    .local v9, rotationFromCursor:I
    if-eqz v9, :cond_4

    .line 1011
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v10, v9

    goto :goto_0

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v10, v12

    goto :goto_0

    .end local v7           #path:Ljava/lang/String;
    .end local v9           #rotationFromCursor:I
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v0           #provider:Landroid/content/ContentProviderClient;
    .end local v8           #result:Landroid/database/Cursor;
    :cond_6
    move v10, v12

    .line 1015
    goto :goto_0

    .line 1011
    .restart local v0       #provider:Landroid/content/ContentProviderClient;
    .restart local v8       #result:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 5
    .parameter "filepath"

    .prologue
    const/4 v2, 0x0

    .line 934
    if-nez p0, :cond_0

    .line 941
    :goto_0
    return v2

    .line 938
    :cond_0
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 939
    .local v1, exif:Landroid/media/ExifInterface;
    const-string v3, "Orientation"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 940
    .end local v1           #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v0

    .line 941
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static getRealPathFromImageUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 946
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 947
    .local v8, scheme:Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v0, "file"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 948
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 969
    :goto_0
    return-object v7

    .line 949
    :cond_1
    const-string v0, "content"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 950
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    .line 951
    .local v2, proj:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 952
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 954
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 955
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 956
    .local v7, result:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 965
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 959
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 965
    .end local v7           #result:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 962
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 965
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 969
    .end local v2           #proj:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static getTempPic(Landroid/content/Context;ZJ)Ljava/io/File;
    .locals 6
    .parameter "context"
    .parameter "resized"
    .parameter "ownerId"

    .prologue
    .line 567
    invoke-static {p0}, Lco/vine/android/util/Util;->getFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 568
    .local v0, dir:Ljava/io/File;
    if-nez v0, :cond_0

    .line 569
    const/4 v2, 0x0

    .line 572
    :goto_0
    return-object v2

    .line 571
    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "pic-r-"

    .line 572
    .local v1, prefix:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 571
    .end local v1           #prefix:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pic-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static hasEnoughExternalStorageForNewPhoto(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 910
    invoke-static {p0}, Lco/vine/android/util/Util;->getFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 911
    .local v2, dir:Ljava/io/File;
    if-nez v2, :cond_1

    .line 916
    :cond_0
    :goto_0
    return v4

    .line 914
    :cond_1
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 915
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    mul-long v0, v5, v7

    .line 916
    .local v0, bytesAvailable:J
    const-wide/32 v5, 0x100000

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static isPortrait(II)Z
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 198
    if-le p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isResized(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 1054
    invoke-static {p0}, Lco/vine/android/util/image/ImageUtils;->isTempPic(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pic-r-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTempPic(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 582
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pic-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static processPicture(Landroid/content/Context;Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "ownerId"

    .prologue
    .line 614
    invoke-static {p0, p1, p2, p3}, Lco/vine/android/util/image/ImageUtils;->changeFormatIfNeeded(Landroid/content/Context;Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0xc00

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p2

    invoke-static/range {v0 .. v5}, Lco/vine/android/util/image/ImageUtils;->resizeIfNeeded(Landroid/content/Context;Landroid/net/Uri;IJLandroid/graphics/Rect;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static removeAllImagesForUser(Landroid/content/Context;J)V
    .locals 8
    .parameter "context"
    .parameter "ownerId"

    .prologue
    .line 873
    invoke-static {p0}, Lco/vine/android/util/Util;->getFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 874
    .local v1, dir:Ljava/io/File;
    if-nez v1, :cond_1

    .line 886
    :cond_0
    return-void

    .line 877
    :cond_1
    new-instance v5, Lco/vine/android/util/image/ImageUtils$ImageFilenameFilter;

    invoke-direct {v5, p1, p2}, Lco/vine/android/util/image/ImageUtils$ImageFilenameFilter;-><init>(J)V

    .line 878
    .local v5, imageFilter:Lco/vine/android/util/image/ImageUtils$ImageFilenameFilter;
    invoke-virtual {v1, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 879
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 880
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v0, v4

    .line 881
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_2

    .line 882
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 880
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static resizeBitmap(Landroid/content/Context;Landroid/net/Uri;FFI)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "context"
    .parameter "uri"
    .parameter "viewWidth"
    .parameter "viewHeight"
    .parameter "border"

    .prologue
    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 454
    .local v5, cr:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 455
    .local v10, inputStream:Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 458
    .local v13, optionStream:Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    .line 460
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 461
    .local v6, dbo:Landroid/graphics/BitmapFactory$Options;
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 462
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v13, v1, v6}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 464
    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v12, v0

    .line 465
    .local v12, nativeWidth:F
    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v11, v0

    .line 467
    .local v11, nativeHeight:F
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float p2, p2, v16

    .line 468
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float p3, p3, v16

    .line 474
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 476
    cmpl-float v16, v12, p2

    if-gtz v16, :cond_0

    cmpl-float v16, v11, p3

    if-lez v16, :cond_3

    .line 477
    :cond_0
    div-float v7, v12, p2

    .line 478
    .local v7, dx:F
    div-float v8, v11, p3

    .line 479
    .local v8, dy:F
    cmpl-float v16, v7, v8

    if-lez v16, :cond_1

    .line 480
    move/from16 v4, p2

    .line 481
    .local v4, bitmapWidth:F
    div-float v3, v11, v7

    .line 487
    .local v3, bitmapHeight:F
    :goto_0
    div-float v16, v12, v4

    const/high16 v17, 0x3f80

    cmpl-float v16, v16, v17

    if-lez v16, :cond_2

    .line 488
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 489
    .local v14, options:Landroid/graphics/BitmapFactory$Options;
    div-float v16, v12, v4

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 490
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v10, v1, v14}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 502
    .end local v7           #dx:F
    .end local v8           #dy:F
    .end local v14           #options:Landroid/graphics/BitmapFactory$Options;
    .local v15, srcBitmap:Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v15, :cond_4

    .line 503
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v15, v4, v3, v1}, Lco/vine/android/util/image/ImageUtils;->scaleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 506
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 515
    invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #bitmapHeight:F
    .end local v4           #bitmapWidth:F
    .end local v6           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #nativeHeight:F
    .end local v12           #nativeWidth:F
    .end local v15           #srcBitmap:Landroid/graphics/Bitmap;
    :goto_2
    return-object v2

    .line 483
    .restart local v6       #dbo:Landroid/graphics/BitmapFactory$Options;
    .restart local v7       #dx:F
    .restart local v8       #dy:F
    .restart local v11       #nativeHeight:F
    .restart local v12       #nativeWidth:F
    :cond_1
    div-float v4, v12, v8

    .line 484
    .restart local v4       #bitmapWidth:F
    move/from16 v3, p3

    .restart local v3       #bitmapHeight:F
    goto :goto_0

    .line 493
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v15

    .restart local v15       #srcBitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 497
    .end local v3           #bitmapHeight:F
    .end local v4           #bitmapWidth:F
    .end local v7           #dx:F
    .end local v8           #dy:F
    .end local v15           #srcBitmap:Landroid/graphics/Bitmap;
    :cond_3
    move/from16 v4, p2

    .line 498
    .restart local v4       #bitmapWidth:F
    move/from16 v3, p3

    .line 499
    .restart local v3       #bitmapHeight:F
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    .restart local v15       #srcBitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 509
    :cond_4
    const/4 v2, 0x0

    .line 514
    invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 515
    invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .line 511
    .end local v3           #bitmapHeight:F
    .end local v4           #bitmapWidth:F
    .end local v6           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #nativeHeight:F
    .end local v12           #nativeWidth:F
    .end local v15           #srcBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 512
    .local v9, e:Ljava/io/IOException;
    const/4 v2, 0x0

    .line 514
    invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 515
    invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .line 514
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v16

    invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 515
    invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v16
.end method

.method public static resizeBitmap(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "uri"
    .parameter "size"
    .parameter "rect"

    .prologue
    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 397
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .line 398
    .local v5, inputStream:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 401
    .local v8, optionsStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 402
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 403
    .local v2, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 404
    const/4 v9, 0x0

    invoke-static {p0, v8, v9, v2}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 406
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v10, v10

    div-float v0, v9, v10

    .line 407
    .local v0, aspectRatio:F
    long-to-float v9, p2

    mul-float/2addr v9, v0

    invoke-static {v9}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v7

    .line 408
    .local v7, newWidth:F
    long-to-float v9, p2

    const/high16 v10, 0x3f80

    div-float/2addr v10, v0

    mul-float/2addr v9, v10

    invoke-static {v9}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v6

    .line 409
    .local v6, newHeight:F
    const/4 v4, 0x1

    .line 411
    .local v4, inSampleSize:I
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v9, v9

    cmpl-float v9, v9, v7

    if-gtz v9, :cond_0

    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    cmpl-float v9, v9, v6

    if-lez v9, :cond_1

    .line 412
    :cond_0
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v9, v10, :cond_2

    .line 413
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v6

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v4, v9

    .line 418
    :goto_0
    if-eqz p4, :cond_1

    .line 420
    iget v9, p4, Landroid/graphics/Rect;->left:I

    div-int/2addr v9, v4

    iput v9, p4, Landroid/graphics/Rect;->left:I

    .line 421
    iget v9, p4, Landroid/graphics/Rect;->top:I

    div-int/2addr v9, v4

    iput v9, p4, Landroid/graphics/Rect;->top:I

    .line 422
    iget v9, p4, Landroid/graphics/Rect;->right:I

    div-int/2addr v9, v4

    iput v9, p4, Landroid/graphics/Rect;->right:I

    .line 423
    iget v9, p4, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v9, v4

    iput v9, p4, Landroid/graphics/Rect;->bottom:I

    .line 427
    :cond_1
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 428
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 429
    const/4 v9, 0x0

    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 430
    const/4 v9, 0x0

    invoke-static {p0, v5, v9, v2}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 434
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 435
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .end local v0           #aspectRatio:F
    .end local v2           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #inSampleSize:I
    .end local v6           #newHeight:F
    .end local v7           #newWidth:F
    :goto_1
    return-object v9

    .line 415
    .restart local v0       #aspectRatio:F
    .restart local v2       #dbo:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #inSampleSize:I
    .restart local v6       #newHeight:F
    .restart local v7       #newWidth:F
    :cond_2
    :try_start_1
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v9

    double-to-int v4, v9

    goto :goto_0

    .line 431
    .end local v0           #aspectRatio:F
    .end local v2           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #inSampleSize:I
    .end local v6           #newHeight:F
    .end local v7           #newWidth:F
    :catch_0
    move-exception v3

    .line 432
    .local v3, e:Ljava/io/IOException;
    const/4 v9, 0x0

    .line 434
    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 435
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 434
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-static {v5}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 435
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v9
.end method

.method private static resizeBitmap(Landroid/content/Context;Lco/vine/android/util/image/ImageUtils$BitmapInfo;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 12
    .parameter "context"
    .parameter "src"
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 360
    if-nez p1, :cond_1

    .line 361
    const/4 p1, 0x0

    .line 382
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 364
    .restart local p1
    :cond_1
    iget-object v1, p1, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 365
    .local v1, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 366
    .local v4, width:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 367
    .local v5, height:I
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 368
    .local v9, desiredSize:I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 369
    .local v11, size:I
    if-le v11, v9, :cond_0

    .line 370
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 371
    .local v6, matrix:Landroid/graphics/Matrix;
    int-to-float v0, v9

    int-to-float v2, v11

    div-float v10, v0, v2

    .line 372
    .local v10, scale:F
    invoke-virtual {v6, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 374
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lco/vine/android/util/image/ImageUtils;->createBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 375
    .local v8, bitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_2

    .line 376
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 377
    new-instance p1, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    .end local p1
    float-to-int v0, v10

    invoke-direct {p1, v8, v0, v4, v5}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V

    goto :goto_0

    .line 379
    .restart local p1
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static resizeBitmap(Landroid/content/Context;Ljava/io/InputStream;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 1
    .parameter "context"
    .parameter "is"
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 354
    invoke-static {p0, p1, p2, p3}, Lco/vine/android/util/image/ImageUtils;->safeDecode(Landroid/content/Context;Ljava/io/InputStream;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lco/vine/android/util/image/ImageUtils;->resizeBitmap(Landroid/content/Context;Lco/vine/android/util/image/ImageUtils$BitmapInfo;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public static resizeBitmap(Landroid/content/Context;[BII)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 1
    .parameter "context"
    .parameter "imageBytes"
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    .line 341
    invoke-static {p0, p1, p2, p3}, Lco/vine/android/util/image/ImageUtils;->safeDecode(Landroid/content/Context;[BII)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lco/vine/android/util/image/ImageUtils;->resizeBitmap(Landroid/content/Context;Lco/vine/android/util/image/ImageUtils$BitmapInfo;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public static resizeIfNeeded(Landroid/content/Context;Landroid/net/Uri;IJLandroid/graphics/Rect;)Landroid/net/Uri;
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "maxSizeKB"
    .parameter "ownerId"
    .parameter "rect"

    .prologue
    const/4 v2, 0x0

    .line 631
    if-nez p1, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-object v2

    .line 639
    :cond_1
    mul-int/lit16 v4, p2, 0xfa

    int-to-long v0, v4

    .line 641
    .local v0, maxSizePixels:J
    invoke-static {p0, p1}, Lco/vine/android/util/Util;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)F

    move-result v4

    int-to-float v5, p2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 642
    invoke-static {p0, p1, v0, v1, p5}, Lco/vine/android/util/image/ImageUtils;->resizeBitmap(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 643
    .local v3, smaller:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 646
    invoke-static {p0, v3, p3, p4}, Lco/vine/android/util/image/ImageUtils;->writePicToFile(Landroid/content/Context;Landroid/graphics/Bitmap;J)Landroid/net/Uri;

    move-result-object v2

    .line 647
    .local v2, newUri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 648
    invoke-static {p1}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z

    goto :goto_0

    .end local v2           #newUri:Landroid/net/Uri;
    .end local v3           #smaller:Landroid/graphics/Bitmap;
    :cond_2
    move-object v2, p1

    .line 652
    goto :goto_0
.end method

.method public static roundBitmapCorners(Landroid/content/Context;Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "bm"
    .parameter "width"
    .parameter "height"
    .parameter "cornerRadius"

    .prologue
    .line 309
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p2, p3, v6}, Lco/vine/android/util/image/ImageUtils;->createBitmap(Landroid/content/Context;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 310
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 329
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 313
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 314
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    const/4 v6, 0x3

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 315
    .local v3, p:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v6, 0x8

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput p4, v6, v7

    const/4 v7, 0x1

    aput p4, v6, v7

    const/4 v7, 0x2

    aput p4, v6, v7

    const/4 v7, 0x3

    aput p4, v6, v7

    const/4 v7, 0x4

    aput p4, v6, v7

    const/4 v7, 0x5

    aput p4, v6, v7

    const/4 v7, 0x6

    aput p4, v6, v7

    const/4 v7, 0x7

    aput p4, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 319
    .local v4, rrs:Landroid/graphics/drawable/shapes/RoundRectShape;
    int-to-float v6, p2

    int-to-float v7, p3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    .line 320
    invoke-virtual {v4, v1, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 321
    sget-object v6, Lco/vine/android/util/image/ImageUtils;->sSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, p3, :cond_2

    .line 323
    :cond_1
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 324
    .local v5, src:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 325
    .local v2, dest:Landroid/graphics/Rect;
    invoke-virtual {v1, p1, v5, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 327
    .end local v2           #dest:Landroid/graphics/Rect;
    .end local v5           #src:Landroid/graphics/Rect;
    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, p1, v6, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static safeDecode(Landroid/content/Context;Landroid/net/Uri;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lco/vine/android/util/image/ImageUtils;->safeDecode(Landroid/content/Context;Landroid/net/Uri;IIZ)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public static safeDecode(Landroid/content/Context;Landroid/net/Uri;IIZ)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 16
    .parameter "context"
    .parameter "uri"
    .parameter "width"
    .parameter "height"
    .parameter "conservative"

    .prologue
    .line 230
    const/4 v9, 0x0

    .line 231
    .local v9, optionsStream:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 233
    .local v8, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 234
    .local v10, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 235
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 236
    .local v6, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 237
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v13, v6}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 238
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 239
    .local v4, bitmapWidth:I
    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 240
    .local v3, bitmapHeight:I
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Lco/vine/android/util/image/ImageUtils;->setBitmapOptionsScale(Landroid/graphics/BitmapFactory$Options;IIZ)V

    .line 243
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 244
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v8, v13, v6}, Lco/vine/android/util/image/ImageUtils;->decodeStream(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 245
    .local v5, bmp:Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    .line 246
    const/4 v13, 0x0

    .line 264
    invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 265
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .end local v3           #bitmapHeight:I
    .end local v4           #bitmapWidth:I
    .end local v5           #bmp:Landroid/graphics/Bitmap;
    .end local v6           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v10           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v13

    .line 248
    .restart local v3       #bitmapHeight:I
    .restart local v4       #bitmapWidth:I
    .restart local v5       #bmp:Landroid/graphics/Bitmap;
    .restart local v6       #dbo:Landroid/graphics/BitmapFactory$Options;
    .restart local v10       #resolver:Landroid/content/ContentResolver;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lco/vine/android/util/image/ImageUtils;->adjustRotation(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 249
    .local v11, result:Landroid/graphics/Bitmap;
    if-nez v11, :cond_2

    .line 251
    move-object v11, v5

    .line 260
    :cond_1
    :goto_1
    new-instance v13, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    iget v14, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {v13, v11, v14, v4, v3}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 265
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 252
    :cond_2
    :try_start_2
    invoke-static {v4, v3}, Lco/vine/android/util/image/ImageUtils;->isPortrait(II)Z

    move-result v13

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-static {v14, v15}, Lco/vine/android/util/image/ImageUtils;->isPortrait(II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v14

    if-eq v13, v14, :cond_1

    .line 256
    move v12, v3

    .line 257
    .local v12, tempHeight:I
    move v3, v4

    .line 258
    move v4, v12

    goto :goto_1

    .line 261
    .end local v3           #bitmapHeight:I
    .end local v4           #bitmapWidth:I
    .end local v5           #bmp:Landroid/graphics/Bitmap;
    .end local v6           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v10           #resolver:Landroid/content/ContentResolver;
    .end local v11           #result:Landroid/graphics/Bitmap;
    .end local v12           #tempHeight:I
    :catch_0
    move-exception v7

    .line 262
    .local v7, ignore:Ljava/io/FileNotFoundException;
    const/4 v13, 0x0

    .line 264
    invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 265
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 264
    .end local v7           #ignore:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v13

    invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 265
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v13
.end method

.method public static safeDecode(Landroid/content/Context;Ljava/io/InputStream;II)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 17
    .parameter "context"
    .parameter "is"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    .line 148
    invoke-static/range {p0 .. p0}, Lco/vine/android/util/Util;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 150
    .local v6, f:Ljava/io/File;
    const/4 v13, 0x0

    .line 152
    .local v13, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v13           #out:Ljava/io/FileOutputStream;
    .local v14, out:Ljava/io/FileOutputStream;
    const/16 v15, 0x1000

    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lco/vine/android/util/Util;->readFullyWriteTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v3

    .line 154
    .local v3, bytesLen:I
    if-nez v3, :cond_0

    .line 155
    const/4 v15, 0x0

    .line 161
    :try_start_2
    invoke-static {v14}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 193
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object v13, v14

    .end local v3           #bytesLen:I
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    :goto_0
    return-object v15

    .line 157
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v3       #bytesLen:I
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :cond_0
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 161
    :try_start_4
    invoke-static {v14}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 163
    const/4 v9, 0x0

    .line 164
    .local v9, optionsInput:Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .line 166
    .local v7, imageInput:Ljava/io/BufferedInputStream;
    :try_start_5
    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2

    .line 168
    .end local v9           #optionsInput:Ljava/io/BufferedInputStream;
    .local v10, optionsInput:Ljava/io/BufferedInputStream;
    :try_start_6
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 169
    .local v4, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v15, 0x1

    iput-boolean v15, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 170
    const/4 v15, 0x0

    invoke-static {v10, v15, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 172
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3

    .line 174
    .end local v7           #imageInput:Ljava/io/BufferedInputStream;
    .local v8, imageInput:Ljava/io/BufferedInputStream;
    :try_start_7
    iget v12, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 175
    .local v12, origWidth:I
    iget v11, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 176
    .local v11, origHeight:I
    const/4 v15, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v4, v0, v1, v15}, Lco/vine/android/util/image/ImageUtils;->setBitmapOptionsScale(Landroid/graphics/BitmapFactory$Options;IIZ)V

    .line 177
    const/4 v15, 0x0

    invoke-static {v8, v15, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 178
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 179
    new-instance v15, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v15, v2, v0, v12, v11}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_4

    .line 189
    :try_start_8
    invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 190
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 193
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 158
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #bytesLen:I
    .end local v4           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #imageInput:Ljava/io/BufferedInputStream;
    .end local v10           #optionsInput:Ljava/io/BufferedInputStream;
    .end local v11           #origHeight:I
    .end local v12           #origWidth:I
    :catch_0
    move-exception v5

    .line 159
    .local v5, e:Ljava/io/IOException;
    :goto_1
    const/4 v15, 0x0

    .line 161
    :try_start_9
    invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 193
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 161
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v15

    :goto_2
    :try_start_a
    invoke-static {v13}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 193
    :catchall_1
    move-exception v15

    :goto_3
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v15

    .line 181
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #bytesLen:I
    .restart local v4       #dbo:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #imageInput:Ljava/io/BufferedInputStream;
    .restart local v10       #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v11       #origHeight:I
    .restart local v12       #origWidth:I
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :cond_1
    const/4 v15, 0x0

    .line 189
    :try_start_b
    invoke-static {v10}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 190
    invoke-static {v8}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 193
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 183
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #imageInput:Ljava/io/BufferedInputStream;
    .end local v10           #optionsInput:Ljava/io/BufferedInputStream;
    .end local v11           #origHeight:I
    .end local v12           #origWidth:I
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v7       #imageInput:Ljava/io/BufferedInputStream;
    .restart local v9       #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    .line 184
    .restart local v5       #e:Ljava/io/IOException;
    :goto_4
    const/4 v15, 0x0

    .line 189
    :try_start_c
    invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 190
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 193
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 185
    .end local v5           #e:Ljava/io/IOException;
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    .line 187
    .local v5, e:Ljava/lang/OutOfMemoryError;
    :goto_5
    const/4 v15, 0x0

    .line 189
    :try_start_d
    invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 190
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 193
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 189
    .end local v5           #e:Ljava/lang/OutOfMemoryError;
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v15

    :goto_6
    :try_start_e
    invoke-static {v9}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 190
    invoke-static {v7}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 193
    .end local v7           #imageInput:Ljava/io/BufferedInputStream;
    .end local v9           #optionsInput:Ljava/io/BufferedInputStream;
    :catchall_3
    move-exception v15

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 189
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v7       #imageInput:Ljava/io/BufferedInputStream;
    .restart local v10       #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v15

    move-object v9, v10

    .end local v10           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v9       #optionsInput:Ljava/io/BufferedInputStream;
    goto :goto_6

    .end local v7           #imageInput:Ljava/io/BufferedInputStream;
    .end local v9           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v4       #dbo:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #imageInput:Ljava/io/BufferedInputStream;
    .restart local v10       #optionsInput:Ljava/io/BufferedInputStream;
    :catchall_5
    move-exception v15

    move-object v7, v8

    .end local v8           #imageInput:Ljava/io/BufferedInputStream;
    .restart local v7       #imageInput:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v9       #optionsInput:Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 185
    .end local v4           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v10       #optionsInput:Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v5

    move-object v9, v10

    .end local v10           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v9       #optionsInput:Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v7           #imageInput:Ljava/io/BufferedInputStream;
    .end local v9           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v4       #dbo:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #imageInput:Ljava/io/BufferedInputStream;
    .restart local v10       #optionsInput:Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v5

    move-object v7, v8

    .end local v8           #imageInput:Ljava/io/BufferedInputStream;
    .restart local v7       #imageInput:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v9       #optionsInput:Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 183
    .end local v4           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v10       #optionsInput:Ljava/io/BufferedInputStream;
    :catch_5
    move-exception v5

    move-object v9, v10

    .end local v10           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v9       #optionsInput:Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v7           #imageInput:Ljava/io/BufferedInputStream;
    .end local v9           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v4       #dbo:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #imageInput:Ljava/io/BufferedInputStream;
    .restart local v10       #optionsInput:Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v5

    move-object v7, v8

    .end local v8           #imageInput:Ljava/io/BufferedInputStream;
    .restart local v7       #imageInput:Ljava/io/BufferedInputStream;
    move-object v9, v10

    .end local v10           #optionsInput:Ljava/io/BufferedInputStream;
    .restart local v9       #optionsInput:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 161
    .end local v3           #bytesLen:I
    .end local v4           #dbo:Landroid/graphics/BitmapFactory$Options;
    .end local v7           #imageInput:Ljava/io/BufferedInputStream;
    .end local v9           #optionsInput:Ljava/io/BufferedInputStream;
    :catchall_6
    move-exception v15

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 158
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v5

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static safeDecode(Landroid/content/Context;[BII)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    .locals 7
    .parameter "context"
    .parameter "imageBytes"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/4 v5, 0x0

    .line 118
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 119
    .local v1, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 120
    array-length v4, p1

    invoke-static {p0, p1, v5, v4, v1}, Lco/vine/android/util/image/ImageUtils;->decodeByteArray(Landroid/content/Context;[BIILandroid/graphics/BitmapFactory$Options;)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    .line 121
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 122
    .local v3, origWidth:I
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 124
    .local v2, origHeight:I
    invoke-static {v1, p2, p3, v5}, Lco/vine/android/util/image/ImageUtils;->setBitmapOptionsScale(Landroid/graphics/BitmapFactory$Options;IIZ)V

    .line 125
    array-length v4, p1

    invoke-static {p0, p1, v5, v4, v1}, Lco/vine/android/util/image/ImageUtils;->decodeByteArray(Landroid/content/Context;[BIILandroid/graphics/BitmapFactory$Options;)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    move-result-object v0

    .line 127
    .local v0, bitmapInfo:Lco/vine/android/util/image/ImageUtils$BitmapInfo;
    if-eqz v0, :cond_0

    .line 128
    new-instance v4, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    iget-object v5, v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {v4, v5, v6, v3, v2}, Lco/vine/android/util/image/ImageUtils$BitmapInfo;-><init>(Landroid/graphics/Bitmap;III)V

    .line 130
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static scaleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;FFI)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "src"
    .parameter "width"
    .parameter "height"
    .parameter "border"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 532
    float-to-int v2, p2

    add-int/2addr v2, p4

    float-to-int v3, p3

    add-int/2addr v3, p4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v2, v3, v4}, Lco/vine/android/util/image/ImageUtils;->createBitmap(Landroid/content/Context;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 534
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_0

    .line 535
    const/4 v6, 0x0

    .line 554
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v6

    .line 537
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 539
    .local v0, canvas:Landroid/graphics/Canvas;
    if-lez p4, :cond_1

    .line 540
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 541
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    float-to-int v4, p2

    add-int/lit8 v4, v4, 0x1

    float-to-int v5, p3

    invoke-direct {v3, p4, p4, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v4, Lco/vine/android/util/image/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 544
    int-to-float v2, p4

    add-float/2addr v2, p2

    sub-float v3, v2, v7

    int-to-float v2, p4

    add-float/2addr v2, p3

    sub-float v4, v2, v7

    sget-object v5, Lco/vine/android/util/image/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 546
    add-int/lit8 v1, p4, -0x1

    int-to-float v1, v1

    add-int/lit8 v2, p4, -0x1

    int-to-float v2, v2

    sget-object v5, Lco/vine/android/util/image/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 549
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    float-to-int v3, p2

    add-int/lit8 v3, v3, 0x1

    float-to-int v4, p3

    invoke-direct {v2, p4, p4, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v3, Lco/vine/android/util/image/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static setBitmapOptionsScale(Landroid/graphics/BitmapFactory$Options;IIZ)V
    .locals 7
    .parameter "dbo"
    .parameter "desiredWidth"
    .parameter "desiredHeight"
    .parameter "conservative"

    .prologue
    .line 281
    iget v5, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 282
    .local v5, width:I
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 284
    .local v0, height:I
    const/4 v3, 0x1

    .line 285
    .local v3, scale:I
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 286
    .local v4, size:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 288
    .local v2, maxSize:I
    if-eqz p3, :cond_0

    .line 289
    const/4 v1, 0x1

    .line 293
    .local v1, initialScale:I
    :goto_0
    div-int v6, v4, v1

    if-lt v6, v2, :cond_1

    .line 294
    div-int/lit8 v4, v4, 0x2

    .line 295
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 291
    .end local v1           #initialScale:I
    :cond_0
    const/4 v1, 0x2

    .restart local v1       #initialScale:I
    goto :goto_0

    .line 297
    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 298
    iput v3, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 299
    return-void
.end method

.method public static writePicToFile(Landroid/content/Context;Landroid/graphics/Bitmap;J)Landroid/net/Uri;
    .locals 7
    .parameter "context"
    .parameter "pic"
    .parameter "ownerId"

    .prologue
    const/4 v4, 0x0

    .line 889
    const/4 v2, 0x0

    .line 890
    .local v2, fs:Ljava/io/FileOutputStream;
    const/4 v5, 0x1

    invoke-static {p0, v5, p2, p3}, Lco/vine/android/util/image/ImageUtils;->getTempPic(Landroid/content/Context;ZJ)Ljava/io/File;

    move-result-object v1

    .line 891
    .local v1, f:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 893
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 894
    .end local v2           #fs:Ljava/io/FileOutputStream;
    .local v3, fs:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 895
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 896
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 902
    invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 905
    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-object v4

    .line 897
    :catch_0
    move-exception v0

    .line 902
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 899
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 902
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :goto_2
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v2           #fs:Ljava/io/FileOutputStream;
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 899
    .end local v2           #fs:Ljava/io/FileOutputStream;
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 897
    .end local v2           #fs:Ljava/io/FileOutputStream;
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
