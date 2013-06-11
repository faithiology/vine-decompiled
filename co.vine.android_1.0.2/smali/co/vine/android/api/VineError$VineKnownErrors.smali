.class public final enum Lco/vine/android/api/VineError$VineKnownErrors;
.super Ljava/lang/Enum;
.source "VineError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/api/VineError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VineKnownErrors"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lco/vine/android/api/VineError$VineKnownErrors;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum ACCESS_DENIED:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum ADDRESS_BOOK_NOT_FOUND:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum AVATAR_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum BAD_CREDENTIALS:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum CANT_FLAG_SELF:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum CANT_FOLLOW_SELF:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum COMMENT_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum DESCRIPTION_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum DUPLICATE_MENTIONS:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum EMAIL_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum EMAIL_IN_USE:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum EXPIRED_SESSION:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum FACEBOOK_FF_DISABLED:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum FACEBOOK_NOT_AUTHORIZED:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum FSQUARE_VENUE_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum INVALID_ARGUMENT:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum INVALID_ERROR_CODE:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum INVALID_SESSION:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum LOCATION_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum MISSING_REQUIRED_FIELD:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum NON_INTEGER_VALUE:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum NOTIFICATION_REFERENCES_SELF:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum NO_ARGUMENTS_PROVIDED:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum ORPHANED_USER_ACCOUNT:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum PASSWORD_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum PASSWORD_RESET_TOKEN_EXPIRED:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum PHONE_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum RECORD_DOES_NOT_EXIST:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum RELATIONSHIP_REQUIRES_ACTION:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum REQUIRES_ADMIN_LOGIN:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum REQUIRES_LOGIN:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum TOO_MANY_MENTIONS:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum TWITTER_NAME_IN_USE:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum TWITTER_NOT_AUTHORIZED:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum TWITTER_WRONG_ACCOUNT:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum UNKNOWN_ERROR:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum UNSUPPORTED_METHOD:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum USERNAME_INVALID_CHARACTERS:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum USERNAME_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum USERNAME_IN_USE:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum USER_DESCRIPTION_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

.field public static final enum VIDEOURL_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;


# instance fields
.field public final code:I

.field public final message:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 13
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "INVALID_ERROR_CODE"

    const/4 v2, -0x1

    const v3, 0x7f0800cd

    invoke-direct {v0, v1, v5, v2, v3}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->INVALID_ERROR_CODE:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 14
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "UNKNOWN_ERROR"

    const v2, 0x7f0800ce

    invoke-direct {v0, v1, v6, v5, v2}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->UNKNOWN_ERROR:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 15
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "UNSUPPORTED_METHOD"

    const/4 v2, 0x2

    const v3, 0x7f0800cf

    invoke-direct {v0, v1, v2, v6, v3}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->UNSUPPORTED_METHOD:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 16
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "MISSING_REQUIRED_FIELD"

    const v2, 0x7f0800d0

    invoke-direct {v0, v1, v7, v7, v2}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->MISSING_REQUIRED_FIELD:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 17
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "ACCESS_DENIED"

    const v2, 0x7f0800d1

    invoke-direct {v0, v1, v8, v8, v2}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->ACCESS_DENIED:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 18
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "INVALID_ARGUMENT"

    const v2, 0x7f0800d2

    invoke-direct {v0, v1, v9, v9, v2}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->INVALID_ARGUMENT:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 19
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "NON_INTEGER_VALUE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const v4, 0x7f0800d3

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->NON_INTEGER_VALUE:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 20
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "REQUIRES_LOGIN"

    const/4 v2, 0x7

    const/16 v3, 0x64

    const v4, 0x7f0800d4

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->REQUIRES_LOGIN:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 21
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "BAD_CREDENTIALS"

    const/16 v2, 0x8

    const/16 v3, 0x65

    const v4, 0x7f0800d5

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->BAD_CREDENTIALS:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 22
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "EXPIRED_SESSION"

    const/16 v2, 0x9

    const/16 v3, 0x66

    const v4, 0x7f0800d6

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->EXPIRED_SESSION:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 23
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "INVALID_SESSION"

    const/16 v2, 0xa

    const/16 v3, 0x67

    const v4, 0x7f0800d7

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->INVALID_SESSION:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 24
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "FACEBOOK_NOT_AUTHORIZED"

    const/16 v2, 0xb

    const/16 v3, 0x68

    const v4, 0x7f0800d8

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->FACEBOOK_NOT_AUTHORIZED:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 25
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "TWITTER_NOT_AUTHORIZED"

    const/16 v2, 0xc

    const/16 v3, 0x69

    const v4, 0x7f0800d9

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->TWITTER_NOT_AUTHORIZED:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 26
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "ADDRESS_BOOK_NOT_FOUND"

    const/16 v2, 0xd

    const/16 v3, 0x6a

    const v4, 0x7f0800da

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->ADDRESS_BOOK_NOT_FOUND:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 27
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "FACEBOOK_FF_DISABLED"

    const/16 v2, 0xe

    const/16 v3, 0x6b

    const v4, 0x7f0800db

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->FACEBOOK_FF_DISABLED:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 28
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "REQUIRES_ADMIN_LOGIN"

    const/16 v2, 0xf

    const/16 v3, 0x96

    const v4, 0x7f0800dc

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->REQUIRES_ADMIN_LOGIN:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 29
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "USERNAME_IN_USE"

    const/16 v2, 0x10

    const/16 v3, 0xc8

    const v4, 0x7f0800dd

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->USERNAME_IN_USE:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 30
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "USERNAME_INVALID_CHARACTERS"

    const/16 v2, 0x11

    const/16 v3, 0xc9

    const v4, 0x7f0800de

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->USERNAME_INVALID_CHARACTERS:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 31
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "USERNAME_INVALID_LENGTH"

    const/16 v2, 0x12

    const/16 v3, 0xca

    const v4, 0x7f0800df

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->USERNAME_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 32
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "ORPHANED_USER_ACCOUNT"

    const/16 v2, 0x13

    const/16 v3, 0xcb

    const v4, 0x7f0800e0

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->ORPHANED_USER_ACCOUNT:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 33
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "DESCRIPTION_INVALID_LENGTH"

    const/16 v2, 0x14

    const/16 v3, 0xcd

    const v4, 0x7f0800e1

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->DESCRIPTION_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 34
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "TOO_MANY_MENTIONS"

    const/16 v2, 0x15

    const/16 v3, 0xce

    const v4, 0x7f0800e2

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->TOO_MANY_MENTIONS:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 35
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "DUPLICATE_MENTIONS"

    const/16 v2, 0x16

    const/16 v3, 0xcf

    const v4, 0x7f0800e3

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->DUPLICATE_MENTIONS:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 36
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "USER_DESCRIPTION_INVALID_LENGTH"

    const/16 v2, 0x17

    const/16 v3, 0xd0

    const v4, 0x7f0800e4

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->USER_DESCRIPTION_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 37
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "PASSWORD_INVALID"

    const/16 v2, 0x18

    const/16 v3, 0xd2

    const v4, 0x7f0800e5

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->PASSWORD_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 38
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "PHONE_INVALID"

    const/16 v2, 0x19

    const/16 v3, 0xd3

    const v4, 0x7f0800e6

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->PHONE_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 39
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "LOCATION_INVALID_LENGTH"

    const/16 v2, 0x1a

    const/16 v3, 0xd4

    const v4, 0x7f0800e7

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->LOCATION_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 40
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "EMAIL_IN_USE"

    const/16 v2, 0x1b

    const/16 v3, 0xdc

    const v4, 0x7f0800e8

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->EMAIL_IN_USE:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 41
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "EMAIL_INVALID"

    const/16 v2, 0x1c

    const/16 v3, 0xdd

    const v4, 0x7f0800e9

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->EMAIL_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 42
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "TWITTER_NAME_IN_USE"

    const/16 v2, 0x1d

    const/16 v3, 0xde

    const v4, 0x7f0800ea

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->TWITTER_NAME_IN_USE:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 43
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "TWITTER_WRONG_ACCOUNT"

    const/16 v2, 0x1e

    const/16 v3, 0xdf

    const v4, 0x7f0800eb

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->TWITTER_WRONG_ACCOUNT:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 44
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "PASSWORD_RESET_TOKEN_EXPIRED"

    const/16 v2, 0x1f

    const/16 v3, 0xe1

    const v4, 0x7f0800ec

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->PASSWORD_RESET_TOKEN_EXPIRED:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 45
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "CANT_FOLLOW_SELF"

    const/16 v2, 0x20

    const/16 v3, 0xfa

    const v4, 0x7f0800ed

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->CANT_FOLLOW_SELF:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 46
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "CANT_FLAG_SELF"

    const/16 v2, 0x21

    const/16 v3, 0xfb

    const v4, 0x7f0800ee

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->CANT_FLAG_SELF:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 47
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "FSQUARE_VENUE_INVALID"

    const/16 v2, 0x22

    const/16 v3, 0x12d

    const v4, 0x7f0800ef

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->FSQUARE_VENUE_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 48
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "VIDEOURL_INVALID"

    const/16 v2, 0x23

    const/16 v3, 0x12e

    const v4, 0x7f0800f0

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->VIDEOURL_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 49
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "COMMENT_INVALID_LENGTH"

    const/16 v2, 0x24

    const/16 v3, 0x12f

    const v4, 0x7f0800f1

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->COMMENT_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 50
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "AVATAR_INVALID"

    const/16 v2, 0x25

    const/16 v3, 0x130

    const v4, 0x7f0800f2

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->AVATAR_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 51
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "RELATIONSHIP_REQUIRES_ACTION"

    const/16 v2, 0x26

    const/16 v3, 0x190

    const v4, 0x7f0800f3

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->RELATIONSHIP_REQUIRES_ACTION:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 52
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "NOTIFICATION_REFERENCES_SELF"

    const/16 v2, 0x27

    const/16 v3, 0x1f4

    const v4, 0x7f0800f4

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->NOTIFICATION_REFERENCES_SELF:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 53
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "RECORD_DOES_NOT_EXIST"

    const/16 v2, 0x28

    const/16 v3, 0x384

    const v4, 0x7f0800f5

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->RECORD_DOES_NOT_EXIST:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 54
    new-instance v0, Lco/vine/android/api/VineError$VineKnownErrors;

    const-string v1, "NO_ARGUMENTS_PROVIDED"

    const/16 v2, 0x29

    const/16 v3, 0x385

    const v4, 0x7f0800f6

    invoke-direct {v0, v1, v2, v3, v4}, Lco/vine/android/api/VineError$VineKnownErrors;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->NO_ARGUMENTS_PROVIDED:Lco/vine/android/api/VineError$VineKnownErrors;

    .line 12
    const/16 v0, 0x2a

    new-array v0, v0, [Lco/vine/android/api/VineError$VineKnownErrors;

    sget-object v1, Lco/vine/android/api/VineError$VineKnownErrors;->INVALID_ERROR_CODE:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v1, v0, v5

    sget-object v1, Lco/vine/android/api/VineError$VineKnownErrors;->UNKNOWN_ERROR:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v1, v0, v6

    const/4 v1, 0x2

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->UNSUPPORTED_METHOD:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    sget-object v1, Lco/vine/android/api/VineError$VineKnownErrors;->MISSING_REQUIRED_FIELD:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v1, v0, v7

    sget-object v1, Lco/vine/android/api/VineError$VineKnownErrors;->ACCESS_DENIED:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v1, v0, v8

    sget-object v1, Lco/vine/android/api/VineError$VineKnownErrors;->INVALID_ARGUMENT:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->NON_INTEGER_VALUE:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->REQUIRES_LOGIN:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->BAD_CREDENTIALS:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->EXPIRED_SESSION:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->INVALID_SESSION:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->FACEBOOK_NOT_AUTHORIZED:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->TWITTER_NOT_AUTHORIZED:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->ADDRESS_BOOK_NOT_FOUND:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->FACEBOOK_FF_DISABLED:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->REQUIRES_ADMIN_LOGIN:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->USERNAME_IN_USE:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->USERNAME_INVALID_CHARACTERS:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->USERNAME_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->ORPHANED_USER_ACCOUNT:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->DESCRIPTION_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->TOO_MANY_MENTIONS:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->DUPLICATE_MENTIONS:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->USER_DESCRIPTION_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->PASSWORD_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->PHONE_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->LOCATION_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->EMAIL_IN_USE:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->EMAIL_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->TWITTER_NAME_IN_USE:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->TWITTER_WRONG_ACCOUNT:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->PASSWORD_RESET_TOKEN_EXPIRED:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->CANT_FOLLOW_SELF:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->CANT_FLAG_SELF:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->FSQUARE_VENUE_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->VIDEOURL_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->COMMENT_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->AVATAR_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->RELATIONSHIP_REQUIRES_ACTION:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->NOTIFICATION_REFERENCES_SELF:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->RECORD_DOES_NOT_EXIST:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lco/vine/android/api/VineError$VineKnownErrors;->NO_ARGUMENTS_PROVIDED:Lco/vine/android/api/VineError$VineKnownErrors;

    aput-object v2, v0, v1

    sput-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->$VALUES:[Lco/vine/android/api/VineError$VineKnownErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lco/vine/android/api/VineError$VineKnownErrors;->code:I

    .line 61
    iput p4, p0, Lco/vine/android/api/VineError$VineKnownErrors;->message:I

    .line 62
    return-void
.end method

.method public static valueOf(I)Lco/vine/android/api/VineError$VineKnownErrors;
    .locals 1
    .parameter "code"

    .prologue
    .line 73
    sparse-switch p0, :sswitch_data_0

    .line 157
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->INVALID_ERROR_CODE:Lco/vine/android/api/VineError$VineKnownErrors;

    :goto_0
    return-object v0

    .line 75
    :sswitch_0
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->UNKNOWN_ERROR:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 77
    :sswitch_1
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->UNSUPPORTED_METHOD:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 79
    :sswitch_2
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->MISSING_REQUIRED_FIELD:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 81
    :sswitch_3
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->ACCESS_DENIED:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 83
    :sswitch_4
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->INVALID_ARGUMENT:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 85
    :sswitch_5
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->NON_INTEGER_VALUE:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 87
    :sswitch_6
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->REQUIRES_LOGIN:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 89
    :sswitch_7
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->BAD_CREDENTIALS:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 91
    :sswitch_8
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->EXPIRED_SESSION:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 93
    :sswitch_9
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->INVALID_SESSION:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 95
    :sswitch_a
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->FACEBOOK_NOT_AUTHORIZED:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 97
    :sswitch_b
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->TWITTER_NOT_AUTHORIZED:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 99
    :sswitch_c
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->ADDRESS_BOOK_NOT_FOUND:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 101
    :sswitch_d
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->FACEBOOK_FF_DISABLED:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 103
    :sswitch_e
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->REQUIRES_ADMIN_LOGIN:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 105
    :sswitch_f
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->USERNAME_IN_USE:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 107
    :sswitch_10
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->USERNAME_INVALID_CHARACTERS:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 109
    :sswitch_11
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->USERNAME_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 111
    :sswitch_12
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->ORPHANED_USER_ACCOUNT:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 113
    :sswitch_13
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->DESCRIPTION_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 115
    :sswitch_14
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->TOO_MANY_MENTIONS:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 117
    :sswitch_15
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->DUPLICATE_MENTIONS:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 119
    :sswitch_16
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->USER_DESCRIPTION_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 121
    :sswitch_17
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->PASSWORD_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 123
    :sswitch_18
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->PHONE_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 125
    :sswitch_19
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->LOCATION_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 127
    :sswitch_1a
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->EMAIL_IN_USE:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 129
    :sswitch_1b
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->EMAIL_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 131
    :sswitch_1c
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->TWITTER_NAME_IN_USE:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 133
    :sswitch_1d
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->TWITTER_WRONG_ACCOUNT:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 135
    :sswitch_1e
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->PASSWORD_RESET_TOKEN_EXPIRED:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 137
    :sswitch_1f
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->CANT_FOLLOW_SELF:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 139
    :sswitch_20
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->CANT_FLAG_SELF:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 141
    :sswitch_21
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->FSQUARE_VENUE_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 143
    :sswitch_22
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->VIDEOURL_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 145
    :sswitch_23
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->COMMENT_INVALID_LENGTH:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 147
    :sswitch_24
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->AVATAR_INVALID:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 149
    :sswitch_25
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->RELATIONSHIP_REQUIRES_ACTION:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 151
    :sswitch_26
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->NOTIFICATION_REFERENCES_SELF:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 153
    :sswitch_27
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->RECORD_DOES_NOT_EXIST:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 155
    :sswitch_28
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->NO_ARGUMENTS_PROVIDED:Lco/vine/android/api/VineError$VineKnownErrors;

    goto :goto_0

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x64 -> :sswitch_6
        0x65 -> :sswitch_7
        0x66 -> :sswitch_8
        0x67 -> :sswitch_9
        0x68 -> :sswitch_a
        0x69 -> :sswitch_b
        0x6a -> :sswitch_c
        0x6b -> :sswitch_d
        0x96 -> :sswitch_e
        0xc8 -> :sswitch_f
        0xc9 -> :sswitch_10
        0xca -> :sswitch_11
        0xcb -> :sswitch_12
        0xcd -> :sswitch_13
        0xce -> :sswitch_14
        0xcf -> :sswitch_15
        0xd0 -> :sswitch_16
        0xd2 -> :sswitch_17
        0xd3 -> :sswitch_18
        0xd4 -> :sswitch_19
        0xdc -> :sswitch_1a
        0xdd -> :sswitch_1b
        0xde -> :sswitch_1c
        0xdf -> :sswitch_1d
        0xe1 -> :sswitch_1e
        0xfa -> :sswitch_1f
        0xfb -> :sswitch_20
        0x12d -> :sswitch_21
        0x12e -> :sswitch_22
        0x12f -> :sswitch_23
        0x130 -> :sswitch_24
        0x190 -> :sswitch_25
        0x1f4 -> :sswitch_26
        0x384 -> :sswitch_27
        0x385 -> :sswitch_28
    .end sparse-switch
.end method

.method public static valueOf(Lco/vine/android/api/VineError;)Lco/vine/android/api/VineError$VineKnownErrors;
    .locals 1
    .parameter "error"

    .prologue
    .line 69
    iget v0, p0, Lco/vine/android/api/VineError;->errorCode:I

    invoke-static {v0}, Lco/vine/android/api/VineError$VineKnownErrors;->valueOf(I)Lco/vine/android/api/VineError$VineKnownErrors;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lco/vine/android/api/VineError$VineKnownErrors;
    .locals 1
    .parameter "name"

    .prologue
    .line 12
    const-class v0, Lco/vine/android/api/VineError$VineKnownErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineError$VineKnownErrors;

    return-object v0
.end method

.method public static values()[Lco/vine/android/api/VineError$VineKnownErrors;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lco/vine/android/api/VineError$VineKnownErrors;->$VALUES:[Lco/vine/android/api/VineError$VineKnownErrors;

    invoke-virtual {v0}, [Lco/vine/android/api/VineError$VineKnownErrors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/vine/android/api/VineError$VineKnownErrors;

    return-object v0
.end method


# virtual methods
.method public getMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    iget v0, p0, Lco/vine/android/api/VineError$VineKnownErrors;->message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
