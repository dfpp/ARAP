.class final Lcom/appbrain/a/g0$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/g0$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/a/g0$e;


# direct methods
.method constructor <init>(Lcom/appbrain/a/g0$e;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/g0$e$a;->b:Lcom/appbrain/a/g0$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/g0$e$a;->b:Lcom/appbrain/a/g0$e;

    iget-object v0, v0, Lcom/appbrain/a/g0$e;->b:Lcom/appbrain/a/g0;

    invoke-static {v0}, Lcom/appbrain/a/g0;->F(Lcom/appbrain/a/g0;)V

    return-void
.end method
