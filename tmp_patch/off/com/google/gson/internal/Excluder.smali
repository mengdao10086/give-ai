.class public final Lcom/google/gson/internal/Excluder;
.super Ljava/lang/Object;
.source "Excluder.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/google/gson/internal/Excluder;

.field private static final IGNORE_VERSIONS:D = -1.0


# instance fields
.field private deserializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private modifiers:I

.field private requireExpose:Z

.field private serializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private serializeInnerClasses:Z

.field private version:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 52
    new-instance v0, Lcom/google/gson/internal/Excluder;

    #@2
    invoke-direct {v0}, Lcom/google/gson/internal/Excluder;-><init>()V

    #@5
    sput-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    #@5
    .line 54
    iput-wide v0, p0, Lcom/google/gson/internal/Excluder;->version:D

    #@7
    const/16 v0, 0x88

    #@9
    .line 55
    iput v0, p0, Lcom/google/gson/internal/Excluder;->modifiers:I

    #@b
    const/4 v0, 0x1

    #@c
    .line 56
    iput-boolean v0, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    #@e
    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    #@14
    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    #@1a
    return-void
.end method

.method private excludeClassChecks(Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 194
    iget-wide v0, p0, Lcom/google/gson/internal/Excluder;->version:D

    #@2
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    #@4
    cmpl-double v0, v0, v2

    #@6
    const/4 v1, 0x1

    #@7
    if-eqz v0, :cond_20

    #@9
    const-class v0, Lcom/google/gson/annotations/Since;

    #@b
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/google/gson/annotations/Since;

    #@11
    const-class v2, Lcom/google/gson/annotations/Until;

    #@13
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/google/gson/annotations/Until;

    #@19
    invoke-direct {p0, v0, v2}, Lcom/google/gson/internal/Excluder;->isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_20

    #@1f
    return v1

    #@20
    .line 198
    :cond_20
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    #@22
    if-nez v0, :cond_2b

    #@24
    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->isInnerClass(Ljava/lang/Class;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_2b

    #@2a
    return v1

    #@2b
    .line 202
    :cond_2b
    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    #@2e
    move-result p1

    #@2f
    if-eqz p1, :cond_32

    #@31
    return v1

    #@32
    :cond_32
    const/4 p1, 0x0

    #@33
    return p1
.end method

.method private excludeClassInStrategy(Ljava/lang/Class;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    #@0
    if-eqz p2, :cond_5

    #@2
    .line 215
    iget-object p2, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    #@4
    goto :goto_7

    #@5
    :cond_5
    iget-object p2, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    #@7
    .line 216
    :goto_7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object p2

    #@b
    :cond_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1f

    #@11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/google/gson/ExclusionStrategy;

    #@17
    .line 217
    invoke-interface {v0, p1}, Lcom/google/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_b

    #@1d
    const/4 p1, 0x1

    #@1e
    return p1

    #@1f
    :cond_1f
    const/4 p1, 0x0

    #@20
    return p1
.end method

.method private isAnonymousOrLocal(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 225
    const-class v0, Ljava/lang/Enum;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_16

    #@8
    .line 226
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_14

    #@e
    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    #@11
    move-result p1

    #@12
    if-eqz p1, :cond_16

    #@14
    :cond_14
    const/4 p1, 0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 p1, 0x0

    #@17
    :goto_17
    return p1
.end method

.method private isInnerClass(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 230
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->isStatic(Ljava/lang/Class;)Z

    #@9
    move-result p1

    #@a
    if-nez p1, :cond_e

    #@c
    const/4 p1, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    :goto_f
    return p1
.end method

.method private isStatic(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    #@0
    .line 234
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    #@3
    move-result p1

    #@4
    and-int/lit8 p1, p1, 0x8

    #@6
    if-eqz p1, :cond_a

    #@8
    const/4 p1, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p1, 0x0

    #@b
    :goto_b
    return p1
.end method

.method private isValidSince(Lcom/google/gson/annotations/Since;)Z
    .registers 6

    #@0
    if-eqz p1, :cond_e

    #@2
    .line 243
    invoke-interface {p1}, Lcom/google/gson/annotations/Since;->value()D

    #@5
    move-result-wide v0

    #@6
    .line 244
    iget-wide v2, p0, Lcom/google/gson/internal/Excluder;->version:D

    #@8
    cmpl-double p1, v0, v2

    #@a
    if-lez p1, :cond_e

    #@c
    const/4 p1, 0x0

    #@d
    return p1

    #@e
    :cond_e
    const/4 p1, 0x1

    #@f
    return p1
.end method

.method private isValidUntil(Lcom/google/gson/annotations/Until;)Z
    .registers 6

    #@0
    if-eqz p1, :cond_e

    #@2
    .line 253
    invoke-interface {p1}, Lcom/google/gson/annotations/Until;->value()D

    #@5
    move-result-wide v0

    #@6
    .line 254
    iget-wide v2, p0, Lcom/google/gson/internal/Excluder;->version:D

    #@8
    cmpg-double p1, v0, v2

    #@a
    if-gtz p1, :cond_e

    #@c
    const/4 p1, 0x0

    #@d
    return p1

    #@e
    :cond_e
    const/4 p1, 0x1

    #@f
    return p1
.end method

.method private isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z
    .registers 3

    #@0
    .line 238
    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->isValidSince(Lcom/google/gson/annotations/Since;)Z

    #@3
    move-result p1

    #@4
    if-eqz p1, :cond_e

    #@6
    invoke-direct {p0, p2}, Lcom/google/gson/internal/Excluder;->isValidUntil(Lcom/google/gson/annotations/Until;)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_e

    #@c
    const/4 p1, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    :goto_f
    return p1
.end method


# virtual methods
.method protected clone()Lcom/google/gson/internal/Excluder;
    .registers 3

    #@0
    .line 63
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/gson/internal/Excluder;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    #@6
    return-object v0

    #@7
    :catch_7
    move-exception v0

    #@8
    .line 65
    new-instance v1, Ljava/lang/AssertionError;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@d
    throw v1
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .line 50
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 112
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 113
    invoke-direct {p0, v0}, Lcom/google/gson/internal/Excluder;->excludeClassChecks(Ljava/lang/Class;)Z

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v3, 0x1

    #@a
    if-nez v1, :cond_15

    #@c
    .line 115
    invoke-direct {p0, v0, v3}, Lcom/google/gson/internal/Excluder;->excludeClassInStrategy(Ljava/lang/Class;Z)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_13

    #@12
    goto :goto_15

    #@13
    :cond_13
    move v8, v2

    #@14
    goto :goto_16

    #@15
    :cond_15
    :goto_15
    move v8, v3

    #@16
    :goto_16
    if-nez v1, :cond_21

    #@18
    .line 116
    invoke-direct {p0, v0, v2}, Lcom/google/gson/internal/Excluder;->excludeClassInStrategy(Ljava/lang/Class;Z)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1f

    #@1e
    goto :goto_21

    #@1f
    :cond_1f
    move v7, v2

    #@20
    goto :goto_22

    #@21
    :cond_21
    :goto_21
    move v7, v3

    #@22
    :goto_22
    if-nez v8, :cond_28

    #@24
    if-nez v7, :cond_28

    #@26
    const/4 p1, 0x0

    #@27
    return-object p1

    #@28
    .line 122
    :cond_28
    new-instance v0, Lcom/google/gson/internal/Excluder$1;

    #@2a
    move-object v5, v0

    #@2b
    move-object v6, p0

    #@2c
    move-object v9, p1

    #@2d
    move-object v10, p2

    #@2e
    invoke-direct/range {v5 .. v10}, Lcom/google/gson/internal/Excluder$1;-><init>(Lcom/google/gson/internal/Excluder;ZZLcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)V

    #@31
    return-object v0
.end method

.method public disableInnerClassSerialization()Lcom/google/gson/internal/Excluder;
    .registers 3

    #@0
    .line 85
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    .line 86
    iput-boolean v1, v0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    #@7
    return-object v0
.end method

.method public excludeClass(Ljava/lang/Class;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    #@0
    .line 210
    invoke-direct {p0, p1}, Lcom/google/gson/internal/Excluder;->excludeClassChecks(Ljava/lang/Class;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_f

    #@6
    .line 211
    invoke-direct {p0, p1, p2}, Lcom/google/gson/internal/Excluder;->excludeClassInStrategy(Ljava/lang/Class;Z)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    goto :goto_10

    #@f
    :cond_f
    :goto_f
    const/4 p1, 0x1

    #@10
    :goto_10
    return p1
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .registers 9

    #@0
    .line 152
    iget v0, p0, Lcom/google/gson/internal/Excluder;->modifiers:I

    #@2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    #@5
    move-result v1

    #@6
    and-int/2addr v0, v1

    #@7
    const/4 v1, 0x1

    #@8
    if-eqz v0, :cond_b

    #@a
    return v1

    #@b
    .line 156
    :cond_b
    iget-wide v2, p0, Lcom/google/gson/internal/Excluder;->version:D

    #@d
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    #@f
    cmpl-double v0, v2, v4

    #@11
    if-eqz v0, :cond_2a

    #@13
    const-class v0, Lcom/google/gson/annotations/Since;

    #@15
    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/google/gson/annotations/Since;

    #@1b
    const-class v2, Lcom/google/gson/annotations/Until;

    #@1d
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/google/gson/annotations/Until;

    #@23
    invoke-direct {p0, v0, v2}, Lcom/google/gson/internal/Excluder;->isValidVersion(Lcom/google/gson/annotations/Since;Lcom/google/gson/annotations/Until;)Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_2a

    #@29
    return v1

    #@2a
    .line 161
    :cond_2a
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_31

    #@30
    return v1

    #@31
    .line 165
    :cond_31
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder;->requireExpose:Z

    #@33
    if-eqz v0, :cond_4f

    #@35
    .line 166
    const-class v0, Lcom/google/gson/annotations/Expose;

    #@37
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Lcom/google/gson/annotations/Expose;

    #@3d
    if-eqz v0, :cond_4e

    #@3f
    if-eqz p2, :cond_48

    #@41
    .line 167
    invoke-interface {v0}, Lcom/google/gson/annotations/Expose;->serialize()Z

    #@44
    move-result v0

    #@45
    if-nez v0, :cond_4f

    #@47
    goto :goto_4e

    #@48
    :cond_48
    invoke-interface {v0}, Lcom/google/gson/annotations/Expose;->deserialize()Z

    #@4b
    move-result v0

    #@4c
    if-nez v0, :cond_4f

    #@4e
    :cond_4e
    :goto_4e
    return v1

    #@4f
    .line 172
    :cond_4f
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder;->serializeInnerClasses:Z

    #@51
    if-nez v0, :cond_5e

    #@53
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@56
    move-result-object v0

    #@57
    invoke-direct {p0, v0}, Lcom/google/gson/internal/Excluder;->isInnerClass(Ljava/lang/Class;)Z

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_5e

    #@5d
    return v1

    #@5e
    .line 176
    :cond_5e
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@61
    move-result-object v0

    #@62
    invoke-direct {p0, v0}, Lcom/google/gson/internal/Excluder;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    #@65
    move-result v0

    #@66
    if-eqz v0, :cond_69

    #@68
    return v1

    #@69
    :cond_69
    if-eqz p2, :cond_6e

    #@6b
    .line 180
    iget-object p2, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    #@6d
    goto :goto_70

    #@6e
    :cond_6e
    iget-object p2, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    #@70
    .line 181
    :goto_70
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    #@73
    move-result v0

    #@74
    if-nez v0, :cond_92

    #@76
    .line 182
    new-instance v0, Lcom/google/gson/FieldAttributes;

    #@78
    invoke-direct {v0, p1}, Lcom/google/gson/FieldAttributes;-><init>(Ljava/lang/reflect/Field;)V

    #@7b
    .line 183
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@7e
    move-result-object p1

    #@7f
    :cond_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@82
    move-result p2

    #@83
    if-eqz p2, :cond_92

    #@85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@88
    move-result-object p2

    #@89
    check-cast p2, Lcom/google/gson/ExclusionStrategy;

    #@8b
    .line 184
    invoke-interface {p2, v0}, Lcom/google/gson/ExclusionStrategy;->shouldSkipField(Lcom/google/gson/FieldAttributes;)Z

    #@8e
    move-result p2

    #@8f
    if-eqz p2, :cond_7f

    #@91
    return v1

    #@92
    :cond_92
    const/4 p1, 0x0

    #@93
    return p1
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/internal/Excluder;
    .registers 3

    #@0
    .line 91
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    .line 92
    iput-boolean v1, v0, Lcom/google/gson/internal/Excluder;->requireExpose:Z

    #@7
    return-object v0
.end method

.method public withExclusionStrategy(Lcom/google/gson/ExclusionStrategy;ZZ)Lcom/google/gson/internal/Excluder;
    .registers 6

    #@0
    .line 98
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    #@3
    move-result-object v0

    #@4
    if-eqz p2, :cond_12

    #@6
    .line 100
    new-instance p2, Ljava/util/ArrayList;

    #@8
    iget-object v1, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    #@a
    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@d
    iput-object p2, v0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    #@f
    .line 101
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@12
    :cond_12
    if-eqz p3, :cond_20

    #@14
    .line 104
    new-instance p2, Ljava/util/ArrayList;

    #@16
    iget-object p3, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    #@18
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1b
    iput-object p2, v0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    #@1d
    .line 106
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@20
    :cond_20
    return-object v0
.end method

.method public varargs withModifiers([I)Lcom/google/gson/internal/Excluder;
    .registers 7

    #@0
    .line 76
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    .line 77
    iput v1, v0, Lcom/google/gson/internal/Excluder;->modifiers:I

    #@7
    .line 78
    array-length v2, p1

    #@8
    :goto_8
    if-ge v1, v2, :cond_14

    #@a
    aget v3, p1, v1

    #@c
    .line 79
    iget v4, v0, Lcom/google/gson/internal/Excluder;->modifiers:I

    #@e
    or-int/2addr v3, v4

    #@f
    iput v3, v0, Lcom/google/gson/internal/Excluder;->modifiers:I

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_8

    #@14
    :cond_14
    return-object v0
.end method

.method public withVersion(D)Lcom/google/gson/internal/Excluder;
    .registers 4

    #@0
    .line 70
    invoke-virtual {p0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    #@3
    move-result-object v0

    #@4
    .line 71
    iput-wide p1, v0, Lcom/google/gson/internal/Excluder;->version:D

    #@6
    return-object v0
.end method
