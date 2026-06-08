.class Landroidx/core/app/Person$Api22Impl;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api22Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static fromPersistableBundle(Landroid/os/PersistableBundle;)Landroidx/core/app/Person;
    .registers 3

    #@0
    .line 340
    new-instance v0, Landroidx/core/app/Person$Builder;

    #@2
    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    #@5
    const-string v1, "name"

    #@7
    .line 341
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    #@e
    move-result-object v0

    #@f
    const-string v1, "uri"

    #@11
    .line 342
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setUri(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    #@18
    move-result-object v0

    #@19
    const-string v1, "key"

    #@1b
    .line 343
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setKey(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    #@22
    move-result-object v0

    #@23
    const-string v1, "isBot"

    #@25
    .line 344
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@28
    move-result v1

    #@29
    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setBot(Z)Landroidx/core/app/Person$Builder;

    #@2c
    move-result-object v0

    #@2d
    const-string v1, "isImportant"

    #@2f
    .line 345
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@32
    move-result p0

    #@33
    invoke-virtual {v0, p0}, Landroidx/core/app/Person$Builder;->setImportant(Z)Landroidx/core/app/Person$Builder;

    #@36
    move-result-object p0

    #@37
    .line 346
    invoke-virtual {p0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    #@3a
    move-result-object p0

    #@3b
    return-object p0
.end method

.method static toPersistableBundle(Landroidx/core/app/Person;)Landroid/os/PersistableBundle;
    .registers 4

    #@0
    .line 351
    new-instance v0, Landroid/os/PersistableBundle;

    #@2
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    #@5
    .line 352
    iget-object v1, p0, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    #@7
    if-eqz v1, :cond_10

    #@9
    iget-object v1, p0, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    #@b
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v1, 0x0

    #@11
    :goto_11
    const-string v2, "name"

    #@13
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    const-string v1, "uri"

    #@18
    .line 353
    iget-object v2, p0, Landroidx/core/app/Person;->mUri:Ljava/lang/String;

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    const-string v1, "key"

    #@1f
    .line 354
    iget-object v2, p0, Landroidx/core/app/Person;->mKey:Ljava/lang/String;

    #@21
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    const-string v1, "isBot"

    #@26
    .line 355
    iget-boolean v2, p0, Landroidx/core/app/Person;->mIsBot:Z

    #@28
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    #@2b
    const-string v1, "isImportant"

    #@2d
    .line 356
    iget-boolean p0, p0, Landroidx/core/app/Person;->mIsImportant:Z

    #@2f
    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    #@32
    return-object v0
.end method
