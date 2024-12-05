.class final Lcom/appbrain/a/o0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/o0;->i(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/appbrain/a/o0;


# direct methods
.method constructor <init>(Lcom/appbrain/a/o0;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/o0$b;->c:Lcom/appbrain/a/o0;

    iput-object p2, p0, Lcom/appbrain/a/o0$b;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/o0$b;->c:Lcom/appbrain/a/o0;

    iget-object v1, p0, Lcom/appbrain/a/o0$b;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/appbrain/a/o0;->j(Lcom/appbrain/a/o0;Landroid/app/Activity;)V

    return-void
.end method
