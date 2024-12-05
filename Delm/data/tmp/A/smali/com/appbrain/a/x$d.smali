.class final Lcom/appbrain/a/x$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Z

.field final synthetic d:Lcom/appbrain/a/w;

.field final synthetic e:Lcom/appbrain/k;

.field final synthetic f:Lcom/appbrain/n/d;

.field final synthetic g:D

.field final synthetic h:Lcom/appbrain/t/t;


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLcom/appbrain/a/w;Lcom/appbrain/k;Lcom/appbrain/n/d;DLcom/appbrain/t/t;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/x$d;->b:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/appbrain/a/x$d;->c:Z

    iput-object p3, p0, Lcom/appbrain/a/x$d;->d:Lcom/appbrain/a/w;

    iput-object p4, p0, Lcom/appbrain/a/x$d;->e:Lcom/appbrain/k;

    iput-object p5, p0, Lcom/appbrain/a/x$d;->f:Lcom/appbrain/n/d;

    iput-wide p6, p0, Lcom/appbrain/a/x$d;->g:D

    iput-object p8, p0, Lcom/appbrain/a/x$d;->h:Lcom/appbrain/t/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/appbrain/a/x$d;->b:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/appbrain/a/x$d;->c:Z

    iget-object v2, p0, Lcom/appbrain/a/x$d;->d:Lcom/appbrain/a/w;

    iget-object v3, p0, Lcom/appbrain/a/x$d;->e:Lcom/appbrain/k;

    iget-object v4, p0, Lcom/appbrain/a/x$d;->f:Lcom/appbrain/n/d;

    iget-wide v5, p0, Lcom/appbrain/a/x$d;->g:D

    iget-object v7, p0, Lcom/appbrain/a/x$d;->h:Lcom/appbrain/t/t;

    invoke-static/range {v0 .. v7}, Lcom/appbrain/a/m1;->l(Landroid/app/Activity;ZLcom/appbrain/a/w;Lcom/appbrain/k;Lcom/appbrain/n/d;DLcom/appbrain/t/t;)V

    return-void
.end method
