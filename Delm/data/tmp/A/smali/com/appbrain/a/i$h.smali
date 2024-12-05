.class public abstract Lcom/appbrain/a/i$h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/appbrain/a/i$j;


# direct methods
.method protected constructor <init>(IILcom/appbrain/a/i$j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/appbrain/a/i$h;->a:I

    iput p2, p0, Lcom/appbrain/a/i$h;->b:I

    iput-object p3, p0, Lcom/appbrain/a/i$h;->c:Lcom/appbrain/a/i$j;

    return-void
.end method


# virtual methods
.method public final a(II)Lcom/appbrain/a/i$p;
    .locals 1

    iget v0, p0, Lcom/appbrain/a/i$h;->a:I

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-static {p1}, Lcom/appbrain/o/p0;->a(F)F

    move-result p1

    div-float/2addr v0, p1

    iget p1, p0, Lcom/appbrain/a/i$h;->b:I

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-static {p2}, Lcom/appbrain/o/p0;->a(F)F

    move-result p2

    div-float/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    new-instance p2, Lcom/appbrain/a/i$p;

    invoke-direct {p2, p1}, Lcom/appbrain/a/i$p;-><init>(F)V

    return-object p2
.end method
