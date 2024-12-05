.class final Lcom/appbrain/a/e1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/appbrain/t/u;

.field final synthetic d:Lcom/appbrain/a/e1$c;

.field final synthetic e:Lcom/appbrain/a/e1$e;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/appbrain/t/u;Lcom/appbrain/a/e1$c;Lcom/appbrain/a/e1$e;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/e1$b;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/appbrain/a/e1$b;->c:Lcom/appbrain/t/u;

    iput-object p3, p0, Lcom/appbrain/a/e1$b;->d:Lcom/appbrain/a/e1$c;

    iput-object p4, p0, Lcom/appbrain/a/e1$b;->e:Lcom/appbrain/a/e1$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/appbrain/a/e1$b;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appbrain/a/e1$b;->c:Lcom/appbrain/t/u;

    iget-object v2, p0, Lcom/appbrain/a/e1$b;->d:Lcom/appbrain/a/e1$c;

    invoke-static {v2}, Lcom/appbrain/a/e1$c;->a(Lcom/appbrain/a/e1$c;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appbrain/a/e1$b;->e:Lcom/appbrain/a/e1$e;

    invoke-static {v0, v1, v2, v3}, Lcom/appbrain/a/e1$d;->a(Landroid/app/Activity;Lcom/appbrain/t/u;Ljava/lang/String;Lcom/appbrain/a/e1$e;)V

    return-void
.end method
