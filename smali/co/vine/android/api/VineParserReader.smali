.class public Lco/vine/android/api/VineParserReader;
.super Ljava/lang/Object;
.source "VineParserReader.java"

# interfaces
.implements Lco/vine/android/network/HttpOperationReader;


# static fields
#the value of this static final field might be set in the static constructor
.field public static final LOGGABLE:Z = false

.field public static final TAG:Ljava/lang/String; = "VineParserReader"

.field public static final TYPE_ACTIVITY:I = 0x9

.field public static final TYPE_CLIENT_PROFILE:I = 0xd

.field public static final TYPE_COMMENT:I = 0x7

.field public static final TYPE_COMMENTS:I = 0x6

.field public static final TYPE_GENERAL:I = 0x1

.field public static final TYPE_LIKE:I = 0xa

.field public static final TYPE_LIKES:I = 0xb

.field public static final TYPE_LOGIN:I = 0x4

.field public static final TYPE_POSTS:I = 0x8

.field public static final TYPE_POST_RESPONSE:I = 0xc

.field public static final TYPE_SERVER_STATUS:I = 0xf

.field public static final TYPE_SIGN_UP:I = 0x5

.field public static final TYPE_TAGS:I = 0xe

.field public static final TYPE_UPLOAD:I = 0x10

.field public static final TYPE_USER:I = 0x2

.field public static final TYPE_USERS:I = 0x3


# instance fields
.field private mParsedObject:Ljava/lang/Object;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-string v0, "VineParserReader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lco/vine/android/api/VineParserReader;->LOGGABLE:Z

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lco/vine/android/api/VineParserReader;->mType:I

    .line 91
    return-void
.end method

.method public static createLoginReader()Lco/vine/android/api/VineParserReader;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lco/vine/android/api/VineParserReader;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lco/vine/android/api/VineParserReader;-><init>(I)V

    return-object v0
.end method

.method public static createParserReader(I)Lco/vine/android/api/VineParserReader;
    .locals 1
    .parameter "type"

    .prologue
    .line 82
    new-instance v0, Lco/vine/android/api/VineParserReader;

    invoke-direct {v0, p0}, Lco/vine/android/api/VineParserReader;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getParsedObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lco/vine/android/api/VineParserReader;->mParsedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public onHandleError(Lco/vine/android/network/HttpResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 96
    return-void
.end method

.method public readInput(IILjava/io/InputStream;)V
    .locals 4
    .parameter "statusCode"
    .parameter "contentLength"
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_1

    .line 55
    iget v1, p0, Lco/vine/android/api/VineParserReader;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 62
    invoke-static {p3}, Lco/vine/android/api/VineParsers;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 63
    .local v0, jsonParser:Lcom/fasterxml/jackson/core/JsonParser;
    iget v1, p0, Lco/vine/android/api/VineParserReader;->mType:I

    invoke-static {v0, v1}, Lco/vine/android/api/VineParsers;->parseVineResponse(Lcom/fasterxml/jackson/core/JsonParser;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VineParserReader;->mParsedObject:Ljava/lang/Object;

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 57
    .end local v0           #jsonParser:Lcom/fasterxml/jackson/core/JsonParser;
    :pswitch_0
    invoke-static {p3}, Lco/vine/android/api/VineParsers;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 58
    .restart local v0       #jsonParser:Lcom/fasterxml/jackson/core/JsonParser;
    invoke-static {v0}, Lco/vine/android/api/VineParsers;->parseLogin(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineLogin;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VineParserReader;->mParsedObject:Ljava/lang/Object;

    goto :goto_0

    .line 68
    .end local v0           #jsonParser:Lcom/fasterxml/jackson/core/JsonParser;
    :cond_1
    invoke-static {p3}, Lco/vine/android/api/VineParsers;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 69
    .restart local v0       #jsonParser:Lcom/fasterxml/jackson/core/JsonParser;
    invoke-static {v0}, Lco/vine/android/api/VineParsers;->parseError(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineError;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VineParserReader;->mParsedObject:Ljava/lang/Object;

    .line 70
    sget-boolean v1, Lco/vine/android/api/VineParserReader;->LOGGABLE:Z

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "VineParserReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: Response with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
