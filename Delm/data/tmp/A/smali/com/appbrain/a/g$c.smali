.class final Lcom/appbrain/a/g$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/a/g;


# direct methods
.method constructor <init>(Lcom/appbrain/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/g$c;->b:Lcom/appbrain/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/g$c;->b:Lcom/appbrain/a/g;

    invoke-static {v0}, Lcom/appbrain/a/g;->l(Lcom/appbrain/a/g;)V

    iget-object v0, p0, Lcom/appbrain/a/g$c;->b:Lcom/appbrain/a/g;

    invoke-static {v0}, Lcom/appbrain/a/g;->m(Lcom/appbrain/a/g;)V

    return-void
.end method
