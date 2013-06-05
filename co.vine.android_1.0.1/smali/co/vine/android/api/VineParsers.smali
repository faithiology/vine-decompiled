.class public Lco/vine/android/api/VineParsers;
.super Ljava/lang/Object;
.source "VineParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/api/VineParsers$7;,
        Lco/vine/android/api/VineParsers$RecordParser;,
        Lco/vine/android/api/VineParsers$API_RESPONSE;
    }
.end annotation


# static fields
.field private static final ACTIVITY_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/api/VineParsers$RecordParser",
            "<",
            "Lco/vine/android/api/VineNotification;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMMENT_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/api/VineParsers$RecordParser",
            "<",
            "Lco/vine/android/api/VineComment;",
            ">;"
        }
    .end annotation
.end field

.field public static final JSON_FACTORY:Lcom/fasterxml/jackson/core/JsonFactory; = null

.field private static final LIKES_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/api/VineParsers$RecordParser",
            "<",
            "Lco/vine/android/api/VineLike;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARAM_DATA:Ljava/lang/String; = "data"

.field private static final PARAM_RECORDS:Ljava/lang/String; = "records"

.field private static final POST_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/api/VineParsers$RecordParser",
            "<",
            "Lco/vine/android/api/VinePost;",
            ">;"
        }
    .end annotation
.end field

.field private static final POST_RESPONSE_PARSER:Lco/vine/android/api/VineParsers$RecordParser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/api/VineParsers$RecordParser",
            "<",
            "Lco/vine/android/api/VinePostResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIMESTAMP_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"

.field private static final USER_PARSER:Lco/vine/android/api/VineParsers$RecordParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/api/VineParsers$RecordParser",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    sput-object v0, Lco/vine/android/api/VineParsers;->JSON_FACTORY:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 45
    new-instance v0, Lco/vine/android/api/VineParsers$1;

    invoke-direct {v0}, Lco/vine/android/api/VineParsers$1;-><init>()V

    sput-object v0, Lco/vine/android/api/VineParsers;->USER_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    .line 53
    new-instance v0, Lco/vine/android/api/VineParsers$2;

    invoke-direct {v0}, Lco/vine/android/api/VineParsers$2;-><init>()V

    sput-object v0, Lco/vine/android/api/VineParsers;->LIKES_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    .line 61
    new-instance v0, Lco/vine/android/api/VineParsers$3;

    invoke-direct {v0}, Lco/vine/android/api/VineParsers$3;-><init>()V

    sput-object v0, Lco/vine/android/api/VineParsers;->POST_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    .line 69
    new-instance v0, Lco/vine/android/api/VineParsers$4;

    invoke-direct {v0}, Lco/vine/android/api/VineParsers$4;-><init>()V

    sput-object v0, Lco/vine/android/api/VineParsers;->COMMENT_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    .line 77
    new-instance v0, Lco/vine/android/api/VineParsers$5;

    invoke-direct {v0}, Lco/vine/android/api/VineParsers$5;-><init>()V

    sput-object v0, Lco/vine/android/api/VineParsers;->ACTIVITY_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    .line 85
    new-instance v0, Lco/vine/android/api/VineParsers$6;

    invoke-direct {v0}, Lco/vine/android/api/VineParsers$6;-><init>()V

    sput-object v0, Lco/vine/android/api/VineParsers;->POST_RESPONSE_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLike;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseLike(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLike;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePost;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parsePost(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePost;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineComment;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseComment(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineComment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineNotification;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseNotification(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineNotification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePostResponse;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseVinePostResponse(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePostResponse;

    move-result-object v0

    return-object v0
.end method

.method public static createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1036
    sget-object v1, Lco/vine/android/api/VineParsers;->JSON_FACTORY:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p0}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 1037
    .local v0, jp:Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 1038
    return-object v0
.end method

.method public static parseClientProfile(Lcom/fasterxml/jackson/core/JsonParser;)Lorg/json/JSONObject;
    .locals 5
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 732
    const-string v3, "Parse client profile."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 734
    .local v2, t:Lcom/fasterxml/jackson/core/JsonToken;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 735
    .local v1, object:Lorg/json/JSONObject;
    :goto_0
    if-eqz v2, :cond_0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_0

    .line 736
    sget-object v3, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 766
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 740
    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, e:Lorg/json/JSONException;
    const-string v3, "Failed to parse: {}."

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 748
    .end local v0           #e:Lorg/json/JSONException;
    :pswitch_2
    :try_start_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 749
    :catch_1
    move-exception v0

    .line 750
    .restart local v0       #e:Lorg/json/JSONException;
    const-string v3, "Failed to parse: {}."

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 755
    .end local v0           #e:Lorg/json/JSONException;
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 759
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 768
    :cond_0
    const-string v3, "Parsed client profile: "

    invoke-static {v3, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 769
    return-object v1

    .line 736
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static parseComment(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineComment;
    .locals 18
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v17

    .line 410
    .local v17, t:Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v5, 0x0

    .line 411
    .local v5, avatarUrl:Ljava/lang/String;
    const/4 v4, 0x0

    .line 412
    .local v4, comment:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 413
    .local v7, timestamp:J
    const-wide/16 v2, 0x0

    .line 414
    .local v2, commentId:J
    const/4 v9, 0x0

    .line 415
    .local v9, location:Ljava/lang/String;
    const/4 v6, 0x0

    .line 416
    .local v6, user:Lco/vine/android/api/VineUser;
    const-wide/16 v10, 0x0

    .line 417
    .local v10, userId:J
    const/4 v12, 0x0

    .line 418
    .local v12, username:Ljava/lang/String;
    const/4 v13, 0x0

    .line 420
    .local v13, verified:Z
    :goto_0
    if-eqz v17, :cond_6

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v17

    if-eq v0, v1, :cond_6

    .line 421
    sget-object v1, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v14

    aget v1, v1, v14

    packed-switch v1, :pswitch_data_0

    .line 462
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v17

    goto :goto_0

    .line 423
    :pswitch_0
    invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;

    move-result-object v6

    .line 424
    goto :goto_1

    .line 427
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v16

    .line 428
    .local v16, cn:Ljava/lang/String;
    const-string v1, "avatarUrl"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 430
    :cond_1
    const-string v1, "comment"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 432
    :cond_2
    const-string v1, "created"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v14, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"

    invoke-static {v1, v14}, Lco/vine/android/util/Util;->getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_1

    .line 434
    :cond_3
    const-string v1, "location"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 436
    :cond_4
    const-string v1, "username"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 442
    .end local v16           #cn:Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v16

    .line 443
    .restart local v16       #cn:Ljava/lang/String;
    const-string v1, "commentId"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v2

    goto :goto_1

    .line 445
    :cond_5
    const-string v1, "userId"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v10

    goto :goto_1

    .line 452
    .end local v16           #cn:Ljava/lang/String;
    :pswitch_3
    const-string v1, "verified"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v13

    goto/16 :goto_1

    .line 458
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 464
    :cond_6
    new-instance v1, Lco/vine/android/api/VineComment;

    const-wide/16 v14, 0x0

    invoke-direct/range {v1 .. v15}, Lco/vine/android/api/VineComment;-><init>(JLjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineUser;JLjava/lang/String;JLjava/lang/String;ZJ)V

    return-object v1

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static parseError(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineError;
    .locals 5
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 838
    const/4 v0, 0x0

    .line 839
    .local v0, error:I
    const/4 v1, 0x0

    .line 840
    .local v1, reason:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 842
    .local v2, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    .line 843
    sget-object v3, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 864
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 845
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 849
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 853
    :pswitch_2
    const-string v3, "code"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 854
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    goto :goto_1

    .line 859
    :pswitch_3
    const-string v3, "error"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 860
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 866
    :cond_1
    new-instance v3, Lco/vine/android/api/VineError;

    invoke-direct {v3, v0, v1}, Lco/vine/android/api/VineError;-><init>(ILjava/lang/String;)V

    return-object v3

    .line 843
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static parseGeneral(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 3
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 470
    .local v0, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_2

    .line 471
    sget-object v1, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 492
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 473
    :pswitch_1
    const-string v1, "success"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    sget-object v1, Lco/vine/android/api/VineParsers$API_RESPONSE;->SUCCESS:Lco/vine/android/api/VineParsers$API_RESPONSE;

    .line 494
    :goto_2
    return-object v1

    .line 479
    :pswitch_2
    const-string v1, "success"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    sget-object v1, Lco/vine/android/api/VineParsers$API_RESPONSE;->FAILURE:Lco/vine/android/api/VineParsers$API_RESPONSE;

    goto :goto_2

    .line 484
    :cond_1
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 488
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 494
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static declared-synchronized parseLike(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLike;
    .locals 9
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    const-class v6, Lco/vine/android/api/VineParsers;

    monitor-enter v6

    :try_start_0
    new-instance v4, Lco/vine/android/api/VineLike;

    invoke-direct {v4}, Lco/vine/android/api/VineLike;-><init>()V

    .line 212
    .local v4, vineLike:Lco/vine/android/api/VineLike;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 213
    .local v3, t:Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v2, -0x1

    .line 214
    .local v2, following:I
    const/4 v0, 0x0

    .line 216
    .local v0, blocked:I
    :goto_0
    if-eqz v3, :cond_8

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v5, :cond_8

    .line 217
    sget-object v5, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 261
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 219
    :pswitch_0
    const-string v5, "user"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 220
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;

    move-result-object v5

    iput-object v5, v4, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 211
    .end local v0           #blocked:I
    .end local v2           #following:I
    .end local v3           #t:Lcom/fasterxml/jackson/core/JsonToken;
    .end local v4           #vineLike:Lco/vine/android/api/VineLike;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 225
    .restart local v0       #blocked:I
    .restart local v2       #following:I
    .restart local v3       #t:Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v4       #vineLike:Lco/vine/android/api/VineLike;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 229
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, cn:Ljava/lang/String;
    const-string v5, "created"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    const-string v7, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"

    invoke-static {v5, v7}, Lco/vine/android/util/Util;->getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v4, Lco/vine/android/api/VineLike;->created:J

    goto :goto_1

    .line 232
    :cond_1
    const-string v5, "location"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lco/vine/android/api/VineLike;->location:Ljava/lang/String;

    goto :goto_1

    .line 234
    :cond_2
    const-string v5, "avatarUrl"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 235
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lco/vine/android/api/VineLike;->avatarUrl:Ljava/lang/String;

    goto :goto_1

    .line 236
    :cond_3
    const-string v5, "username"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;

    goto :goto_1

    .line 242
    .end local v1           #cn:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 243
    .restart local v1       #cn:Ljava/lang/String;
    const-string v5, "likeId"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 244
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v7

    iput-wide v7, v4, Lco/vine/android/api/VineLike;->likeId:J

    goto :goto_1

    .line 245
    :cond_4
    const-string v5, "userId"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 246
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v7

    iput-wide v7, v4, Lco/vine/android/api/VineLike;->userId:J

    goto/16 :goto_1

    .line 247
    :cond_5
    const-string v5, "verified"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 248
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v5

    iput v5, v4, Lco/vine/android/api/VineLike;->verified:I

    goto/16 :goto_1

    .line 249
    :cond_6
    const-string v5, "following"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 250
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v2

    goto/16 :goto_1

    .line 251
    :cond_7
    const-string v5, "blocked"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    goto/16 :goto_1

    .line 264
    .end local v1           #cn:Ljava/lang/String;
    :cond_8
    iget-object v5, v4, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    iput v2, v5, Lco/vine/android/api/VineUser;->following:I

    .line 265
    iget-object v5, v4, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;

    iput v0, v5, Lco/vine/android/api/VineUser;->blocked:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    monitor-exit v6

    return-object v4

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static parseLikeId(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Long;
    .locals 5
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    const-wide/16 v0, 0x0

    .line 499
    .local v0, id:J
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 500
    .local v2, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    .line 501
    sget-object v3, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 514
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 503
    :pswitch_0
    const-string v3, "likeId"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v0

    .line 505
    goto :goto_1

    .line 510
    :cond_0
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 516
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 501
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseLogin(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLogin;
    .locals 9
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, key:Ljava/lang/String;
    const/4 v6, 0x0

    .line 777
    .local v6, username:Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 779
    .local v4, userId:J
    const/4 v2, 0x0

    .line 781
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 782
    .local v3, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v3, :cond_4

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v7, :cond_4

    .line 783
    sget-object v7, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 826
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 785
    :pswitch_1
    const-string v7, "data"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 786
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 787
    :goto_2
    if-eqz v3, :cond_0

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v7, :cond_0

    .line 788
    sget-object v7, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    .line 808
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_2

    .line 790
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 791
    .local v1, name:Ljava/lang/String;
    const-string v7, "key"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 792
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 793
    :cond_2
    const-string v7, "username"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 794
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 799
    .end local v1           #name:Ljava/lang/String;
    :pswitch_3
    const-string v7, "userId"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 800
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v4

    goto :goto_3

    .line 811
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 817
    :pswitch_4
    const-string v7, "success"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v2

    goto :goto_1

    .line 829
    :cond_4
    if-eqz v2, :cond_5

    .line 830
    new-instance v7, Lco/vine/android/api/VineLogin;

    invoke-direct {v7, v0, v6, v4, v5}, Lco/vine/android/api/VineLogin;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 832
    :goto_4
    return-object v7

    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    .line 783
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 788
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static parseNotification(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineNotification;
    .locals 23
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 870
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v20

    .line 871
    .local v20, t:Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v3, 0x0

    .line 872
    .local v3, avatarUrl:Ljava/lang/String;
    const/4 v4, 0x0

    .line 873
    .local v4, username:Ljava/lang/String;
    const/4 v5, 0x0

    .line 874
    .local v5, thumbnailUrl:Ljava/lang/String;
    const/4 v6, 0x0

    .line 875
    .local v6, comment:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 876
    .local v7, notificationId:J
    const-wide/16 v9, 0x0

    .line 877
    .local v9, userId:J
    const-wide/16 v11, 0x0

    .line 878
    .local v11, postId:J
    const-wide/16 v13, 0x0

    .line 879
    .local v13, createdAt:J
    const/4 v15, 0x0

    .line 880
    .local v15, verified:Z
    const/16 v16, 0x0

    .line 881
    .local v16, notificationType:I
    const/16 v17, 0x0

    .line 883
    .local v17, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineNotificationEntity;>;"
    :goto_0
    if-eqz v20, :cond_c

    sget-object v21, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_c

    .line 884
    sget-object v21, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual/range {v20 .. v20}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 935
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v20

    goto :goto_0

    .line 886
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    .line 887
    .local v19, name:Ljava/lang/String;
    const-string v21, "avatarUrl"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 888
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 889
    :cond_1
    const-string v21, "body"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 890
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lco/vine/android/util/Util;->getUsernameFromActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 892
    :cond_2
    const-string v21, "thumbnailUrl"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 894
    :cond_3
    const-string v21, "created"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 895
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v21

    const-string v22, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"

    invoke-static/range {v21 .. v22}, Lco/vine/android/util/Util;->getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_1

    .line 900
    .end local v19           #name:Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v19

    .line 901
    .restart local v19       #name:Ljava/lang/String;
    const-string v21, "notificationTypeId"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 902
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v16

    goto :goto_1

    .line 903
    :cond_4
    const-string v21, "notificationId"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v7

    goto :goto_1

    .line 905
    :cond_5
    const-string v21, "userId"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 906
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v9

    goto/16 :goto_1

    .line 907
    :cond_6
    const-string v21, "postId"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 908
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v11

    goto/16 :goto_1

    .line 909
    :cond_7
    const-string v21, "verified"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 910
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    const/4 v15, 0x1

    :goto_2
    goto/16 :goto_1

    :cond_8
    const/4 v15, 0x0

    goto :goto_2

    .line 915
    .end local v19           #name:Ljava/lang/String;
    :pswitch_2
    const-string v21, "entities"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 916
    :goto_3
    if-eqz v20, :cond_b

    sget-object v21, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 917
    invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseNotificationEntity(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineNotificationEntity;

    move-result-object v18

    .line 918
    .local v18, entity:Lco/vine/android/api/VineNotificationEntity;
    if-nez v17, :cond_9

    .line 919
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineNotificationEntity;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 921
    .restart local v17       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineNotificationEntity;>;"
    :cond_9
    if-eqz v18, :cond_a

    .line 922
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v20

    .line 925
    goto :goto_3

    .line 927
    .end local v18           #entity:Lco/vine/android/api/VineNotificationEntity;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 931
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 938
    :cond_c
    new-instance v2, Lco/vine/android/api/VineNotification;

    invoke-direct/range {v2 .. v17}, Lco/vine/android/api/VineNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJZILjava/util/ArrayList;)V

    .line 942
    .local v2, result:Lco/vine/android/api/VineNotification;
    if-eqz v17, :cond_d

    .line 943
    invoke-static {v2}, Lco/vine/android/util/Util;->setupNotification(Lco/vine/android/api/VineNotification;)V

    .line 946
    :cond_d
    if-lez v16, :cond_e

    .line 949
    .end local v2           #result:Lco/vine/android/api/VineNotification;
    :goto_4
    return-object v2

    .restart local v2       #result:Lco/vine/android/api/VineNotification;
    :cond_e
    const/4 v2, 0x0

    goto :goto_4

    .line 884
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseNotificationEntity(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineNotificationEntity;
    .locals 11
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 954
    const/4 v1, 0x0

    .line 955
    .local v1, type:Ljava/lang/String;
    const/4 v3, 0x0

    .line 956
    .local v3, link:Ljava/lang/String;
    const/4 v2, 0x0

    .line 957
    .local v2, title:Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 958
    .local v6, id:J
    const/4 v4, -0x1

    .line 959
    .local v4, start:I
    const/4 v5, -0x1

    .line 960
    .local v5, end:I
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v9

    .line 961
    .local v9, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v9, :cond_6

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v9, v0, :cond_6

    .line 962
    sget-object v0, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v10

    aget v0, v0, v10

    packed-switch v0, :pswitch_data_0

    .line 1004
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v9

    goto :goto_0

    .line 964
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    .line 965
    .local v8, cn:Ljava/lang/String;
    const-string v0, "type"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 966
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 967
    :cond_1
    const-string v0, "link"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 968
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 969
    :cond_2
    const-string v0, "title"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 975
    .end local v8           #cn:Ljava/lang/String;
    :pswitch_1
    const-string v0, "range"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 976
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v9

    .line 977
    :goto_2
    if-eqz v9, :cond_5

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v9, v0, :cond_5

    .line 978
    sget-object v0, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v9}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v10

    aget v0, v0, v10

    packed-switch v0, :pswitch_data_1

    .line 988
    :goto_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v9

    goto :goto_2

    .line 980
    :pswitch_2
    const/4 v0, -0x1

    if-ne v4, v0, :cond_3

    .line 981
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v4

    goto :goto_3

    .line 983
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v5

    goto :goto_3

    .line 991
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 995
    :cond_5
    :pswitch_3
    const-string v0, "id"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v6

    goto :goto_1

    .line 1006
    :cond_6
    new-instance v0, Lco/vine/android/api/VineNotificationEntity;

    invoke-direct/range {v0 .. v7}, Lco/vine/android/api/VineNotificationEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    return-object v0

    .line 962
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 978
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch
.end method

.method private static parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;
    .locals 6
    .parameter "p"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lco/vine/android/api/VineParsers$RecordParser",
            "<TT;>;)",
            "Lco/vine/android/api/VinePagedData",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    .local p1, parser:Lco/vine/android/api/VineParsers$RecordParser;,"Lco/vine/android/api/VineParsers$RecordParser<TT;>;"
    new-instance v2, Lco/vine/android/api/VinePagedData;

    invoke-direct {v2}, Lco/vine/android/api/VinePagedData;-><init>()V

    .line 167
    .local v2, pagedData:Lco/vine/android/api/VinePagedData;,"Lco/vine/android/api/VinePagedData<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 170
    .local v3, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v3, :cond_6

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_6

    .line 171
    sget-object v4, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 205
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 173
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 177
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, cn:Ljava/lang/String;
    const-string v4, "count"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v4

    iput v4, v2, Lco/vine/android/api/VinePagedData;->count:I

    goto :goto_1

    .line 180
    :cond_1
    const-string v4, "nextPage"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v4

    iput v4, v2, Lco/vine/android/api/VinePagedData;->nextPage:I

    goto :goto_1

    .line 182
    :cond_2
    const-string v4, "previousPage"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v4

    iput v4, v2, Lco/vine/android/api/VinePagedData;->previousPage:I

    goto :goto_1

    .line 184
    :cond_3
    const-string v4, "size"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 185
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v4

    iput v4, v2, Lco/vine/android/api/VinePagedData;->size:I

    goto :goto_1

    .line 186
    :cond_4
    const-string v4, "anchor"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v4

    iput-wide v4, v2, Lco/vine/android/api/VinePagedData;->anchor:J

    goto :goto_1

    .line 192
    .end local v0           #cn:Ljava/lang/String;
    :pswitch_2
    const-string v4, "records"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 194
    :goto_2
    if-eqz v3, :cond_0

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_0

    .line 195
    invoke-interface {p1, p0}, Lco/vine/android/api/VineParsers$RecordParser;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 196
    .local v1, item:Landroid/os/Parcelable;,"TT;"
    if-eqz v1, :cond_5

    .line 197
    iget-object v4, v2, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 200
    goto :goto_2

    .line 207
    .end local v1           #item:Landroid/os/Parcelable;,"TT;"
    :cond_6
    return-object v2

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static declared-synchronized parsePost(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePost;
    .locals 15
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    const-class v12, Lco/vine/android/api/VineParsers;

    monitor-enter v12

    :try_start_0
    new-instance v11, Lco/vine/android/api/VinePost;

    invoke-direct {v11}, Lco/vine/android/api/VinePost;-><init>()V

    .line 272
    .local v11, vinePost:Lco/vine/android/api/VinePost;
    const/4 v8, 0x0

    .line 273
    .local v8, address:Ljava/lang/String;
    const/4 v1, 0x0

    .line 274
    .local v1, categoryIconUrl:Ljava/lang/String;
    const/4 v3, 0x0

    .line 275
    .local v3, categoryId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 276
    .local v2, categoryShortName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 277
    .local v4, city:Ljava/lang/String;
    const/4 v5, 0x0

    .line 278
    .local v5, countryCode:Ljava/lang/String;
    const/4 v6, 0x0

    .line 279
    .local v6, venueName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 280
    .local v7, state:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v10

    .line 282
    .local v10, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v10, :cond_1c

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v10, v0, :cond_1c

    .line 283
    sget-object v0, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v13

    aget v0, v0, v13

    packed-switch v0, :pswitch_data_0

    .line 371
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v10

    goto :goto_0

    .line 285
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    .line 286
    .local v9, cn:Ljava/lang/String;
    const-string v0, "comments"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    sget-object v0, Lco/vine/android/api/VineParsers;->COMMENT_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    invoke-static {p0, v0}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;

    move-result-object v0

    iput-object v0, v11, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 271
    .end local v1           #categoryIconUrl:Ljava/lang/String;
    .end local v2           #categoryShortName:Ljava/lang/String;
    .end local v3           #categoryId:Ljava/lang/String;
    .end local v4           #city:Ljava/lang/String;
    .end local v5           #countryCode:Ljava/lang/String;
    .end local v6           #venueName:Ljava/lang/String;
    .end local v7           #state:Ljava/lang/String;
    .end local v8           #address:Ljava/lang/String;
    .end local v9           #cn:Ljava/lang/String;
    .end local v10           #t:Lcom/fasterxml/jackson/core/JsonToken;
    .end local v11           #vinePost:Lco/vine/android/api/VinePost;
    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0

    .line 288
    .restart local v1       #categoryIconUrl:Ljava/lang/String;
    .restart local v2       #categoryShortName:Ljava/lang/String;
    .restart local v3       #categoryId:Ljava/lang/String;
    .restart local v4       #city:Ljava/lang/String;
    .restart local v5       #countryCode:Ljava/lang/String;
    .restart local v6       #venueName:Ljava/lang/String;
    .restart local v7       #state:Ljava/lang/String;
    .restart local v8       #address:Ljava/lang/String;
    .restart local v9       #cn:Ljava/lang/String;
    .restart local v10       #t:Lcom/fasterxml/jackson/core/JsonToken;
    .restart local v11       #vinePost:Lco/vine/android/api/VinePost;
    :cond_1
    :try_start_1
    const-string v0, "likes"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    sget-object v0, Lco/vine/android/api/VineParsers;->LIKES_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    invoke-static {p0, v0}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;

    move-result-object v0

    iput-object v0, v11, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;

    goto :goto_1

    .line 290
    :cond_2
    const-string v0, "user"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;

    move-result-object v0

    iput-object v0, v11, Lco/vine/android/api/VinePost;->user:Lco/vine/android/api/VineUser;

    goto :goto_1

    .line 296
    .end local v9           #cn:Ljava/lang/String;
    :pswitch_1
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseTags(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v11, Lco/vine/android/api/VinePost;->tags:Ljava/util/ArrayList;

    goto :goto_1

    .line 300
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    .line 301
    .restart local v9       #cn:Ljava/lang/String;
    const-string v0, "foursquareVenueId"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    goto :goto_1

    .line 303
    :cond_3
    const-string v0, "description"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 304
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    goto :goto_1

    .line 305
    :cond_4
    const-string v0, "created"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 306
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v13, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"

    invoke-static {v0, v13}, Lco/vine/android/util/Util;->getTimeInMsFromString(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v11, Lco/vine/android/api/VinePost;->created:J

    goto :goto_1

    .line 307
    :cond_5
    const-string v0, "location"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 308
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lco/vine/android/api/VinePost;->location:Ljava/lang/String;

    goto/16 :goto_1

    .line 309
    :cond_6
    const-string v0, "avatarUrl"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 310
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 311
    :cond_7
    const-string v0, "videoLowURL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 312
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;

    goto/16 :goto_1

    .line 313
    :cond_8
    const-string v0, "videoUrl"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 314
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 315
    :cond_9
    const-string v0, "username"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 316
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    goto/16 :goto_1

    .line 317
    :cond_a
    const-string v0, "shareUrl"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 318
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 319
    :cond_b
    const-string v0, "thumbnailUrl"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 320
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 321
    :cond_c
    const-string v0, "venueAddress"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 322
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 323
    :cond_d
    const-string v0, "venueCategoryIconUrl"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 324
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 325
    :cond_e
    const-string v0, "venueCategoryId"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 326
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 327
    :cond_f
    const-string v0, "venueCategoryShortName"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 328
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 329
    :cond_10
    const-string v0, "venueCity"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 330
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 331
    :cond_11
    const-string v0, "venueCountryCode"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 332
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 333
    :cond_12
    const-string v0, "venueName"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 334
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 335
    :cond_13
    const-string v0, "state"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 341
    .end local v9           #cn:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    .line 342
    .restart local v9       #cn:Ljava/lang/String;
    const-string v0, "explicitContent"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 343
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    iput v0, v11, Lco/vine/android/api/VinePost;->explicitContent:I

    goto/16 :goto_1

    .line 344
    :cond_14
    const-string v0, "postFlags"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 345
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    iput v0, v11, Lco/vine/android/api/VinePost;->postFlags:I

    goto/16 :goto_1

    .line 346
    :cond_15
    const-string v0, "postToFacebook"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 347
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    iput v0, v11, Lco/vine/android/api/VinePost;->postToFacebook:I

    goto/16 :goto_1

    .line 348
    :cond_16
    const-string v0, "postToTwitter"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 349
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    iput v0, v11, Lco/vine/android/api/VinePost;->postToTwitter:I

    goto/16 :goto_1

    .line 350
    :cond_17
    const-string v0, "postVerified"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 351
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    iput v0, v11, Lco/vine/android/api/VinePost;->postVerified:I

    goto/16 :goto_1

    .line 352
    :cond_18
    const-string v0, "promoted"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 353
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    iput v0, v11, Lco/vine/android/api/VinePost;->promoted:I

    goto/16 :goto_1

    .line 354
    :cond_19
    const-string v0, "verified"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 355
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    iput v0, v11, Lco/vine/android/api/VinePost;->verified:I

    goto/16 :goto_1

    .line 356
    :cond_1a
    const-string v0, "postId"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 357
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v13

    iput-wide v13, v11, Lco/vine/android/api/VinePost;->postId:J

    goto/16 :goto_1

    .line 358
    :cond_1b
    const-string v0, "userId"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v13

    iput-wide v13, v11, Lco/vine/android/api/VinePost;->userId:J

    goto/16 :goto_1

    .line 365
    .end local v9           #cn:Ljava/lang/String;
    :pswitch_4
    const-string v0, "liked"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v0

    iput-boolean v0, v11, Lco/vine/android/api/VinePost;->liked:Z

    goto/16 :goto_1

    .line 374
    :cond_1c
    iget-object v0, v11, Lco/vine/android/api/VinePost;->foursquareVenueId:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 375
    new-instance v0, Lco/vine/android/api/VineVenue;

    invoke-direct/range {v0 .. v8}, Lco/vine/android/api/VineVenue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v11, Lco/vine/android/api/VinePost;->venueData:Lco/vine/android/api/VineVenue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    :cond_1d
    monitor-exit v12

    return-object v11

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static parseSignUp(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLogin;
    .locals 7
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    const/4 v2, 0x0

    .line 629
    .local v2, userId:Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 630
    .local v1, t:Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v3, 0x0

    .line 631
    .local v3, vl:Lco/vine/android/api/VineLogin;
    const/4 v0, 0x0

    .line 632
    .local v0, sessionKey:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v4, :cond_1

    .line 633
    sget-object v4, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 653
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 635
    :pswitch_0
    const-string v4, "userId"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    .line 641
    :pswitch_1
    const-string v4, "key"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 647
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 650
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 656
    :cond_1
    new-instance v3, Lco/vine/android/api/VineLogin;

    .end local v3           #vl:Lco/vine/android/api/VineLogin;
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v3, v0, v4, v5, v6}, Lco/vine/android/api/VineLogin;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 657
    .restart local v3       #vl:Lco/vine/android/api/VineLogin;
    return-object v3

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static parseTags(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 7
    .parameter "p"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineTag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v4, tags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineTag;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 385
    .local v0, t:Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v3, 0x0

    .line 386
    .local v3, tagName:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 387
    .local v1, tagId:J
    :goto_0
    if-eqz v0, :cond_1

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v5, :cond_1

    .line 388
    sget-object v5, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 403
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 390
    :goto_2
    :pswitch_0
    if-eqz v0, :cond_0

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v5, :cond_0

    .line 391
    sget-object v5, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 398
    :goto_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 393
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 394
    goto :goto_3

    .line 396
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v1

    goto :goto_3

    .line 400
    :cond_0
    new-instance v5, Lco/vine/android/api/VineTag;

    invoke-direct {v5, v3, v1, v2}, Lco/vine/android/api/VineTag;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 405
    :cond_1
    return-object v4

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 391
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static parseTwitterUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/TwitterUser;
    .locals 13
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    const/4 v1, 0x0

    .line 670
    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 671
    .local v2, screenName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 672
    .local v3, location:Ljava/lang/String;
    const/4 v4, 0x0

    .line 673
    .local v4, description:Ljava/lang/String;
    const/4 v5, 0x0

    .line 674
    .local v5, url:Ljava/lang/String;
    const/4 v6, 0x0

    .line 675
    .local v6, profileUrl:Ljava/lang/String;
    const/4 v7, 0x0

    .line 676
    .local v7, defaultProfileImage:Z
    const-wide/16 v8, 0x0

    .line 678
    .local v8, userId:J
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v11

    .line 679
    .local v11, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v11, :cond_6

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v11, v0, :cond_6

    .line 680
    sget-object v0, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v11}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v12

    aget v0, v0, v12

    packed-switch v0, :pswitch_data_0

    .line 724
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v11

    goto :goto_0

    .line 682
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v10

    .line 683
    .local v10, cn:Ljava/lang/String;
    const-string v0, "name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 685
    :cond_1
    const-string v0, "screen_name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 686
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 687
    :cond_2
    const-string v0, "profile_image_url"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 688
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 689
    const-string v0, "_normal"

    const-string v12, "_bigger"

    invoke-virtual {v6, v0, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 690
    :cond_3
    const-string v0, "url"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 691
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 692
    :cond_4
    const-string v0, "description"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 693
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 694
    :cond_5
    const-string v0, "location"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 700
    .end local v10           #cn:Ljava/lang/String;
    :pswitch_1
    const-string v0, "id"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v8

    goto :goto_1

    .line 707
    :pswitch_2
    const-string v0, "default_profile_image"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v7

    goto :goto_1

    .line 713
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 717
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 726
    :cond_6
    new-instance v0, Lco/vine/android/api/TwitterUser;

    invoke-direct/range {v0 .. v9}, Lco/vine/android/api/TwitterUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-object v0

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;
    .locals 26
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    const/4 v2, 0x0

    .line 539
    .local v2, username:Ljava/lang/String;
    const/4 v3, 0x0

    .line 540
    .local v3, avatarUrl:Ljava/lang/String;
    const/4 v4, 0x0

    .line 541
    .local v4, description:Ljava/lang/String;
    const/4 v5, 0x0

    .line 542
    .local v5, location:Ljava/lang/String;
    const/16 v20, 0x0

    .line 543
    .local v20, phoneNumber:Ljava/lang/String;
    const/16 v19, 0x0

    .line 544
    .local v19, email:Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 545
    .local v6, userId:J
    const-wide/16 v8, 0x0

    .line 546
    .local v8, orderId:J
    const/4 v10, 0x0

    .line 547
    .local v10, blocked:I
    const/4 v11, 0x0

    .line 548
    .local v11, blocking:I
    const/4 v12, 0x0

    .line 549
    .local v12, explicit:I
    const/4 v13, 0x0

    .line 550
    .local v13, followerCount:I
    const/4 v14, 0x0

    .line 551
    .local v14, followingCount:I
    const/4 v15, -0x1

    .line 552
    .local v15, following:I
    const/16 v16, 0x0

    .line 553
    .local v16, likeCount:I
    const/16 v17, 0x0

    .line 554
    .local v17, postCount:I
    const/16 v18, 0x0

    .line 555
    .local v18, verified:I
    const/16 v21, 0x0

    .line 557
    .local v21, twitterConnected:I
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v23

    .line 559
    .local v23, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v23, :cond_11

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v23

    if-eq v0, v1, :cond_11

    .line 560
    sget-object v1, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual/range {v23 .. v23}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v24

    aget v1, v1, v24

    packed-switch v1, :pswitch_data_0

    .line 615
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v23

    goto :goto_0

    .line 562
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v22

    .line 563
    .local v22, name:Ljava/lang/String;
    const-string v1, "avatarUrl"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 565
    :cond_1
    const-string v1, "username"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 567
    :cond_2
    const-string v1, "description"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 569
    :cond_3
    const-string v1, "location"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 571
    :cond_4
    const-string v1, "phoneNumber"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v20

    goto :goto_1

    .line 573
    :cond_5
    const-string v1, "email"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    .line 579
    .end local v22           #name:Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v22

    .line 580
    .restart local v22       #name:Ljava/lang/String;
    const-string v1, "userId"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v6

    goto :goto_1

    .line 582
    :cond_6
    const-string v1, "blocked"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v10

    goto/16 :goto_1

    .line 584
    :cond_7
    const-string v1, "blocking"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v11

    goto/16 :goto_1

    .line 586
    :cond_8
    const-string v1, "explicit"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v12

    goto/16 :goto_1

    .line 588
    :cond_9
    const-string v1, "followerCount"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v13

    goto/16 :goto_1

    .line 590
    :cond_a
    const-string v1, "followingCount"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v14

    goto/16 :goto_1

    .line 592
    :cond_b
    const-string v1, "following"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v15

    goto/16 :goto_1

    .line 594
    :cond_c
    const-string v1, "likeCount"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v16

    goto/16 :goto_1

    .line 596
    :cond_d
    const-string v1, "postCount"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v17

    goto/16 :goto_1

    .line 598
    :cond_e
    const-string v1, "verified"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v18

    goto/16 :goto_1

    .line 600
    :cond_f
    const-string v1, "followId"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v8

    goto/16 :goto_1

    .line 602
    :cond_10
    const-string v1, "twitterConnected"

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v21

    goto/16 :goto_1

    .line 609
    .end local v22           #name:Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 618
    :cond_11
    const-wide/16 v24, 0x0

    cmp-long v1, v6, v24

    if-gtz v1, :cond_12

    .line 619
    const/4 v1, 0x0

    .line 622
    :goto_2
    return-object v1

    :cond_12
    new-instance v1, Lco/vine/android/api/VineUser;

    invoke-direct/range {v1 .. v21}, Lco/vine/android/api/VineUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIIIIIIIIILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 560
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseUsersArray(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 4
    .parameter "p"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 521
    .local v0, t:Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v2, 0x0

    .line 522
    .local v2, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    :goto_0
    if-eqz v0, :cond_2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v3, :cond_2

    .line 523
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v3, :cond_1

    .line 524
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;

    move-result-object v1

    .line 525
    .local v1, user:Lco/vine/android/api/VineUser;
    if-eqz v1, :cond_1

    .line 526
    if-nez v2, :cond_0

    .line 527
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .restart local v2       #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lco/vine/android/api/VineUser;>;"
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    .end local v1           #user:Lco/vine/android/api/VineUser;
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 534
    :cond_2
    return-object v2
.end method

.method private static parseVinePostResponse(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePostResponse;
    .locals 8
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1010
    const-wide/16 v3, 0x0

    .line 1011
    .local v3, postId:J
    const-wide/16 v1, 0x0

    .line 1012
    .local v1, createdAt:J
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    .line 1013
    .local v5, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v5, :cond_2

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v6, :cond_2

    .line 1014
    sget-object v6, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1030
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    goto :goto_0

    .line 1016
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, cn:Ljava/lang/String;
    const-string v6, "postId"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1018
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v3

    goto :goto_1

    .line 1019
    :cond_1
    const-string v6, "createdAt"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1020
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v1

    goto :goto_1

    .line 1026
    .end local v0           #cn:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 1032
    :cond_2
    new-instance v6, Lco/vine/android/api/VinePostResponse;

    invoke-direct {v6, v3, v4, v1, v2}, Lco/vine/android/api/VinePostResponse;-><init>(JJ)V

    return-object v6

    .line 1014
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseVineResponse(Lcom/fasterxml/jackson/core/JsonParser;I)Ljava/lang/Object;
    .locals 4
    .parameter "p"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 97
    .local v0, t:Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 98
    sget-object v1, Lco/vine/android/api/VineParsers$7;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 158
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 100
    :pswitch_0
    const-string v1, "data"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    packed-switch p1, :pswitch_data_1

    .line 139
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 103
    :pswitch_2
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;

    move-result-object v1

    .line 149
    :goto_2
    return-object v1

    .line 106
    :pswitch_3
    sget-object v1, Lco/vine/android/api/VineParsers;->USER_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;

    move-result-object v1

    goto :goto_2

    .line 109
    :pswitch_4
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseClientProfile(Lcom/fasterxml/jackson/core/JsonParser;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_2

    .line 112
    :pswitch_5
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseSignUp(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLogin;

    move-result-object v1

    goto :goto_2

    .line 115
    :pswitch_6
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseGeneral(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 118
    :pswitch_7
    sget-object v1, Lco/vine/android/api/VineParsers;->COMMENT_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;

    move-result-object v1

    goto :goto_2

    .line 121
    :pswitch_8
    sget-object v1, Lco/vine/android/api/VineParsers;->POST_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;

    move-result-object v1

    goto :goto_2

    .line 124
    :pswitch_9
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseComment(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineComment;

    move-result-object v1

    goto :goto_2

    .line 127
    :pswitch_a
    sget-object v1, Lco/vine/android/api/VineParsers;->ACTIVITY_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;

    move-result-object v1

    goto :goto_2

    .line 130
    :pswitch_b
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseLikeId(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_2

    .line 133
    :pswitch_c
    sget-object v1, Lco/vine/android/api/VineParsers;->LIKES_PARSER:Lco/vine/android/api/VineParsers$RecordParser;

    invoke-static {p0, v1}, Lco/vine/android/api/VineParsers;->parsePagedData(Lcom/fasterxml/jackson/core/JsonParser;Lco/vine/android/api/VineParsers$RecordParser;)Lco/vine/android/api/VinePagedData;

    move-result-object v1

    goto :goto_2

    .line 136
    :pswitch_d
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseVinePostResponse(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePostResponse;

    move-result-object v1

    goto :goto_2

    .line 146
    :pswitch_e
    const-string v1, "data"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    packed-switch p1, :pswitch_data_2

    .line 152
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 149
    :pswitch_f
    invoke-static {p0}, Lco/vine/android/api/VineParsers;->parseUsersArray(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    .line 160
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled parse type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_e
    .end packed-switch

    .line 101
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_4
    .end packed-switch

    .line 147
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_f
    .end packed-switch
.end method
