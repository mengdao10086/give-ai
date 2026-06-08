.class Landroidx/print/PrintHelper$1;
.super Landroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/print/PrintHelper;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/print/PrintHelper;

.field final synthetic val$attributes:Landroid/print/PrintAttributes;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$fittingMode:I

.field final synthetic val$pdfAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;


# direct methods
.method constructor <init>(Landroidx/print/PrintHelper;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 9

    #@0
    .line 635
    iput-object p1, p0, Landroidx/print/PrintHelper$1;->this$0:Landroidx/print/PrintHelper;

    #@2
    iput-object p2, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    #@4
    iput-object p3, p0, Landroidx/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;

    #@6
    iput-object p4, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    #@8
    iput-object p5, p0, Landroidx/print/PrintHelper$1;->val$attributes:Landroid/print/PrintAttributes;

    #@a
    iput p6, p0, Landroidx/print/PrintHelper$1;->val$fittingMode:I

    #@c
    iput-object p7, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@e
    iput-object p8, p0, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    #@10
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@13
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 635
    check-cast p1, [Ljava/lang/Void;

    #@2
    invoke-virtual {p0, p1}, Landroidx/print/PrintHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .registers 9

    #@0
    .line 639
    :try_start_0
    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    #@2
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    #@5
    move-result p1

    #@6
    const/4 v0, 0x0

    #@7
    if-eqz p1, :cond_a

    #@9
    return-object v0

    #@a
    .line 643
    :cond_a
    new-instance p1, Landroid/print/pdf/PrintedPdfDocument;

    #@c
    iget-object v1, p0, Landroidx/print/PrintHelper$1;->this$0:Landroidx/print/PrintHelper;

    #@e
    iget-object v1, v1, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    #@10
    iget-object v2, p0, Landroidx/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;

    #@12
    invoke-direct {p1, v1, v2}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    #@15
    .line 646
    iget-object v1, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    #@17
    iget-object v2, p0, Landroidx/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;

    #@19
    .line 647
    invoke-virtual {v2}, Landroid/print/PrintAttributes;->getColorMode()I

    #@1c
    move-result v2

    #@1d
    .line 646
    invoke-static {v1, v2}, Landroidx/print/PrintHelper;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    #@20
    move-result-object v1

    #@21
    .line 649
    iget-object v2, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    #@23
    invoke-virtual {v2}, Landroid/os/CancellationSignal;->isCanceled()Z

    #@26
    move-result v2
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_dc

    #@27
    if-eqz v2, :cond_2a

    #@29
    return-object v0

    #@2a
    :cond_2a
    const/4 v2, 0x1

    #@2b
    .line 654
    :try_start_2b
    invoke-virtual {p1, v2}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    #@2e
    move-result-object v3

    #@2f
    .line 657
    sget-boolean v4, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    #@31
    if-eqz v4, :cond_41

    #@33
    .line 658
    new-instance v2, Landroid/graphics/RectF;

    #@35
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    #@3c
    move-result-object v4

    #@3d
    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    #@40
    goto :goto_64

    #@41
    .line 662
    :cond_41
    new-instance v4, Landroid/print/pdf/PrintedPdfDocument;

    #@43
    iget-object v5, p0, Landroidx/print/PrintHelper$1;->this$0:Landroidx/print/PrintHelper;

    #@45
    iget-object v5, v5, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    #@47
    iget-object v6, p0, Landroidx/print/PrintHelper$1;->val$attributes:Landroid/print/PrintAttributes;

    #@49
    invoke-direct {v4, v5, v6}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    #@4c
    .line 664
    invoke-virtual {v4, v2}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    #@4f
    move-result-object v2

    #@50
    .line 665
    new-instance v5, Landroid/graphics/RectF;

    #@52
    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v6}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    #@59
    move-result-object v6

    #@5a
    invoke-direct {v5, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    #@5d
    .line 666
    invoke-virtual {v4, v2}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    #@60
    .line 667
    invoke-virtual {v4}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    #@63
    move-object v2, v5

    #@64
    .line 672
    :goto_64
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    #@67
    move-result v4

    #@68
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    #@6b
    move-result v5

    #@6c
    iget v6, p0, Landroidx/print/PrintHelper$1;->val$fittingMode:I

    #@6e
    .line 671
    invoke-static {v4, v5, v2, v6}, Landroidx/print/PrintHelper;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    #@71
    move-result-object v4

    #@72
    .line 675
    sget-boolean v5, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    #@74
    if-eqz v5, :cond_77

    #@76
    goto :goto_85

    #@77
    .line 679
    :cond_77
    iget v5, v2, Landroid/graphics/RectF;->left:F

    #@79
    iget v6, v2, Landroid/graphics/RectF;->top:F

    #@7b
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@7e
    .line 682
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    #@81
    move-result-object v5

    #@82
    invoke-virtual {v5, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    #@85
    .line 686
    :goto_85
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v2, v1, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    #@8c
    .line 689
    invoke-virtual {p1, v3}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    #@8f
    .line 691
    iget-object v2, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    #@91
    invoke-virtual {v2}, Landroid/os/CancellationSignal;->isCanceled()Z

    #@94
    move-result v2
    :try_end_95
    .catchall {:try_start_2b .. :try_end_95} :catchall_c9

    #@95
    if-eqz v2, :cond_a9

    #@97
    .line 700
    :try_start_97
    invoke-virtual {p1}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    #@9a
    .line 702
    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_dc

    #@9c
    if-eqz p1, :cond_a1

    #@9e
    .line 704
    :try_start_9e
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_dc

    #@a1
    .line 710
    :catch_a1
    :cond_a1
    :try_start_a1
    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    #@a3
    if-eq v1, p1, :cond_a8

    #@a5
    .line 711
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_a8
    .catchall {:try_start_a1 .. :try_end_a8} :catchall_dc

    #@a8
    :cond_a8
    return-object v0

    #@a9
    .line 696
    :cond_a9
    :try_start_a9
    new-instance v2, Ljava/io/FileOutputStream;

    #@ab
    iget-object v3, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@ad
    .line 697
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@b0
    move-result-object v3

    #@b1
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@b4
    .line 696
    invoke-virtual {p1, v2}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_b7
    .catchall {:try_start_a9 .. :try_end_b7} :catchall_c9

    #@b7
    .line 700
    :try_start_b7
    invoke-virtual {p1}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    #@ba
    .line 702
    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_bc
    .catchall {:try_start_b7 .. :try_end_bc} :catchall_dc

    #@bc
    if-eqz p1, :cond_c1

    #@be
    .line 704
    :try_start_be
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_dc

    #@c1
    .line 710
    :catch_c1
    :cond_c1
    :try_start_c1
    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    #@c3
    if-eq v1, p1, :cond_c8

    #@c5
    .line 711
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    #@c8
    :cond_c8
    return-object v0

    #@c9
    :catchall_c9
    move-exception v0

    #@ca
    .line 700
    invoke-virtual {p1}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    #@cd
    .line 702
    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_cf
    .catchall {:try_start_c1 .. :try_end_cf} :catchall_dc

    #@cf
    if-eqz p1, :cond_d4

    #@d1
    .line 704
    :try_start_d1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d4
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_dc

    #@d4
    .line 710
    :catch_d4
    :cond_d4
    :try_start_d4
    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    #@d6
    if-eq v1, p1, :cond_db

    #@d8
    .line 711
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    #@db
    :cond_db
    throw v0
    :try_end_dc
    .catchall {:try_start_d4 .. :try_end_dc} :catchall_dc

    #@dc
    :catchall_dc
    move-exception p1

    #@dd
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 635
    check-cast p1, Ljava/lang/Throwable;

    #@2
    invoke-virtual {p0, p1}, Landroidx/print/PrintHelper$1;->onPostExecute(Ljava/lang/Throwable;)V

    #@5
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .registers 5

    #@0
    .line 721
    iget-object v0, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    #@2
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_e

    #@8
    .line 723
    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    #@a
    invoke-virtual {p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    #@d
    goto :goto_2b

    #@e
    :cond_e
    if-nez p1, :cond_1e

    #@10
    .line 726
    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    #@12
    const/4 v0, 0x1

    #@13
    new-array v0, v0, [Landroid/print/PageRange;

    #@15
    const/4 v1, 0x0

    #@16
    sget-object v2, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    #@18
    aput-object v2, v0, v1

    #@1a
    invoke-virtual {p1, v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    #@1d
    goto :goto_2b

    #@1e
    :cond_1e
    const-string v0, "PrintHelper"

    #@20
    const-string v1, "Error writing printed content"

    #@22
    .line 730
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    .line 731
    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    #@27
    const/4 v0, 0x0

    #@28
    invoke-virtual {p1, v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    #@2b
    :goto_2b
    return-void
.end method
