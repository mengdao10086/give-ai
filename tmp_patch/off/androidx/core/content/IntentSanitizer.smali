.class public Landroidx/core/content/IntentSanitizer;
.super Ljava/lang/Object;
.source "IntentSanitizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/IntentSanitizer$Api29Impl;,
        Landroidx/core/content/IntentSanitizer$Api16Impl;,
        Landroidx/core/content/IntentSanitizer$Api15Impl;,
        Landroidx/core/content/IntentSanitizer$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentSanitizer"


# instance fields
.field private mAllowAnyComponent:Z

.field private mAllowClipDataText:Z

.field private mAllowIdentifier:Z

.field private mAllowSelector:Z

.field private mAllowSourceBounds:Z

.field private mAllowedActions:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedCategories:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedClipData:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedClipDataUri:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedComponents:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedData:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAllowedFlags:I

.field private mAllowedPackages:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedTypes:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroidx/core/content/IntentSanitizer$1;)V
    .registers 2

    #@0
    .line 63
    invoke-direct {p0}, Landroidx/core/content/IntentSanitizer;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$1002(Landroidx/core/content/IntentSanitizer;Z)Z
    .registers 2

    #@0
    .line 63
    iput-boolean p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowClipDataText:Z

    #@2
    return p1
.end method

.method static synthetic access$102(Landroidx/core/content/IntentSanitizer;I)I
    .registers 2

    #@0
    .line 63
    iput p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    #@2
    return p1
.end method

.method static synthetic access$1102(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    #@0
    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedClipDataUri:Landroidx/core/util/Predicate;

    #@2
    return-object p1
.end method

.method static synthetic access$1202(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    #@0
    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedClipData:Landroidx/core/util/Predicate;

    #@2
    return-object p1
.end method

.method static synthetic access$1302(Landroidx/core/content/IntentSanitizer;Z)Z
    .registers 2

    #@0
    .line 63
    iput-boolean p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowIdentifier:Z

    #@2
    return p1
.end method

.method static synthetic access$1402(Landroidx/core/content/IntentSanitizer;Z)Z
    .registers 2

    #@0
    .line 63
    iput-boolean p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowSelector:Z

    #@2
    return p1
.end method

.method static synthetic access$1502(Landroidx/core/content/IntentSanitizer;Z)Z
    .registers 2

    #@0
    .line 63
    iput-boolean p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowSourceBounds:Z

    #@2
    return p1
.end method

.method static synthetic access$202(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    #@0
    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedActions:Landroidx/core/util/Predicate;

    #@2
    return-object p1
.end method

.method static synthetic access$302(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    #@0
    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedData:Landroidx/core/util/Predicate;

    #@2
    return-object p1
.end method

.method static synthetic access$402(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    #@0
    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedTypes:Landroidx/core/util/Predicate;

    #@2
    return-object p1
.end method

.method static synthetic access$502(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    #@0
    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedCategories:Landroidx/core/util/Predicate;

    #@2
    return-object p1
.end method

.method static synthetic access$602(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    #@0
    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedPackages:Landroidx/core/util/Predicate;

    #@2
    return-object p1
.end method

.method static synthetic access$702(Landroidx/core/content/IntentSanitizer;Z)Z
    .registers 2

    #@0
    .line 63
    iput-boolean p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowAnyComponent:Z

    #@2
    return p1
.end method

.method static synthetic access$802(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .registers 2

    #@0
    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedComponents:Landroidx/core/util/Predicate;

    #@2
    return-object p1
.end method

.method static synthetic access$902(Landroidx/core/content/IntentSanitizer;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    #@0
    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedExtras:Ljava/util/Map;

    #@2
    return-object p1
.end method

.method static synthetic lambda$sanitizeByFiltering$0(Ljava/lang/String;)V
    .registers 1

    #@0
    return-void
.end method

.method static synthetic lambda$sanitizeByThrowing$1(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 107
    new-instance v0, Ljava/lang/SecurityException;

    #@2
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@5
    throw v0
.end method

.method private putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    #@0
    if-nez p3, :cond_b

    #@2
    .line 242
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@5
    move-result-object p1

    #@6
    const/4 p3, 0x0

    #@7
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    goto :goto_28

    #@b
    .line 243
    :cond_b
    instance-of v0, p3, Landroid/os/Parcelable;

    #@d
    if-eqz v0, :cond_15

    #@f
    .line 244
    check-cast p3, Landroid/os/Parcelable;

    #@11
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@14
    goto :goto_28

    #@15
    .line 245
    :cond_15
    instance-of v0, p3, [Landroid/os/Parcelable;

    #@17
    if-eqz v0, :cond_1f

    #@19
    .line 246
    check-cast p3, [Landroid/os/Parcelable;

    #@1b
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1e
    goto :goto_28

    #@1f
    .line 247
    :cond_1f
    instance-of v0, p3, Ljava/io/Serializable;

    #@21
    if-eqz v0, :cond_29

    #@23
    .line 248
    check-cast p3, Ljava/io/Serializable;

    #@25
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@28
    :goto_28
    return-void

    #@29
    .line 250
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@2b
    new-instance p2, Ljava/lang/StringBuilder;

    #@2d
    const-string v0, "Unsupported type "

    #@2f
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@32
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@35
    move-result-object p3

    #@36
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object p2

    #@3a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object p2

    #@3e
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw p1
.end method


# virtual methods
.method public sanitize(Landroid/content/Intent;Landroidx/core/util/Consumer;)Landroid/content/Intent;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    #@0
    .line 123
    new-instance v6, Landroid/content/Intent;

    #@2
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    #@5
    .line 125
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@8
    move-result-object v0

    #@9
    .line 126
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer;->mAllowAnyComponent:Z

    #@b
    if-eqz v1, :cond_f

    #@d
    if-eqz v0, :cond_17

    #@f
    :cond_f
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedComponents:Landroidx/core/util/Predicate;

    #@11
    .line 127
    invoke-interface {v1, v0}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1b

    #@17
    .line 128
    :cond_17
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1a
    goto :goto_39

    #@1b
    .line 130
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    const-string v2, "Component is not allowed: "

    #@1f
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-interface {p2, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@2d
    .line 131
    new-instance v0, Landroid/content/ComponentName;

    #@2f
    const-string v1, "android"

    #@31
    const-string v2, "java.lang.Void"

    #@33
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@39
    .line 134
    :goto_39
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    if-eqz v0, :cond_5b

    #@3f
    .line 135
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedPackages:Landroidx/core/util/Predicate;

    #@41
    invoke-interface {v1, v0}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_48

    #@47
    goto :goto_5b

    #@48
    .line 138
    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    #@4a
    const-string v2, "Package is not allowed: "

    #@4c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    invoke-interface {p2, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@5a
    goto :goto_5e

    #@5b
    .line 136
    :cond_5b
    :goto_5b
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@5e
    .line 141
    :goto_5e
    iget v0, p0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    #@60
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    #@63
    move-result v1

    #@64
    or-int/2addr v0, v1

    #@65
    iget v1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    #@67
    if-ne v0, v1, :cond_71

    #@69
    .line 142
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    #@6c
    move-result v0

    #@6d
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@70
    goto :goto_97

    #@71
    .line 144
    :cond_71
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    #@74
    move-result v0

    #@75
    and-int/2addr v0, v1

    #@76
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@79
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    #@7b
    const-string v1, "The intent contains flags that are not allowed: 0x"

    #@7d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@80
    .line 146
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    #@83
    move-result v1

    #@84
    iget v2, p0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    #@86
    not-int v2, v2

    #@87
    and-int/2addr v1, v2

    #@88
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@8b
    move-result-object v1

    #@8c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v0

    #@90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v0

    #@94
    .line 145
    invoke-interface {p2, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@97
    .line 149
    :goto_97
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@9a
    move-result-object v0

    #@9b
    if-eqz v0, :cond_b9

    #@9d
    .line 150
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedActions:Landroidx/core/util/Predicate;

    #@9f
    invoke-interface {v1, v0}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    #@a2
    move-result v1

    #@a3
    if-eqz v1, :cond_a6

    #@a5
    goto :goto_b9

    #@a6
    .line 153
    :cond_a6
    new-instance v1, Ljava/lang/StringBuilder;

    #@a8
    const-string v2, "Action is not allowed: "

    #@aa
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@ad
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v0

    #@b5
    invoke-interface {p2, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@b8
    goto :goto_bc

    #@b9
    .line 151
    :cond_b9
    :goto_b9
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@bc
    .line 156
    :goto_bc
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@bf
    move-result-object v0

    #@c0
    if-eqz v0, :cond_de

    #@c2
    .line 157
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedData:Landroidx/core/util/Predicate;

    #@c4
    invoke-interface {v1, v0}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    #@c7
    move-result v1

    #@c8
    if-eqz v1, :cond_cb

    #@ca
    goto :goto_de

    #@cb
    .line 160
    :cond_cb
    new-instance v1, Ljava/lang/StringBuilder;

    #@cd
    const-string v2, "Data is not allowed: "

    #@cf
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v0

    #@d6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v0

    #@da
    invoke-interface {p2, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@dd
    goto :goto_e1

    #@de
    .line 158
    :cond_de
    :goto_de
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@e1
    .line 163
    :goto_e1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@e4
    move-result-object v0

    #@e5
    if-eqz v0, :cond_103

    #@e7
    .line 164
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedTypes:Landroidx/core/util/Predicate;

    #@e9
    invoke-interface {v1, v0}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    #@ec
    move-result v1

    #@ed
    if-eqz v1, :cond_f0

    #@ef
    goto :goto_103

    #@f0
    .line 167
    :cond_f0
    new-instance v1, Ljava/lang/StringBuilder;

    #@f2
    const-string v2, "Type is not allowed: "

    #@f4
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v0

    #@fb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v0

    #@ff
    invoke-interface {p2, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@102
    goto :goto_10a

    #@103
    .line 165
    :cond_103
    :goto_103
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@106
    move-result-object v1

    #@107
    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@10a
    .line 170
    :goto_10a
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@10d
    move-result-object v0

    #@10e
    if-eqz v0, :cond_13f

    #@110
    .line 172
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@113
    move-result-object v0

    #@114
    :goto_114
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@117
    move-result v1

    #@118
    if-eqz v1, :cond_13f

    #@11a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11d
    move-result-object v1

    #@11e
    check-cast v1, Ljava/lang/String;

    #@120
    .line 173
    iget-object v2, p0, Landroidx/core/content/IntentSanitizer;->mAllowedCategories:Landroidx/core/util/Predicate;

    #@122
    invoke-interface {v2, v1}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    #@125
    move-result v2

    #@126
    if-eqz v2, :cond_12c

    #@128
    .line 174
    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@12b
    goto :goto_114

    #@12c
    .line 176
    :cond_12c
    new-instance v2, Ljava/lang/StringBuilder;

    #@12e
    const-string v3, "Category is not allowed: "

    #@130
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@133
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v1

    #@137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13a
    move-result-object v1

    #@13b
    invoke-interface {p2, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@13e
    goto :goto_114

    #@13f
    .line 181
    :cond_13f
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@142
    move-result-object v0

    #@143
    if-eqz v0, :cond_1b7

    #@145
    .line 183
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@148
    move-result-object v1

    #@149
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@14c
    move-result-object v1

    #@14d
    :goto_14d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@150
    move-result v2

    #@151
    if-eqz v2, :cond_1b7

    #@153
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@156
    move-result-object v2

    #@157
    check-cast v2, Ljava/lang/String;

    #@159
    const-string v3, "android.intent.extra.STREAM"

    #@15b
    .line 184
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15e
    move-result v3

    #@15f
    if-eqz v3, :cond_16d

    #@161
    iget v3, p0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    #@163
    and-int/lit8 v3, v3, 0x1

    #@165
    if-nez v3, :cond_16d

    #@167
    const-string v2, "Allowing Extra Stream requires also allowing at least  FLAG_GRANT_READ_URI_PERMISSION Flag."

    #@169
    .line 186
    invoke-interface {p2, v2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@16c
    goto :goto_14d

    #@16d
    :cond_16d
    const-string v3, "output"

    #@16f
    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@172
    move-result v3

    #@173
    if-eqz v3, :cond_182

    #@175
    iget v3, p0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    #@177
    not-int v3, v3

    #@178
    and-int/lit8 v3, v3, 0x3

    #@17a
    if-eqz v3, :cond_182

    #@17c
    const-string v2, "Allowing Extra Output requires also allowing FLAG_GRANT_READ_URI_PERMISSION and FLAG_GRANT_WRITE_URI_PERMISSION Flags."

    #@17e
    .line 195
    invoke-interface {p2, v2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@181
    goto :goto_14d

    #@182
    .line 200
    :cond_182
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@185
    move-result-object v3

    #@186
    .line 201
    iget-object v4, p0, Landroidx/core/content/IntentSanitizer;->mAllowedExtras:Ljava/util/Map;

    #@188
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18b
    move-result-object v4

    #@18c
    check-cast v4, Landroidx/core/util/Predicate;

    #@18e
    if-eqz v4, :cond_19a

    #@190
    .line 202
    invoke-interface {v4, v3}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    #@193
    move-result v4

    #@194
    if-eqz v4, :cond_19a

    #@196
    .line 203
    invoke-direct {p0, v6, v2, v3}, Landroidx/core/content/IntentSanitizer;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    #@199
    goto :goto_14d

    #@19a
    .line 205
    :cond_19a
    new-instance v4, Ljava/lang/StringBuilder;

    #@19c
    const-string v5, "Extra is not allowed. Key: "

    #@19e
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1a1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v2

    #@1a5
    const-string v4, ". Value: "

    #@1a7
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v2

    #@1ab
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v2

    #@1af
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b2
    move-result-object v2

    #@1b3
    invoke-interface {p2, v2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@1b6
    goto :goto_14d

    #@1b7
    .line 211
    :cond_1b7
    iget-object v2, p0, Landroidx/core/content/IntentSanitizer;->mAllowedClipData:Landroidx/core/util/Predicate;

    #@1b9
    iget-boolean v3, p0, Landroidx/core/content/IntentSanitizer;->mAllowClipDataText:Z

    #@1bb
    iget-object v4, p0, Landroidx/core/content/IntentSanitizer;->mAllowedClipDataUri:Landroidx/core/util/Predicate;

    #@1bd
    move-object v0, p1

    #@1be
    move-object v1, v6

    #@1bf
    move-object v5, p2

    #@1c0
    invoke-static/range {v0 .. v5}, Landroidx/core/content/IntentSanitizer$Api16Impl;->sanitizeClipData(Landroid/content/Intent;Landroid/content/Intent;Landroidx/core/util/Predicate;ZLandroidx/core/util/Predicate;Landroidx/core/util/Consumer;)V

    #@1c3
    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@1c5
    const/16 v1, 0x1d

    #@1c7
    if-lt v0, v1, :cond_1f1

    #@1c9
    .line 216
    iget-boolean v0, p0, Landroidx/core/content/IntentSanitizer;->mAllowIdentifier:Z

    #@1cb
    if-eqz v0, :cond_1d5

    #@1cd
    .line 217
    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Api29Impl;->getIdentifier(Landroid/content/Intent;)Ljava/lang/String;

    #@1d0
    move-result-object v0

    #@1d1
    invoke-static {v6, v0}, Landroidx/core/content/IntentSanitizer$Api29Impl;->setIdentifier(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    #@1d4
    goto :goto_1f1

    #@1d5
    .line 218
    :cond_1d5
    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Api29Impl;->getIdentifier(Landroid/content/Intent;)Ljava/lang/String;

    #@1d8
    move-result-object v0

    #@1d9
    if-eqz v0, :cond_1f1

    #@1db
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    #@1dd
    const-string v1, "Identifier is not allowed: "

    #@1df
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e2
    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Api29Impl;->getIdentifier(Landroid/content/Intent;)Ljava/lang/String;

    #@1e5
    move-result-object v1

    #@1e6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v0

    #@1ea
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ed
    move-result-object v0

    #@1ee
    invoke-interface {p2, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@1f1
    .line 224
    :cond_1f1
    :goto_1f1
    iget-boolean v0, p0, Landroidx/core/content/IntentSanitizer;->mAllowSelector:Z

    #@1f3
    if-eqz v0, :cond_1fd

    #@1f5
    .line 225
    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Api15Impl;->getSelector(Landroid/content/Intent;)Landroid/content/Intent;

    #@1f8
    move-result-object v0

    #@1f9
    invoke-static {v6, v0}, Landroidx/core/content/IntentSanitizer$Api15Impl;->setSelector(Landroid/content/Intent;Landroid/content/Intent;)V

    #@1fc
    goto :goto_219

    #@1fd
    .line 226
    :cond_1fd
    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Api15Impl;->getSelector(Landroid/content/Intent;)Landroid/content/Intent;

    #@200
    move-result-object v0

    #@201
    if-eqz v0, :cond_219

    #@203
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    #@205
    const-string v1, "Selector is not allowed: "

    #@207
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@20a
    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Api15Impl;->getSelector(Landroid/content/Intent;)Landroid/content/Intent;

    #@20d
    move-result-object v1

    #@20e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v0

    #@212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@215
    move-result-object v0

    #@216
    invoke-interface {p2, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@219
    .line 231
    :cond_219
    :goto_219
    iget-boolean v0, p0, Landroidx/core/content/IntentSanitizer;->mAllowSourceBounds:Z

    #@21b
    if-eqz v0, :cond_225

    #@21d
    .line 232
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    #@220
    move-result-object p1

    #@221
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    #@224
    goto :goto_241

    #@225
    .line 233
    :cond_225
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    #@228
    move-result-object v0

    #@229
    if-eqz v0, :cond_241

    #@22b
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    #@22d
    const-string v1, "SourceBounds is not allowed: "

    #@22f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@232
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    #@235
    move-result-object p1

    #@236
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@239
    move-result-object p1

    #@23a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23d
    move-result-object p1

    #@23e
    invoke-interface {p2, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    #@241
    :cond_241
    :goto_241
    return-object v6
.end method

.method public sanitizeByFiltering(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3

    #@0
    .line 93
    new-instance v0, Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda0;

    #@2
    invoke-direct {v0}, Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda0;-><init>()V

    #@5
    invoke-virtual {p0, p1, v0}, Landroidx/core/content/IntentSanitizer;->sanitize(Landroid/content/Intent;Landroidx/core/util/Consumer;)Landroid/content/Intent;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method

.method public sanitizeByThrowing(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3

    #@0
    .line 106
    new-instance v0, Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda1;

    #@2
    invoke-direct {v0}, Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda1;-><init>()V

    #@5
    invoke-virtual {p0, p1, v0}, Landroidx/core/content/IntentSanitizer;->sanitize(Landroid/content/Intent;Landroidx/core/util/Consumer;)Landroid/content/Intent;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method
