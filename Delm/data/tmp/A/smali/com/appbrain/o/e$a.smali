.class final Lcom/appbrain/o/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/o/o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/o/e;->d(Landroid/widget/ImageView;Ljava/lang/String;ZLcom/appbrain/o/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/appbrain/o/e;


# direct methods
.method constructor <init>(Lcom/appbrain/o/e;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/e$a;->d:Lcom/appbrain/o/e;

    iput-object p2, p0, Lcom/appbrain/o/e$a;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/appbrain/o/e$a;->b:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/appbrain/o/e$a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/appbrain/o/l0$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/appbrain/o/l0$b;->a()[B

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/appbrain/o/l0$b;->a()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    :catch_1
    :cond_0
    invoke-static {}, Lcom/appbrain/o/e;->f()Ljava/lang/String;

    :goto_0
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/appbrain/o/e$a;->d:Lcom/appbrain/o/e;

    iget-object v1, p0, Lcom/appbrain/o/e$a;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/appbrain/o/e$a;->b:Z

    iget-boolean v3, p0, Lcom/appbrain/o/e$a;->c:Z

    invoke-static {v0, p1, v1, v2, v3}, Lcom/appbrain/o/e;->e(Lcom/appbrain/o/e;Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)V

    return-void
.end method
