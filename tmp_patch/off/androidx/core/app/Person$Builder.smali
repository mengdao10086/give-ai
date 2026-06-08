.class public Landroidx/core/app/Person$Builder;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field mIsBot:Z

.field mIsImportant:Z

.field mKey:Ljava/lang/String;

.field mName:Ljava/lang/CharSequence;

.field mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(Landroidx/core/app/Person;)V
    .registers 3

    #@0
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 244
    iget-object v0, p1, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    #@5
    iput-object v0, p0, Landroidx/core/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    #@7
    .line 245
    iget-object v0, p1, Landroidx/core/app/Person;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@9
    iput-object v0, p0, Landroidx/core/app/Person$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@b
    .line 246
    iget-object v0, p1, Landroidx/core/app/Person;->mUri:Ljava/lang/String;

    #@d
    iput-object v0, p0, Landroidx/core/app/Person$Builder;->mUri:Ljava/lang/String;

    #@f
    .line 247
    iget-object v0, p1, Landroidx/core/app/Person;->mKey:Ljava/lang/String;

    #@11
    iput-object v0, p0, Landroidx/core/app/Person$Builder;->mKey:Ljava/lang/String;

    #@13
    .line 248
    iget-boolean v0, p1, Landroidx/core/app/Person;->mIsBot:Z

    #@15
    iput-boolean v0, p0, Landroidx/core/app/Person$Builder;->mIsBot:Z

    #@17
    .line 249
    iget-boolean p1, p1, Landroidx/core/app/Person;->mIsImportant:Z

    #@19
    iput-boolean p1, p0, Landroidx/core/app/Person$Builder;->mIsImportant:Z

    #@1b
    return-void
.end method


# virtual methods
.method public build()Landroidx/core/app/Person;
    .registers 2

    #@0
    .line 328
    new-instance v0, Landroidx/core/app/Person;

    #@2
    invoke-direct {v0, p0}, Landroidx/core/app/Person;-><init>(Landroidx/core/app/Person$Builder;)V

    #@5
    return-object v0
.end method

.method public setBot(Z)Landroidx/core/app/Person$Builder;
    .registers 2

    #@0
    .line 309
    iput-boolean p1, p0, Landroidx/core/app/Person$Builder;->mIsBot:Z

    #@2
    return-object p0
.end method

.method public setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;
    .registers 2

    #@0
    .line 270
    iput-object p1, p0, Landroidx/core/app/Person$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    #@2
    return-object p0
.end method

.method public setImportant(Z)Landroidx/core/app/Person$Builder;
    .registers 2

    #@0
    .line 321
    iput-boolean p1, p0, Landroidx/core/app/Person$Builder;->mIsImportant:Z

    #@2
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Landroidx/core/app/Person$Builder;
    .registers 2

    #@0
    .line 299
    iput-object p1, p0, Landroidx/core/app/Person$Builder;->mKey:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;
    .registers 2

    #@0
    .line 258
    iput-object p1, p0, Landroidx/core/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    #@2
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Landroidx/core/app/Person$Builder;
    .registers 2

    #@0
    .line 288
    iput-object p1, p0, Landroidx/core/app/Person$Builder;->mUri:Ljava/lang/String;

    #@2
    return-object p0
.end method
