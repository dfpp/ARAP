.class final Lcom/appbrain/a/s0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/s0;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Z

.field final synthetic d:Lcom/appbrain/a/s0;


# direct methods
.method constructor <init>(Lcom/appbrain/a/s0;Landroid/app/Activity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/s0$b;->d:Lcom/appbrain/a/s0;

    iput-object p2, p0, Lcom/appbrain/a/s0$b;->b:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/appbrain/a/s0$b;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/a/s0$b;->d:Lcom/appbrain/a/s0;

    iget-object v1, p0, Lcom/appbrain/a/s0$b;->b:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/appbrain/a/s0$b;->c:Z

    invoke-static {v0, v1, v2}, Lcom/appbrain/a/s0;->f(Lcom/appbrain/a/s0;Landroid/app/Activity;Z)V

    return-void
.end method
