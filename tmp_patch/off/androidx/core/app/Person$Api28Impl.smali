.class Landroidx/core/app/Person$Api28Impl;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;
    .registers 3

    #@0
    .line 369
    new-instance v0, Landroidx/core/app/Person$Builder;

    #@2
    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    #@5
    .line 370
    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    #@c
    move-result-object v0

    #@d
    .line 372
    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    #@10
    move-result-object v1

    #@11
    if-eqz v1, :cond_1c

    #@13
    .line 373
    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    #@16
    move-result-object v1

    #@17
    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    #@1a
    move-result-object v1

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    const/4 v1, 0x0

    #@1d
    .line 371
    :goto_1d
    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;

    #@20
    move-result-object v0

    #@21
    .line 375
    invoke-virtual {p0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setUri(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    #@28
    move-result-object v0

    #@29
    .line 376
    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setKey(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    #@30
    move-result-object v0

    #@31
    .line 377
    invoke-virtual {p0}, Landroid/app/Person;->isBot()Z

    #@34
    move-result v1

    #@35
    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setBot(Z)Landroidx/core/app/Person$Builder;

    #@38
    move-result-object v0

    #@39
    .line 378
    invoke-virtual {p0}, Landroid/app/Person;->isImportant()Z

    #@3c
    move-result p0

    #@3d
    invoke-virtual {v0, p0}, Landroidx/core/app/Person$Builder;->setImportant(Z)Landroidx/core/app/Person$Builder;

    #@40
    move-result-object p0

    #@41
    .line 379
    invoke-virtual {p0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    #@44
    move-result-object p0

    #@45
    return-object p0
.end method

.method static toAndroidPerson(Landroidx/core/app/Person;)Landroid/app/Person;
    .registers 3

    #@0
    .line 385
    new-instance v0, Landroid/app/Person$Builder;

    #@2
    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    #@5
    .line 386
    invoke-virtual {p0}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    #@c
    move-result-object v0

    #@d
    .line 387
    invoke-virtual {p0}, Landroidx/core/app/Person;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    #@10
    move-result-object v1

    #@11
    if-eqz v1, :cond_1c

    #@13
    invoke-virtual {p0}, Landroidx/core/app/Person;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    #@1a
    move-result-object v1

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    const/4 v1, 0x0

    #@1d
    :goto_1d
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    #@20
    move-result-object v0

    #@21
    .line 388
    invoke-virtual {p0}, Landroidx/core/app/Person;->getUri()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    #@28
    move-result-object v0

    #@29
    .line 389
    invoke-virtual {p0}, Landroidx/core/app/Person;->getKey()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    #@30
    move-result-object v0

    #@31
    .line 390
    invoke-virtual {p0}, Landroidx/core/app/Person;->isBot()Z

    #@34
    move-result v1

    #@35
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    #@38
    move-result-object v0

    #@39
    .line 391
    invoke-virtual {p0}, Landroidx/core/app/Person;->isImportant()Z

    #@3c
    move-result p0

    #@3d
    invoke-virtual {v0, p0}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    #@40
    move-result-object p0

    #@41
    .line 392
    invoke-virtual {p0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    #@44
    move-result-object p0

    #@45
    return-object p0
.end method
