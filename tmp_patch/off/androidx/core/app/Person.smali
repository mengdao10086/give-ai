.class public Landroidx/core/app/Person;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/Person$Api28Impl;,
        Landroidx/core/app/Person$Api22Impl;,
        Landroidx/core/app/Person$Builder;
    }
.end annotation


# static fields
.field private static final ICON_KEY:Ljava/lang/String; = "icon"

.field private static final IS_BOT_KEY:Ljava/lang/String; = "isBot"

.field private static final IS_IMPORTANT_KEY:Ljava/lang/String; = "isImportant"

.field private static final KEY_KEY:Ljava/lang/String; = "key"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field private static final URI_KEY:Ljava/lang/String; = "uri"


# instance fields
.field mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field mIsBot:Z

.field mIsImportant:Z

.field mKey:Ljava/lang/String;

.field mName:Ljava/lang/CharSequence;

.field mUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/core/app/Person$Builder;)V
    .registers 3

    #@0
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 101
    iget-object v0, p1, Landroidx/core/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    #@5
    iput-object v0, p0, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    #@7
    .line 102
    iget-object v0, p1, Landroidx/core/app/Person$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@9
    iput-object v0, p0, Landroidx/core/app/Person;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@b
    .line 103
    iget-object v0, p1, Landroidx/core/app/Person$Builder;->mUri:Ljava/lang/String;

    #@d
    iput-object v0, p0, Landroidx/core/app/Person;->mUri:Ljava/lang/String;

    #@f
    .line 104
    iget-object v0, p1, Landroidx/core/app/Person$Builder;->mKey:Ljava/lang/String;

    #@11
    iput-object v0, p0, Landroidx/core/app/Person;->mKey:Ljava/lang/String;

    #@13
    .line 105
    iget-boolean v0, p1, Landroidx/core/app/Person$Builder;->mIsBot:Z

    #@15
    iput-boolean v0, p0, Landroidx/core/app/Person;->mIsBot:Z

    #@17
    .line 106
    iget-boolean p1, p1, Landroidx/core/app/Person$Builder;->mIsImportant:Z

    #@19
    iput-boolean p1, p0, Landroidx/core/app/Person;->mIsImportant:Z

    #@1b
    return-void
.end method

.method public static fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;
    .registers 1

    #@0
    .line 83
    invoke-static {p0}, Landroidx/core/app/Person$Api28Impl;->fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/core/app/Person;
    .registers 4

    #@0
    const-string v0, "icon"

    #@2
    .line 49
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    .line 50
    new-instance v1, Landroidx/core/app/Person$Builder;

    #@8
    invoke-direct {v1}, Landroidx/core/app/Person$Builder;-><init>()V

    #@b
    const-string v2, "name"

    #@d
    .line 51
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    #@14
    move-result-object v1

    #@15
    if-eqz v0, :cond_1c

    #@17
    .line 52
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createFromBundle(Landroid/os/Bundle;)Landroidx/core/graphics/drawable/IconCompat;

    #@1a
    move-result-object v0

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    :goto_1d
    invoke-virtual {v1, v0}, Landroidx/core/app/Person$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;

    #@20
    move-result-object v0

    #@21
    const-string v1, "uri"

    #@23
    .line 53
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setUri(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    #@2a
    move-result-object v0

    #@2b
    const-string v1, "key"

    #@2d
    .line 54
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setKey(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    #@34
    move-result-object v0

    #@35
    const-string v1, "isBot"

    #@37
    .line 55
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@3a
    move-result v1

    #@3b
    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setBot(Z)Landroidx/core/app/Person$Builder;

    #@3e
    move-result-object v0

    #@3f
    const-string v1, "isImportant"

    #@41
    .line 56
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@44
    move-result p0

    #@45
    invoke-virtual {v0, p0}, Landroidx/core/app/Person$Builder;->setImportant(Z)Landroidx/core/app/Person$Builder;

    #@48
    move-result-object p0

    #@49
    .line 57
    invoke-virtual {p0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    #@4c
    move-result-object p0

    #@4d
    return-object p0
.end method

.method public static fromPersistableBundle(Landroid/os/PersistableBundle;)Landroidx/core/app/Person;
    .registers 1

    #@0
    .line 71
    invoke-static {p0}, Landroidx/core/app/Person$Api22Impl;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroidx/core/app/Person;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method


# virtual methods
.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .registers 2

    #@0
    .line 169
    iget-object v0, p0, Landroidx/core/app/Person;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@2
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    #@0
    .line 196
    iget-object v0, p0, Landroidx/core/app/Person;->mKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 163
    iget-object v0, p0, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    #@0
    .line 187
    iget-object v0, p0, Landroidx/core/app/Person;->mUri:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isBot()Z
    .registers 2

    #@0
    .line 204
    iget-boolean v0, p0, Landroidx/core/app/Person;->mIsBot:Z

    #@2
    return v0
.end method

.method public isImportant()Z
    .registers 2

    #@0
    .line 212
    iget-boolean v0, p0, Landroidx/core/app/Person;->mIsImportant:Z

    #@2
    return v0
.end method

.method public resolveToLegacyUri()Ljava/lang/String;
    .registers 3

    #@0
    .line 222
    iget-object v0, p0, Landroidx/core/app/Person;->mUri:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object v0

    #@5
    .line 225
    :cond_5
    iget-object v0, p0, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    #@7
    if-eqz v0, :cond_1b

    #@9
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    const-string v1, "name:"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    iget-object v1, p0, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    :cond_1b
    const-string v0, ""

    #@1d
    return-object v0
.end method

.method public toAndroidPerson()Landroid/app/Person;
    .registers 2

    #@0
    .line 154
    invoke-static {p0}, Landroidx/core/app/Person$Api28Impl;->toAndroidPerson(Landroidx/core/app/Person;)Landroid/app/Person;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toBuilder()Landroidx/core/app/Person$Builder;
    .registers 2

    #@0
    .line 142
    new-instance v0, Landroidx/core/app/Person$Builder;

    #@2
    invoke-direct {v0, p0}, Landroidx/core/app/Person$Builder;-><init>(Landroidx/core/app/Person;)V

    #@5
    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    #@0
    .line 115
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v1, "name"

    #@7
    .line 116
    iget-object v2, p0, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@c
    .line 117
    iget-object v1, p0, Landroidx/core/app/Person;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@e
    if-eqz v1, :cond_15

    #@10
    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->toBundle()Landroid/os/Bundle;

    #@13
    move-result-object v1

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 v1, 0x0

    #@16
    :goto_16
    const-string v2, "icon"

    #@18
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@1b
    const-string v1, "uri"

    #@1d
    .line 118
    iget-object v2, p0, Landroidx/core/app/Person;->mUri:Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    const-string v1, "key"

    #@24
    .line 119
    iget-object v2, p0, Landroidx/core/app/Person;->mKey:Ljava/lang/String;

    #@26
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    const-string v1, "isBot"

    #@2b
    .line 120
    iget-boolean v2, p0, Landroidx/core/app/Person;->mIsBot:Z

    #@2d
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@30
    const-string v1, "isImportant"

    #@32
    .line 121
    iget-boolean v2, p0, Landroidx/core/app/Person;->mIsImportant:Z

    #@34
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@37
    return-object v0
.end method

.method public toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 2

    #@0
    .line 136
    invoke-static {p0}, Landroidx/core/app/Person$Api22Impl;->toPersistableBundle(Landroidx/core/app/Person;)Landroid/os/PersistableBundle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
