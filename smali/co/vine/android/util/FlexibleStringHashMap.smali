.class public Lco/vine/android/util/FlexibleStringHashMap;
.super Ljava/util/HashMap;
.source "FlexibleStringHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x13232fbdd9f1a94dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, this:Lco/vine/android/util/FlexibleStringHashMap;,"Lco/vine/android/util/FlexibleStringHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, this:Lco/vine/android/util/FlexibleStringHashMap;,"Lco/vine/android/util/FlexibleStringHashMap<TK;TV;>;"
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 18
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, result:Ljava/lang/Object;,"TV;"
    if-eqz v2, :cond_0

    .line 30
    .end local v2           #result:Ljava/lang/Object;,"TV;"
    :goto_0
    return-object v2

    .line 22
    .restart local v2       #result:Ljava/lang/Object;,"TV;"
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/util/FlexibleStringHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, k:Ljava/lang/String;
    move-object v3, p1

    .line 23
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 24
    invoke-super {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 28
    .end local v1           #k:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 30
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #result:Ljava/lang/Object;,"TV;"
    :cond_3
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
