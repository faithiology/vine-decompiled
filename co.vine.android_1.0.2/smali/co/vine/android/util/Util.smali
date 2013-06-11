.class public Lco/vine/android/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final DATE_TIME_RFC1123:Ljava/text/SimpleDateFormat; = null

.field public static final DAY_MILLIS:J = 0x5265c00L

.field private static final DAY_MONTH_YEAR:Ljava/text/SimpleDateFormat; = null

.field public static final DEFAULT_PAGE_SIZE:I = 0x14

.field public static final GLOBAL_LIMIT:I = 0x190

.field public static final HOUR_MILLIS:J = 0x36ee80L

.field public static final HTTP_BAD_REQUEST:I = 0x190

.field public static final HTTP_NOT_FOUND:I = 0x194

.field public static final HTTP_OK:I = 0xc8

.field public static final IO_BUFFER_SIZE:I = 0x1000

.field public static final KB_BYTES:I = 0x400

.field public static final MARKER_COLONS:C = ';'

.field public static final MARKER_QUOTES:C = '\"'

.field public static final MB_BYTES:I = 0x100000

.field public static final MINUTE_MILLIS:J = 0xea60L

.field public static final MIN_PASSWORD_CHARS:I = 0x8

.field public static final MIN_USERNAME_CHARS:I = 0x3

.field public static final MONTH_MILLIS:J = 0x9ca41900L

.field private static final PATTERN_COMMENT:Ljava/util/regex/Pattern; = null

.field private static final PATTERN_POST:Ljava/util/regex/Pattern; = null

.field private static final PATTERN_USERNAME:Ljava/util/regex/Pattern; = null

.field public static final SECOND_MILLIS:J = 0x3e8L

.field public static final WEEK_MILLIS:J = 0x240c8400L

.field public static final YEAR_MILLIS:J = 0x757b12c00L

.field private static final numbersAndLetters:[C

.field public static final sRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lco/vine/android/util/Util;->DAY_MONTH_YEAR:Ljava/text/SimpleDateFormat;

    .line 91
    const-string v0, "<:\\s*?user\\s*?\\|\\s*?.*?:>([\\w\\s-]*?)<:>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lco/vine/android/util/Util;->PATTERN_USERNAME:Ljava/util/regex/Pattern;

    .line 92
    const-string v0, "<:\\s*?post\\s*?\\|\\s*?.*?:>([\\w\\s]*?)<:>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lco/vine/android/util/Util;->PATTERN_POST:Ljava/util/regex/Pattern;

    .line 94
    const-string v0, "\"(.+?)\\\\?\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lco/vine/android/util/Util;->PATTERN_COMMENT:Ljava/util/regex/Pattern;

    .line 99
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lco/vine/android/util/Util;->sRandom:Ljava/security/SecureRandom;

    .line 107
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lco/vine/android/util/Util;->numbersAndLetters:[C

    .line 111
    new-instance v0, Lco/vine/android/util/SynchronizedDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lco/vine/android/util/SynchronizedDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lco/vine/android/util/Util;->DATE_TIME_RFC1123:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    .line 673
    const-string v0, "\n"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "closeable"

    .prologue
    .line 115
    if-eqz p0, :cond_0

    .line 117
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static fromByteArray([B)Ljava/lang/Object;
    .locals 5
    .parameter "bytes"

    .prologue
    const/4 v4, 0x0

    .line 596
    if-nez p0, :cond_0

    .line 610
    :goto_0
    return-object v4

    .line 599
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 600
    .local v0, bis:Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 602
    .local v2, ois:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 603
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .local v3, ois:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 609
    invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 610
    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 604
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v1

    .line 609
    .local v1, e:Ljava/io/IOException;
    :goto_1
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 610
    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 606
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 609
    .local v1, e:Ljava/lang/ClassNotFoundException;
    :goto_2
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 610
    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 609
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 610
    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .line 609
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 606
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 604
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method public static getAddressJson(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 13
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 563
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 566
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v8, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v8}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    .line 567
    .local v8, jf:Lcom/fasterxml/jackson/core/JsonFactory;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 568
    .local v6, ba:Ljava/io/ByteArrayOutputStream;
    move-object v11, v6

    .line 569
    .local v11, os:Ljava/io/OutputStream;
    invoke-virtual {v8, v11}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v9

    .line 571
    .local v9, jg:Lcom/fasterxml/jackson/core/JsonGenerator;
    if-eqz v7, :cond_2

    .line 572
    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 573
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 578
    .local v10, name:Ljava/lang/String;
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 581
    .local v12, phone:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 583
    const-string v0, "name"

    invoke-virtual {v9, v0, v10}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v0, "phoneNumber"

    invoke-virtual {v9, v0, v12}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 588
    .end local v10           #name:Ljava/lang/String;
    .end local v12           #phone:Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 589
    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 590
    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 592
    :cond_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .parameter "context"

    .prologue
    .line 255
    invoke-static {p0}, Lco/vine/android/util/Util;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 256
    .local v0, externalCacheDir:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 259
    .end local v0           #externalCacheDir:Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0       #externalCacheDir:Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCommentFromApiBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "body"

    .prologue
    .line 544
    sget-object v1, Lco/vine/android/util/Util;->PATTERN_COMMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 545
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 548
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "c"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 266
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-le v1, v2, :cond_1

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 276
    :cond_0
    :goto_0
    return-object v0

    .line 271
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/co.vine.android/cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, path:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .parameter "c"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 323
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 324
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 326
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileSize(Landroid/content/Context;Landroid/net/Uri;)F
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 338
    const/4 v1, 0x0

    .line 340
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4480

    div-float/2addr v2, v3

    .line 345
    invoke-static {v1}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return v2

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    .line 345
    invoke-static {v1}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static getFilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .parameter "context"

    .prologue
    .line 313
    invoke-static {p0}, Lco/vine/android/util/Util;->getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 314
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 317
    .end local v0           #f:Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0       #f:Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPostWordFromActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    .line 553
    sget-object v1, Lco/vine/android/util/Util;->PATTERN_POST:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 554
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 557
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRelativeTimeString(Landroid/content/res/Resources;J)Ljava/lang/String;
    .locals 13
    .parameter "res"
    .parameter "timestamp"

    .prologue
    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v3, v9, p1

    .line 447
    .local v3, diff:J
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-ltz v9, :cond_5

    .line 448
    const-wide/32 v9, 0xea60

    cmp-long v9, v3, v9

    if-gez v9, :cond_0

    .line 449
    const-wide/16 v9, 0x3e8

    div-long v9, v3, v9

    long-to-int v8, v9

    .line 450
    .local v8, secs:I
    const/high16 v9, 0x7f0d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v8, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 480
    .end local v8           #secs:I
    :goto_0
    return-object v9

    .line 451
    :cond_0
    const-wide/32 v9, 0x36ee80

    cmp-long v9, v3, v9

    if-gez v9, :cond_1

    .line 452
    const-wide/32 v9, 0xea60

    div-long v9, v3, v9

    long-to-int v6, v9

    .line 453
    .local v6, mins:I
    const v9, 0x7f0d0001

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v6, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 454
    .end local v6           #mins:I
    :cond_1
    const-wide/32 v9, 0x5265c00

    cmp-long v9, v3, v9

    if-gez v9, :cond_2

    .line 455
    const-wide/32 v9, 0x36ee80

    div-long v9, v3, v9

    long-to-int v5, v9

    .line 456
    .local v5, hours:I
    const v9, 0x7f0d0002

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v5, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 457
    .end local v5           #hours:I
    :cond_2
    const-wide/32 v9, 0x240c8400

    cmp-long v9, v3, v9

    if-gez v9, :cond_3

    .line 458
    const-wide/32 v9, 0x5265c00

    div-long v9, v3, v9

    long-to-int v2, v9

    .line 459
    .local v2, days:I
    const v9, 0x7f0d0003

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v2, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 462
    .end local v2           #days:I
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 464
    .local v7, now:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 465
    .local v0, c:Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 466
    .local v1, d:Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 468
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_4

    .line 470
    sget-object v9, Lco/vine/android/util/Util;->DAY_MONTH_YEAR:Ljava/text/SimpleDateFormat;

    const v10, 0x7f080011

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 475
    :goto_1
    sget-object v9, Lco/vine/android/util/Util;->DAY_MONTH_YEAR:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 473
    :cond_4
    sget-object v9, Lco/vine/android/util/Util;->DAY_MONTH_YEAR:Ljava/text/SimpleDateFormat;

    const v10, 0x7f080012

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_1

    .line 479
    .end local v0           #c:Ljava/util/Calendar;
    .end local v1           #d:Ljava/util/Date;
    .end local v7           #now:Ljava/util/Calendar;
    :cond_5
    sget-object v9, Lco/vine/android/util/Util;->DAY_MONTH_YEAR:Ljava/text/SimpleDateFormat;

    const v10, 0x7f080012

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 480
    sget-object v9, Lco/vine/android/util/Util;->DAY_MONTH_YEAR:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method public static getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;
    .locals 12
    .parameter "span"
    .parameter "text"
    .parameter "marker"

    .prologue
    const/4 v11, -0x1

    .line 158
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 159
    .local v6, start:I
    if-ne v6, v11, :cond_0

    .line 160
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 199
    :goto_0
    return-object v5

    .line 162
    :cond_0
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, p2, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 163
    .local v0, end:I
    if-ne v0, v11, :cond_1

    .line 164
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 167
    :cond_1
    array-length v1, p0

    .line 168
    .local v1, maxSpans:I
    const/4 v4, 0x0

    .line 169
    .local v4, spanIndex:I
    const/4 v2, 0x0

    .line 170
    .local v2, next:I
    const/4 v3, 0x0

    .line 171
    .local v3, offset:I
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 174
    .local v5, ssb:Landroid/text/SpannableStringBuilder;
    :cond_2
    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 177
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 179
    aget-object v7, p0, v4

    sub-int v8, v6, v3

    sub-int v9, v0, v3

    add-int/lit8 v9, v9, -0x1

    const/16 v10, 0x21

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 182
    add-int/lit8 v4, v4, 0x1

    .line 183
    add-int/lit8 v2, v0, 0x1

    .line 184
    if-lt v4, v1, :cond_4

    .line 197
    :cond_3
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 188
    :cond_4
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 189
    if-eq v6, v11, :cond_5

    .line 190
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, p2, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 192
    add-int/lit8 v3, v3, 0x2

    .line 194
    :cond_5
    if-eq v6, v11, :cond_3

    if-ne v0, v11, :cond_2

    goto :goto_1
.end method

.method public static getTempFile(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .parameter "context"

    .prologue
    .line 244
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lco/vine/android/util/Util;->getTempFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getTempFile(Landroid/content/Context;I)Ljava/io/File;
    .locals 3
    .parameter "context"
    .parameter "fileNameSize"

    .prologue
    .line 227
    invoke-static {p0}, Lco/vine/android/util/Util;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 228
    .local v0, cacheDir:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 229
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lco/vine/android/util/Util;->randomString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J
    .locals 9
    .parameter "time"
    .parameter "format"

    .prologue
    .line 492
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, p1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 493
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    const-wide/16 v4, 0x0

    .line 495
    .local v4, timestamp:J
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 496
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 497
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    .line 498
    .local v6, tz:Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 499
    .local v1, now:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 500
    .local v2, offsetFromUtc:I
    int-to-long v7, v2

    add-long/2addr v4, v7

    .line 503
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #now:Ljava/util/Date;
    .end local v2           #offsetFromUtc:I
    .end local v6           #tz:Ljava/util/TimeZone;
    :goto_0
    return-wide v4

    .line 501
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public static getUsernameFromActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "body"

    .prologue
    .line 527
    sget-object v1, Lco/vine/android/util/Util;->PATTERN_USERNAME:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 528
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 531
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 638
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 640
    .local v0, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v2
.end method

.method public static isDefaultAvatarUrl(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "url"

    .prologue
    const/4 v1, 0x1

    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 366
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f08000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v1

    .line 368
    :cond_1
    const v2, 0x7f08000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    const v2, 0x7f08000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    const v2, 0x7f08000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "action"

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 211
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 214
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static md5Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "msg"

    .prologue
    .line 421
    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 422
    .local v8, messageDigest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 423
    .local v7, md5bytes:[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v2, hexString:Ljava/lang/StringBuilder;
    move-object v0, v7

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-byte v6, v0, v3

    .line 425
    .local v6, md5byte:B
    and-int/lit16 v9, v6, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, hex:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_0

    .line 427
    const/16 v9, 0x30

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 433
    .end local v0           #arr$:[B
    .end local v1           #hex:Ljava/lang/String;
    .end local v2           #hexString:Ljava/lang/StringBuilder;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #md5byte:B
    .end local v7           #md5bytes:[B
    .end local v8           #messageDigest:Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .line 434
    .local v4, ignore:Ljava/security/NoSuchAlgorithmException;
    const/4 v9, 0x0

    .end local v4           #ignore:Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return-object v9

    .line 432
    .restart local v0       #arr$:[B
    .restart local v2       #hexString:Ljava/lang/StringBuilder;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #md5bytes:[B
    .restart local v8       #messageDigest:Ljava/security/MessageDigest;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_2
.end method

.method public static parseURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 402
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-object v3

    .line 403
    :catch_0
    move-exception v3

    .line 406
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 407
    .local v0, colonIndex:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 408
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, scheme:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, ssp:Ljava/lang/String;
    :try_start_1
    new-instance v3, Ljava/net/URI;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v2, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 412
    :catch_1
    move-exception v3

    .end local v1           #scheme:Ljava/lang/String;
    .end local v2           #ssp:Ljava/lang/String;
    :cond_0
    move-object v3, v4

    .line 416
    goto :goto_0
.end method

.method public static randomString(I)Ljava/lang/String;
    .locals 5
    .parameter "length"

    .prologue
    .line 137
    const/4 v2, 0x1

    if-ge p0, v2, :cond_0

    .line 138
    const/4 v2, 0x0

    .line 145
    :goto_0
    return-object v2

    .line 141
    :cond_0
    new-array v1, p0, [C

    .line 142
    .local v1, randBuffer:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 143
    sget-object v2, Lco/vine/android/util/Util;->numbersAndLetters:[C

    sget-object v3, Lco/vine/android/util/Util;->sRandom:Ljava/security/SecureRandom;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static readFullyWriteTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)I
    .locals 4
    .parameter "is"
    .parameter "os"
    .parameter "bufferSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    new-array v0, p2, [B

    .line 295
    .local v0, buf:[B
    const/4 v2, 0x0

    .line 296
    .local v2, totalBytes:I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 297
    if-eqz p1, :cond_0

    .line 298
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 300
    :cond_0
    add-int/2addr v2, v1

    goto :goto_0

    .line 302
    :cond_1
    return v2
.end method

.method public static setSoftInputVisibility(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 3
    .parameter "context"
    .parameter "view"
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 507
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 510
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 511
    if-eqz p2, :cond_1

    .line 512
    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static setupNotification(Lco/vine/android/api/VineNotification;)V
    .locals 11
    .parameter "result"

    .prologue
    const/16 v10, 0x3b

    .line 644
    iget-object v1, p0, Lco/vine/android/api/VineNotification;->entities:Ljava/util/ArrayList;

    .line 645
    .local v1, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineNotificationEntity;>;"
    if-eqz v1, :cond_0

    iget-object v8, p0, Lco/vine/android/api/VineNotification;->comment:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lco/vine/android/api/VineNotification;->comment:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 649
    .local v7, text:Ljava/lang/StringBuilder;
    invoke-static {v1}, Lco/vine/android/util/Util;->validateAndFixEntities(Ljava/util/ArrayList;)V

    .line 650
    const/4 v4, 0x0

    .line 651
    .local v4, offset:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/api/VineNotificationEntity;

    .line 652
    .local v2, entity:Lco/vine/android/api/VineNotificationEntity;
    const-string v8, "post"

    iget-object v9, v2, Lco/vine/android/api/VineNotificationEntity;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 653
    iget v8, v2, Lco/vine/android/api/VineNotificationEntity;->start:I

    add-int v6, v8, v4

    .line 654
    .local v6, start:I
    iget v8, v2, Lco/vine/android/api/VineNotificationEntity;->end:I

    add-int v0, v8, v4

    .line 655
    .local v0, end:I
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lco/vine/android/util/Util;->getPostWordFromActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 656
    .local v5, replacementText:Ljava/lang/String;
    invoke-virtual {v7, v6, v0, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    sub-int v8, v0, v6

    sub-int/2addr v4, v8

    .line 658
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v4, v8

    .line 659
    goto :goto_1

    .end local v0           #end:I
    .end local v5           #replacementText:Ljava/lang/String;
    .end local v6           #start:I
    :cond_3
    const-string v8, "user"

    iget-object v9, v2, Lco/vine/android/api/VineNotificationEntity;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 660
    iget v8, v2, Lco/vine/android/api/VineNotificationEntity;->start:I

    add-int v6, v8, v4

    .line 661
    .restart local v6       #start:I
    iget v8, v2, Lco/vine/android/api/VineNotificationEntity;->end:I

    add-int v0, v8, v4

    .line 662
    .restart local v0       #end:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lco/vine/android/util/Util;->getUsernameFromActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 664
    .restart local v5       #replacementText:Ljava/lang/String;
    invoke-virtual {v7, v6, v0, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    sub-int v8, v0, v6

    sub-int/2addr v4, v8

    .line 666
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_1

    .line 669
    .end local v0           #end:I
    .end local v2           #entity:Lco/vine/android/api/VineNotificationEntity;
    .end local v5           #replacementText:Ljava/lang/String;
    .end local v6           #start:I
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lco/vine/android/api/VineNotification;->comment:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static showCenteredToast(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    .line 355
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 356
    .local v0, t:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 357
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 358
    return-void
.end method

.method public static showCenteredToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 384
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 385
    .local v0, t:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 386
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 387
    return-void
.end method

.method public static showNoCameraToast(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 361
    const v0, 0x7f080083

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 362
    return-void
.end method

.method public static showShortCenteredToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 395
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 396
    .local v0, t:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 397
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 398
    return-void
.end method

.method public static toByteArray(Ljava/lang/Object;)[B
    .locals 5
    .parameter "o"

    .prologue
    .line 622
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x200

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 623
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 625
    .local v2, oos:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .local v3, oos:Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 627
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 631
    invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 632
    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #oos:Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v4

    .line 628
    :catch_0
    move-exception v1

    .line 629
    .local v1, e:Ljava/io/IOException;
    :goto_1
    const/4 v4, 0x0

    .line 631
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 632
    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 631
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 632
    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .line 631
    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 628
    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method

.method private static validateAndFixEntities(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineNotificationEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p0, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineNotificationEntity;>;"
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 678
    return-void
.end method
