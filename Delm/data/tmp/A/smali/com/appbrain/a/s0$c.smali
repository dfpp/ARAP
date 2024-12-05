.class final Lcom/appbrain/a/s0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/s0;->g(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/appbrain/a/s0;


# direct methods
.method constructor <init>(Lcom/appbrain/a/s0;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/s0$c;->c:Lcom/appbrain/a/s0;

    iput-object p2, p0, Lcom/appbrain/a/s0$c;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/s0$c;->c:Lcom/appbrain/a/s0;

    iget-object v1, p0, Lcom/appbrain/a/s0$c;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/appbrain/a/s0;->e(Lcom/appbrain/a/s0;Landroid/app/Activity;)V

    return-void
.end method
