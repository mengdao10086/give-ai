.class public final Landroidx/core/content/ContentValuesKt;
.super Ljava/lang/Object;
.source "ContentValues.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a;\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00040\u0003\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "contentValuesOf",
        "Landroid/content/ContentValues;",
        "pairs",
        "",
        "Lkotlin/Pair;",
        "",
        "",
        "([Lkotlin/Pair;)Landroid/content/ContentValues;",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final varargs contentValuesOf([Lkotlin/Pair;)Landroid/content/ContentValues;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    #@0
    const-string v0, "pairs"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 28
    new-instance v0, Landroid/content/ContentValues;

    #@7
    array-length v1, p0

    #@8
    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    #@b
    .line 29
    array-length v1, p0

    #@c
    const/4 v2, 0x0

    #@d
    :goto_d
    if-ge v2, v1, :cond_aa

    #@f
    aget-object v3, p0, v2

    #@11
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Ljava/lang/String;

    #@17
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    if-nez v3, :cond_21

    #@1d
    .line 31
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    #@20
    goto :goto_7a

    #@21
    .line 32
    :cond_21
    instance-of v5, v3, Ljava/lang/String;

    #@23
    if-eqz v5, :cond_2b

    #@25
    check-cast v3, Ljava/lang/String;

    #@27
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    goto :goto_7a

    #@2b
    .line 33
    :cond_2b
    instance-of v5, v3, Ljava/lang/Integer;

    #@2d
    if-eqz v5, :cond_35

    #@2f
    check-cast v3, Ljava/lang/Integer;

    #@31
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@34
    goto :goto_7a

    #@35
    .line 34
    :cond_35
    instance-of v5, v3, Ljava/lang/Long;

    #@37
    if-eqz v5, :cond_3f

    #@39
    check-cast v3, Ljava/lang/Long;

    #@3b
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@3e
    goto :goto_7a

    #@3f
    .line 35
    :cond_3f
    instance-of v5, v3, Ljava/lang/Boolean;

    #@41
    if-eqz v5, :cond_49

    #@43
    check-cast v3, Ljava/lang/Boolean;

    #@45
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@48
    goto :goto_7a

    #@49
    .line 36
    :cond_49
    instance-of v5, v3, Ljava/lang/Float;

    #@4b
    if-eqz v5, :cond_53

    #@4d
    check-cast v3, Ljava/lang/Float;

    #@4f
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    #@52
    goto :goto_7a

    #@53
    .line 37
    :cond_53
    instance-of v5, v3, Ljava/lang/Double;

    #@55
    if-eqz v5, :cond_5d

    #@57
    check-cast v3, Ljava/lang/Double;

    #@59
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    #@5c
    goto :goto_7a

    #@5d
    .line 38
    :cond_5d
    instance-of v5, v3, [B

    #@5f
    if-eqz v5, :cond_67

    #@61
    check-cast v3, [B

    #@63
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    #@66
    goto :goto_7a

    #@67
    .line 39
    :cond_67
    instance-of v5, v3, Ljava/lang/Byte;

    #@69
    if-eqz v5, :cond_71

    #@6b
    check-cast v3, Ljava/lang/Byte;

    #@6d
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    #@70
    goto :goto_7a

    #@71
    .line 40
    :cond_71
    instance-of v5, v3, Ljava/lang/Short;

    #@73
    if-eqz v5, :cond_7d

    #@75
    check-cast v3, Ljava/lang/Short;

    #@77
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    #@7a
    :goto_7a
    add-int/lit8 v2, v2, 0x1

    #@7c
    goto :goto_d

    #@7d
    .line 42
    :cond_7d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@80
    move-result-object p0

    #@81
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@84
    move-result-object p0

    #@85
    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@87
    new-instance v1, Ljava/lang/StringBuilder;

    #@89
    const-string v2, "Illegal value type "

    #@8b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object p0

    #@92
    const-string v1, " for key \""

    #@94
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object p0

    #@98
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object p0

    #@9c
    const/16 v1, 0x22

    #@9e
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a1
    move-result-object p0

    #@a2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object p0

    #@a6
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v0

    #@aa
    :cond_aa
    return-object v0
.end method
