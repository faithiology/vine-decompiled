.class public Lco/vine/android/provider/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# static fields
.field private static final CURRENT_ACCOUNT_KEY:Ljava/lang/String; = "current_account"

.field private static final CURRENT_ACCOUNT_NAME:Ljava/lang/String; = "current_name"

.field private static final CURRENT_USER_ID_KEY:Ljava/lang/String; = "current_user_id"

.field private static final VALUE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lco/vine/android/provider/SettingsManager;->VALUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getCurrentAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 61
    const-string v0, "current_account"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lco/vine/android/provider/SettingsManager;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 65
    const-string v0, "current_name"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lco/vine/android/provider/SettingsManager;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUserId(Landroid/content/Context;)J
    .locals 3
    .parameter "context"

    .prologue
    .line 69
    const-string v0, "current_user_id"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lco/vine/android/provider/SettingsManager;->getValue(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized getValue(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 10
    .parameter "context"
    .parameter "propName"
    .parameter "defaultValue"

    .prologue
    .line 73
    const-class v9, Lco/vine/android/provider/SettingsManager;

    monitor-enter v9

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lco/vine/android/provider/Vine$Settings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lco/vine/android/provider/SettingsManager;->VALUE_PROJECTION:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 77
    .local v6, cursor:Landroid/database/Cursor;
    move-wide v7, p2

    .line 78
    .local v7, value:J
    if-eqz v6, :cond_1

    .line 79
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 82
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_1
    monitor-exit v9

    return-wide v7

    .line 73
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #value:J
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private static declared-synchronized getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "propName"
    .parameter "defaultValue"

    .prologue
    .line 96
    const-class v8, Lco/vine/android/provider/SettingsManager;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lco/vine/android/provider/Vine$Settings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lco/vine/android/provider/SettingsManager;->VALUE_PROJECTION:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 99
    .local v6, cursor:Landroid/database/Cursor;
    move-object v7, p2

    .line 100
    .local v7, value:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 101
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 104
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_1
    monitor-exit v8

    return-object v7

    .line 96
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #value:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static setCurrentAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter "context"
    .parameter "emailLogin"
    .parameter "name"
    .parameter "userId"

    .prologue
    .line 51
    const-string v0, "current_account"

    invoke-static {p0, v0, p1}, Lco/vine/android/provider/SettingsManager;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "current_user_id"

    invoke-static {p0, v0, p3, p4}, Lco/vine/android/provider/SettingsManager;->setValue(Landroid/content/Context;Ljava/lang/String;J)V

    .line 53
    const-string v0, "current_name"

    invoke-static {p0, v0, p2}, Lco/vine/android/provider/SettingsManager;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private static setValue(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3
    .parameter "context"
    .parameter "propName"
    .parameter "value"

    .prologue
    .line 123
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 124
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "value"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 125
    invoke-static {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lco/vine/android/provider/VineDatabaseHelper;->saveUserValue(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 126
    return-void
.end method

.method private static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "propName"
    .parameter "value"

    .prologue
    .line 117
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 118
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lco/vine/android/provider/VineDatabaseHelper;->saveUserValue(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 120
    return-void
.end method
