.class public final Landroidx/core/os/BundleKt;
.super Ljava/lang/Object;
.source "Bundle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a;\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00040\u0003\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "bundleOf",
        "Landroid/os/Bundle;",
        "pairs",
        "",
        "Lkotlin/Pair;",
        "",
        "",
        "([Lkotlin/Pair;)Landroid/os/Bundle;",
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
.method public static final bundleOf()Landroid/os/Bundle;
    .registers 2

    #@0
    .line 112
    new-instance v0, Landroid/os/Bundle;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    #@6
    return-object v0
.end method

.method public static final varargs bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    #@0
    const-string v0, "pairs"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    .line 34
    new-instance v0, Landroid/os/Bundle;

    #@7
    array-length v1, p0

    #@8
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    #@b
    .line 35
    array-length v1, p0

    #@c
    const/4 v2, 0x0

    #@d
    :goto_d
    if-ge v2, v1, :cond_1e9

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
    if-nez v3, :cond_23

    #@1d
    const/4 v3, 0x0

    #@1e
    .line 37
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    goto/16 :goto_1bc

    #@23
    .line 40
    :cond_23
    instance-of v5, v3, Ljava/lang/Boolean;

    #@25
    if-eqz v5, :cond_32

    #@27
    check-cast v3, Ljava/lang/Boolean;

    #@29
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@2c
    move-result v3

    #@2d
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@30
    goto/16 :goto_1bc

    #@32
    .line 41
    :cond_32
    instance-of v5, v3, Ljava/lang/Byte;

    #@34
    if-eqz v5, :cond_41

    #@36
    check-cast v3, Ljava/lang/Number;

    #@38
    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    #@3b
    move-result v3

    #@3c
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    #@3f
    goto/16 :goto_1bc

    #@41
    .line 42
    :cond_41
    instance-of v5, v3, Ljava/lang/Character;

    #@43
    if-eqz v5, :cond_50

    #@45
    check-cast v3, Ljava/lang/Character;

    #@47
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    #@4a
    move-result v3

    #@4b
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    #@4e
    goto/16 :goto_1bc

    #@50
    .line 43
    :cond_50
    instance-of v5, v3, Ljava/lang/Double;

    #@52
    if-eqz v5, :cond_5f

    #@54
    check-cast v3, Ljava/lang/Number;

    #@56
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    #@59
    move-result-wide v5

    #@5a
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    #@5d
    goto/16 :goto_1bc

    #@5f
    .line 44
    :cond_5f
    instance-of v5, v3, Ljava/lang/Float;

    #@61
    if-eqz v5, :cond_6e

    #@63
    check-cast v3, Ljava/lang/Number;

    #@65
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    #@68
    move-result v3

    #@69
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@6c
    goto/16 :goto_1bc

    #@6e
    .line 45
    :cond_6e
    instance-of v5, v3, Ljava/lang/Integer;

    #@70
    if-eqz v5, :cond_7d

    #@72
    check-cast v3, Ljava/lang/Number;

    #@74
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    #@77
    move-result v3

    #@78
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@7b
    goto/16 :goto_1bc

    #@7d
    .line 46
    :cond_7d
    instance-of v5, v3, Ljava/lang/Long;

    #@7f
    if-eqz v5, :cond_8c

    #@81
    check-cast v3, Ljava/lang/Number;

    #@83
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    #@86
    move-result-wide v5

    #@87
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@8a
    goto/16 :goto_1bc

    #@8c
    .line 47
    :cond_8c
    instance-of v5, v3, Ljava/lang/Short;

    #@8e
    if-eqz v5, :cond_9b

    #@90
    check-cast v3, Ljava/lang/Number;

    #@92
    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    #@95
    move-result v3

    #@96
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    #@99
    goto/16 :goto_1bc

    #@9b
    .line 50
    :cond_9b
    instance-of v5, v3, Landroid/os/Bundle;

    #@9d
    if-eqz v5, :cond_a6

    #@9f
    check-cast v3, Landroid/os/Bundle;

    #@a1
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@a4
    goto/16 :goto_1bc

    #@a6
    .line 51
    :cond_a6
    instance-of v5, v3, Ljava/lang/CharSequence;

    #@a8
    if-eqz v5, :cond_b1

    #@aa
    check-cast v3, Ljava/lang/CharSequence;

    #@ac
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@af
    goto/16 :goto_1bc

    #@b1
    .line 52
    :cond_b1
    instance-of v5, v3, Landroid/os/Parcelable;

    #@b3
    if-eqz v5, :cond_bc

    #@b5
    check-cast v3, Landroid/os/Parcelable;

    #@b7
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@ba
    goto/16 :goto_1bc

    #@bc
    .line 55
    :cond_bc
    instance-of v5, v3, [Z

    #@be
    if-eqz v5, :cond_c7

    #@c0
    check-cast v3, [Z

    #@c2
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    #@c5
    goto/16 :goto_1bc

    #@c7
    .line 56
    :cond_c7
    instance-of v5, v3, [B

    #@c9
    if-eqz v5, :cond_d2

    #@cb
    check-cast v3, [B

    #@cd
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@d0
    goto/16 :goto_1bc

    #@d2
    .line 57
    :cond_d2
    instance-of v5, v3, [C

    #@d4
    if-eqz v5, :cond_dd

    #@d6
    check-cast v3, [C

    #@d8
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    #@db
    goto/16 :goto_1bc

    #@dd
    .line 58
    :cond_dd
    instance-of v5, v3, [D

    #@df
    if-eqz v5, :cond_e8

    #@e1
    check-cast v3, [D

    #@e3
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    #@e6
    goto/16 :goto_1bc

    #@e8
    .line 59
    :cond_e8
    instance-of v5, v3, [F

    #@ea
    if-eqz v5, :cond_f3

    #@ec
    check-cast v3, [F

    #@ee
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    #@f1
    goto/16 :goto_1bc

    #@f3
    .line 60
    :cond_f3
    instance-of v5, v3, [I

    #@f5
    if-eqz v5, :cond_fe

    #@f7
    check-cast v3, [I

    #@f9
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    #@fc
    goto/16 :goto_1bc

    #@fe
    .line 61
    :cond_fe
    instance-of v5, v3, [J

    #@100
    if-eqz v5, :cond_109

    #@102
    check-cast v3, [J

    #@104
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    #@107
    goto/16 :goto_1bc

    #@109
    .line 62
    :cond_109
    instance-of v5, v3, [S

    #@10b
    if-eqz v5, :cond_114

    #@10d
    check-cast v3, [S

    #@10f
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    #@112
    goto/16 :goto_1bc

    #@114
    .line 65
    :cond_114
    instance-of v5, v3, [Ljava/lang/Object;

    #@116
    const/16 v6, 0x22

    #@118
    const-string v7, " for key \""

    #@11a
    if-eqz v5, :cond_195

    #@11c
    .line 66
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11f
    move-result-object v5

    #@120
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@123
    move-result-object v5

    #@124
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@127
    .line 68
    const-class v8, Landroid/os/Parcelable;

    #@129
    .line 69
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@12c
    move-result v8

    #@12d
    if-eqz v8, :cond_13b

    #@12f
    const-string v5, "null cannot be cast to non-null type kotlin.Array<android.os.Parcelable>"

    #@131
    .line 70
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@134
    check-cast v3, [Landroid/os/Parcelable;

    #@136
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@139
    goto/16 :goto_1bc

    #@13b
    :cond_13b
    const-class v8, Ljava/lang/String;

    #@13d
    .line 72
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@140
    move-result v8

    #@141
    if-eqz v8, :cond_14f

    #@143
    const-string v5, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    #@145
    .line 73
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@148
    check-cast v3, [Ljava/lang/String;

    #@14a
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@14d
    goto/16 :goto_1bc

    #@14f
    :cond_14f
    const-class v8, Ljava/lang/CharSequence;

    #@151
    .line 75
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@154
    move-result v8

    #@155
    if-eqz v8, :cond_162

    #@157
    const-string v5, "null cannot be cast to non-null type kotlin.Array<kotlin.CharSequence>"

    #@159
    .line 76
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@15c
    check-cast v3, [Ljava/lang/CharSequence;

    #@15e
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    #@161
    goto :goto_1bc

    #@162
    :cond_162
    const-class v8, Ljava/io/Serializable;

    #@164
    .line 78
    invoke-virtual {v8, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@167
    move-result v8

    #@168
    if-eqz v8, :cond_170

    #@16a
    .line 79
    check-cast v3, Ljava/io/Serializable;

    #@16c
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    #@16f
    goto :goto_1bc

    #@170
    .line 82
    :cond_170
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@173
    move-result-object p0

    #@174
    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@176
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    #@178
    const-string v2, "Illegal value array type "

    #@17a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object p0

    #@181
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object p0

    #@185
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object p0

    #@189
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18c
    move-result-object p0

    #@18d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@190
    move-result-object p0

    #@191
    .line 83
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@194
    throw v0

    #@195
    .line 91
    :cond_195
    instance-of v5, v3, Ljava/io/Serializable;

    #@197
    if-eqz v5, :cond_19f

    #@199
    check-cast v3, Ljava/io/Serializable;

    #@19b
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    #@19e
    goto :goto_1bc

    #@19f
    .line 94
    :cond_19f
    instance-of v5, v3, Landroid/os/IBinder;

    #@1a1
    if-eqz v5, :cond_1a9

    #@1a3
    .line 95
    check-cast v3, Landroid/os/IBinder;

    #@1a5
    invoke-static {v0, v4, v3}, Landroidx/core/os/BundleApi18ImplKt;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    #@1a8
    goto :goto_1bc

    #@1a9
    .line 96
    :cond_1a9
    instance-of v5, v3, Landroid/util/Size;

    #@1ab
    if-eqz v5, :cond_1b3

    #@1ad
    .line 97
    check-cast v3, Landroid/util/Size;

    #@1af
    invoke-static {v0, v4, v3}, Landroidx/core/os/BundleApi21ImplKt;->putSize(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/Size;)V

    #@1b2
    goto :goto_1bc

    #@1b3
    .line 98
    :cond_1b3
    instance-of v5, v3, Landroid/util/SizeF;

    #@1b5
    if-eqz v5, :cond_1c0

    #@1b7
    .line 99
    check-cast v3, Landroid/util/SizeF;

    #@1b9
    invoke-static {v0, v4, v3}, Landroidx/core/os/BundleApi21ImplKt;->putSizeF(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/SizeF;)V

    #@1bc
    :goto_1bc
    add-int/lit8 v2, v2, 0x1

    #@1be
    goto/16 :goto_d

    #@1c0
    .line 101
    :cond_1c0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1c3
    move-result-object p0

    #@1c4
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@1c7
    move-result-object p0

    #@1c8
    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1ca
    new-instance v1, Ljava/lang/StringBuilder;

    #@1cc
    const-string v2, "Illegal value type "

    #@1ce
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1d1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object p0

    #@1d5
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object p0

    #@1d9
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object p0

    #@1dd
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e0
    move-result-object p0

    #@1e1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e4
    move-result-object p0

    #@1e5
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e8
    throw v0

    #@1e9
    :cond_1e9
    return-object v0
.end method
