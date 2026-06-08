.class public abstract enum Lcom/google/gson/FieldNamingPolicy;
.super Ljava/lang/Enum;
.source "FieldNamingPolicy.java"

# interfaces
.implements Lcom/google/gson/FieldNamingStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/gson/FieldNamingPolicy;",
        ">;",
        "Lcom/google/gson/FieldNamingStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gson/FieldNamingPolicy;

.field public static final enum IDENTITY:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DASHES:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_DOTS:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE:Lcom/google/gson/FieldNamingPolicy;

.field public static final enum UPPER_CAMEL_CASE_WITH_SPACES:Lcom/google/gson/FieldNamingPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    #@0
    .line 37
    new-instance v0, Lcom/google/gson/FieldNamingPolicy$1;

    #@2
    const-string v1, "IDENTITY"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lcom/google/gson/FieldNamingPolicy$1;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    #@a
    .line 53
    new-instance v1, Lcom/google/gson/FieldNamingPolicy$2;

    #@c
    const-string v3, "UPPER_CAMEL_CASE"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Lcom/google/gson/FieldNamingPolicy$2;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Lcom/google/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE:Lcom/google/gson/FieldNamingPolicy;

    #@14
    .line 72
    new-instance v3, Lcom/google/gson/FieldNamingPolicy$3;

    #@16
    const-string v5, "UPPER_CAMEL_CASE_WITH_SPACES"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Lcom/google/gson/FieldNamingPolicy$3;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Lcom/google/gson/FieldNamingPolicy;->UPPER_CAMEL_CASE_WITH_SPACES:Lcom/google/gson/FieldNamingPolicy;

    #@1e
    .line 90
    new-instance v5, Lcom/google/gson/FieldNamingPolicy$4;

    #@20
    const-string v7, "LOWER_CASE_WITH_UNDERSCORES"

    #@22
    const/4 v8, 0x3

    #@23
    invoke-direct {v5, v7, v8}, Lcom/google/gson/FieldNamingPolicy$4;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v5, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    #@28
    .line 113
    new-instance v7, Lcom/google/gson/FieldNamingPolicy$5;

    #@2a
    const-string v9, "LOWER_CASE_WITH_DASHES"

    #@2c
    const/4 v10, 0x4

    #@2d
    invoke-direct {v7, v9, v10}, Lcom/google/gson/FieldNamingPolicy$5;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v7, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DASHES:Lcom/google/gson/FieldNamingPolicy;

    #@32
    .line 136
    new-instance v9, Lcom/google/gson/FieldNamingPolicy$6;

    #@34
    const-string v11, "LOWER_CASE_WITH_DOTS"

    #@36
    const/4 v12, 0x5

    #@37
    invoke-direct {v9, v11, v12}, Lcom/google/gson/FieldNamingPolicy$6;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v9, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_DOTS:Lcom/google/gson/FieldNamingPolicy;

    #@3c
    const/4 v11, 0x6

    #@3d
    new-array v11, v11, [Lcom/google/gson/FieldNamingPolicy;

    #@3f
    aput-object v0, v11, v2

    #@41
    aput-object v1, v11, v4

    #@43
    aput-object v3, v11, v6

    #@45
    aput-object v5, v11, v8

    #@47
    aput-object v7, v11, v10

    #@49
    aput-object v9, v11, v12

    #@4b
    .line 31
    sput-object v11, Lcom/google/gson/FieldNamingPolicy;->$VALUES:[Lcom/google/gson/FieldNamingPolicy;

    #@4d
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    #@0
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/gson/FieldNamingPolicy$1;)V
    .registers 4

    #@0
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method private static modifyString(CLjava/lang/String;I)Ljava/lang/String;
    .registers 4

    #@0
    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    if-ge p2, v0, :cond_1c

    #@6
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    move-result-object p0

    #@f
    .line 186
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12
    move-result-object p1

    #@13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object p0

    #@17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object p0

    #@1b
    goto :goto_20

    #@1c
    .line 187
    :cond_1c
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@1f
    move-result-object p0

    #@20
    :goto_20
    return-object p0
.end method

.method static separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    #@0
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x0

    #@a
    :goto_a
    if-ge v2, v1, :cond_25

    #@c
    .line 149
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v3

    #@10
    .line 150
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_1f

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1f

    #@1c
    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 153
    :cond_1f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_a

    #@25
    .line 155
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object p0

    #@29
    return-object p0
.end method

.method static upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    #@0
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    .line 164
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v2

    #@a
    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v3

    #@e
    :goto_e
    add-int/lit8 v4, v3, -0x1

    #@10
    if-ge v1, v4, :cond_23

    #@12
    .line 168
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_19

    #@18
    goto :goto_23

    #@19
    .line 172
    :cond_19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    add-int/lit8 v1, v1, 0x1

    #@1e
    .line 173
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@21
    move-result v2

    #@22
    goto :goto_e

    #@23
    .line 176
    :cond_23
    :goto_23
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_3b

    #@29
    .line 177
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    #@2c
    move-result v2

    #@2d
    add-int/lit8 v1, v1, 0x1

    #@2f
    invoke-static {v2, p0, v1}, Lcom/google/gson/FieldNamingPolicy;->modifyString(CLjava/lang/String;I)Ljava/lang/String;

    #@32
    move-result-object p0

    #@33
    .line 178
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object p0

    #@37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object p0

    #@3b
    :cond_3b
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/FieldNamingPolicy;
    .registers 2

    #@0
    .line 31
    const-class v0, Lcom/google/gson/FieldNamingPolicy;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lcom/google/gson/FieldNamingPolicy;

    #@8
    return-object p0
.end method

.method public static values()[Lcom/google/gson/FieldNamingPolicy;
    .registers 1

    #@0
    .line 31
    sget-object v0, Lcom/google/gson/FieldNamingPolicy;->$VALUES:[Lcom/google/gson/FieldNamingPolicy;

    #@2
    invoke-virtual {v0}, [Lcom/google/gson/FieldNamingPolicy;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/google/gson/FieldNamingPolicy;

    #@8
    return-object v0
.end method
