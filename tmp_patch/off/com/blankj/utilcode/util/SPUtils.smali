.class public final Lcom/blankj/utilcode/util/SPUtils;
.super Ljava/lang/Object;
.source "SPUtils.java"


# static fields
.field private static final SP_UTILS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/blankj/utilcode/util/SPUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 24
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Lcom/blankj/utilcode/util/SPUtils;->SP_UTILS_MAP:Ljava/util/Map;

    #@7
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4

    #@0
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, p1, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@b
    move-result-object p1

    #@c
    iput-object p1, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@e
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    #@0
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@a
    move-result-object p1

    #@b
    iput-object p1, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@d
    return-void
.end method

.method public static getInstance()Lcom/blankj/utilcode/util/SPUtils;
    .registers 2

    #@0
    const-string v0, ""

    #@2
    const/4 v1, 0x0

    #@3
    .line 34
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;I)Lcom/blankj/utilcode/util/SPUtils;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static getInstance(I)Lcom/blankj/utilcode/util/SPUtils;
    .registers 2

    #@0
    const-string v0, ""

    #@2
    .line 44
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;I)Lcom/blankj/utilcode/util/SPUtils;

    #@5
    move-result-object p0

    #@6
    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 54
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;I)Lcom/blankj/utilcode/util/SPUtils;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;I)Lcom/blankj/utilcode/util/SPUtils;
    .registers 5

    #@0
    .line 65
    invoke-static {p0}, Lcom/blankj/utilcode/util/SPUtils;->isSpace(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const-string p0, "spUtils"

    #@8
    .line 66
    :cond_8
    sget-object v0, Lcom/blankj/utilcode/util/SPUtils;->SP_UTILS_MAP:Ljava/util/Map;

    #@a
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/blankj/utilcode/util/SPUtils;

    #@10
    if-nez v1, :cond_2a

    #@12
    .line 68
    const-class v2, Lcom/blankj/utilcode/util/SPUtils;

    #@14
    monitor-enter v2

    #@15
    .line 69
    :try_start_15
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/blankj/utilcode/util/SPUtils;

    #@1b
    if-nez v1, :cond_25

    #@1d
    .line 71
    new-instance v1, Lcom/blankj/utilcode/util/SPUtils;

    #@1f
    invoke-direct {v1, p0, p1}, Lcom/blankj/utilcode/util/SPUtils;-><init>(Ljava/lang/String;I)V

    #@22
    .line 72
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 74
    :cond_25
    monitor-exit v2

    #@26
    goto :goto_2a

    #@27
    :catchall_27
    move-exception p0

    #@28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_27

    #@29
    throw p0

    #@2a
    :cond_2a
    :goto_2a
    return-object v1
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    .line 439
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    move v3, v2

    #@a
    :goto_a
    if-ge v3, v1, :cond_1a

    #@c
    .line 440
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v4

    #@10
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    #@13
    move-result v4

    #@14
    if-nez v4, :cond_17

    #@16
    return v2

    #@17
    :cond_17
    add-int/lit8 v3, v3, 0x1

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 420
    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/SPUtils;->clear(Z)V

    #@4
    return-void
.end method

.method public clear(Z)V
    .registers 2

    #@0
    if-eqz p1, :cond_10

    #@2
    .line 431
    iget-object p1, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@4
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@7
    move-result-object p1

    #@8
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object p1

    #@c
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@f
    goto :goto_1d

    #@10
    .line 433
    :cond_10
    iget-object p1, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@12
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@15
    move-result-object p1

    #@16
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    #@19
    move-result-object p1

    #@1a
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@1d
    :goto_1d
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 389
    iget-object v0, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@2
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getAll()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    #@0
    .line 379
    iget-object v0, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 308
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SPUtils;->getBoolean(Ljava/lang/String;Z)Z

    #@4
    move-result p1

    #@5
    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    #@0
    .line 319
    iget-object v0, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 3

    #@0
    const/high16 v0, -0x40800000    # -1.0f

    #@2
    .line 261
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SPUtils;->getFloat(Ljava/lang/String;F)F

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 4

    #@0
    .line 272
    iget-object v0, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    .line 167
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SPUtils;->getInt(Ljava/lang/String;I)I

    #@4
    move-result p1

    #@5
    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4

    #@0
    .line 178
    iget-object v0, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4

    #@0
    const-wide/16 v0, -0x1

    #@2
    .line 214
    invoke-virtual {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/SPUtils;->getLong(Ljava/lang/String;J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 5

    #@0
    .line 225
    iget-object v0, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@2
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    #@5
    move-result-wide p1

    #@6
    return-wide p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    const-string v0, ""

    #@2
    .line 120
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    .line 131
    iget-object v0, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 358
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SPUtils;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 370
    iget-object v0, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public put(Ljava/lang/String;F)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 235
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;FZ)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;FZ)V
    .registers 4

    #@0
    if-eqz p3, :cond_10

    #@2
    .line 248
    iget-object p3, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@4
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@7
    move-result-object p3

    #@8
    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object p1

    #@c
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@f
    goto :goto_1d

    #@10
    .line 250
    :cond_10
    iget-object p3, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@12
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@15
    move-result-object p3

    #@16
    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    #@19
    move-result-object p1

    #@1a
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@1d
    :goto_1d
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 141
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;IZ)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;IZ)V
    .registers 4

    #@0
    if-eqz p3, :cond_10

    #@2
    .line 154
    iget-object p3, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@4
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@7
    move-result-object p3

    #@8
    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object p1

    #@c
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@f
    goto :goto_1d

    #@10
    .line 156
    :cond_10
    iget-object p3, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@12
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@15
    move-result-object p3

    #@16
    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    #@19
    move-result-object p1

    #@1a
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@1d
    :goto_1d
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 188
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;JZ)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;JZ)V
    .registers 5

    #@0
    if-eqz p4, :cond_10

    #@2
    .line 201
    iget-object p4, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@4
    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@7
    move-result-object p4

    #@8
    invoke-interface {p4, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object p1

    #@c
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@f
    goto :goto_1d

    #@10
    .line 203
    :cond_10
    iget-object p4, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@12
    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@15
    move-result-object p4

    #@16
    invoke-interface {p4, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    #@19
    move-result-object p1

    #@1a
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@1d
    :goto_1d
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 94
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    #@0
    if-eqz p3, :cond_10

    #@2
    .line 107
    iget-object p3, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@4
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@7
    move-result-object p3

    #@8
    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object p1

    #@c
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@f
    goto :goto_1d

    #@10
    .line 109
    :cond_10
    iget-object p3, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@12
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@15
    move-result-object p3

    #@16
    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@19
    move-result-object p1

    #@1a
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@1d
    :goto_1d
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 329
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/util/Set;Z)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/Set;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    #@0
    if-eqz p3, :cond_10

    #@2
    .line 344
    iget-object p3, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@4
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@7
    move-result-object p3

    #@8
    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object p1

    #@c
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@f
    goto :goto_1d

    #@10
    .line 346
    :cond_10
    iget-object p3, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@12
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@15
    move-result-object p3

    #@16
    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    #@19
    move-result-object p1

    #@1a
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@1d
    :goto_1d
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 282
    invoke-virtual {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;ZZ)V

    #@4
    return-void
.end method

.method public put(Ljava/lang/String;ZZ)V
    .registers 4

    #@0
    if-eqz p3, :cond_10

    #@2
    .line 295
    iget-object p3, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@4
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@7
    move-result-object p3

    #@8
    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object p1

    #@c
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@f
    goto :goto_1d

    #@10
    .line 297
    :cond_10
    iget-object p3, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@12
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@15
    move-result-object p3

    #@16
    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    #@19
    move-result-object p1

    #@1a
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@1d
    :goto_1d
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 398
    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/SPUtils;->remove(Ljava/lang/String;Z)V

    #@4
    return-void
.end method

.method public remove(Ljava/lang/String;Z)V
    .registers 3

    #@0
    if-eqz p2, :cond_10

    #@2
    .line 410
    iget-object p2, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@4
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@7
    move-result-object p2

    #@8
    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@b
    move-result-object p1

    #@c
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@f
    goto :goto_1d

    #@10
    .line 412
    :cond_10
    iget-object p2, p0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    #@12
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@15
    move-result-object p2

    #@16
    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@19
    move-result-object p1

    #@1a
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    #@1d
    :goto_1d
    return-void
.end method
