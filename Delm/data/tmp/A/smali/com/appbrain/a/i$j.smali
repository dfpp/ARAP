.class public final Lcom/appbrain/a/i$j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xdcdcdd

    iput v0, p0, Lcom/appbrain/a/i$j;->a:I

    const v0, -0xcccccd

    iput v0, p0, Lcom/appbrain/a/i$j;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/appbrain/a/i$j;->c:I

    const v1, -0xdf9921

    iput v1, p0, Lcom/appbrain/a/i$j;->d:I

    iput v1, p0, Lcom/appbrain/a/i$j;->e:I

    const v1, -0xd98f18

    iput v1, p0, Lcom/appbrain/a/i$j;->f:I

    iput v0, p0, Lcom/appbrain/a/i$j;->g:I

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/appbrain/a/i$j;->a:I

    iput p2, p0, Lcom/appbrain/a/i$j;->b:I

    iput p3, p0, Lcom/appbrain/a/i$j;->c:I

    iput p4, p0, Lcom/appbrain/a/i$j;->d:I

    iput p5, p0, Lcom/appbrain/a/i$j;->e:I

    iput p6, p0, Lcom/appbrain/a/i$j;->f:I

    iput p7, p0, Lcom/appbrain/a/i$j;->g:I

    iput p8, p0, Lcom/appbrain/a/i$j;->h:I

    return-void
.end method
