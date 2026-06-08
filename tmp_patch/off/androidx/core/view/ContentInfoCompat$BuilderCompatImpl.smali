.class final Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"

# interfaces
.implements Landroidx/core/view/ContentInfoCompat$BuilderCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BuilderCompatImpl"
.end annotation


# instance fields
.field mClip:Landroid/content/ClipData;

.field mExtras:Landroid/os/Bundle;

.field mFlags:I

.field mLinkUri:Landroid/net/Uri;

.field mSource:I


# direct methods
.method constructor <init>(Landroid/content/ClipData;I)V
    .registers 3

    #@0
    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 619
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mClip:Landroid/content/ClipData;

    #@5
    .line 620
    iput p2, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mSource:I

    #@7
    return-void
.end method

.method constructor <init>(Landroidx/core/view/ContentInfoCompat;)V
    .registers 3

    #@0
    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 624
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat;->getClip()Landroid/content/ClipData;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mClip:Landroid/content/ClipData;

    #@9
    .line 625
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat;->getSource()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mSource:I

    #@f
    .line 626
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat;->getFlags()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mFlags:I

    #@15
    .line 627
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mLinkUri:Landroid/net/Uri;

    #@1b
    .line 628
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat;->getExtras()Landroid/os/Bundle;

    #@1e
    move-result-object p1

    #@1f
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mExtras:Landroid/os/Bundle;

    #@21
    return-void
.end method


# virtual methods
.method public build()Landroidx/core/view/ContentInfoCompat;
    .registers 3

    #@0
    .line 659
    new-instance v0, Landroidx/core/view/ContentInfoCompat;

    #@2
    new-instance v1, Landroidx/core/view/ContentInfoCompat$CompatImpl;

    #@4
    invoke-direct {v1, p0}, Landroidx/core/view/ContentInfoCompat$CompatImpl;-><init>(Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;)V

    #@7
    invoke-direct {v0, v1}, Landroidx/core/view/ContentInfoCompat;-><init>(Landroidx/core/view/ContentInfoCompat$Compat;)V

    #@a
    return-object v0
.end method

.method public setClip(Landroid/content/ClipData;)V
    .registers 2

    #@0
    .line 633
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mClip:Landroid/content/ClipData;

    #@2
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 2

    #@0
    .line 653
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mExtras:Landroid/os/Bundle;

    #@2
    return-void
.end method

.method public setFlags(I)V
    .registers 2

    #@0
    .line 643
    iput p1, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mFlags:I

    #@2
    return-void
.end method

.method public setLinkUri(Landroid/net/Uri;)V
    .registers 2

    #@0
    .line 648
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mLinkUri:Landroid/net/Uri;

    #@2
    return-void
.end method

.method public setSource(I)V
    .registers 2

    #@0
    .line 638
    iput p1, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mSource:I

    #@2
    return-void
.end method
