.class final Lcom/appbrain/o/l$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/o/l;->e(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/appbrain/o/l;


# direct methods
.method constructor <init>(Lcom/appbrain/o/l;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/l$b;->c:Lcom/appbrain/o/l;

    iput-object p2, p0, Lcom/appbrain/o/l$b;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/o/l$b;->c:Lcom/appbrain/o/l;

    iget-object v1, p0, Lcom/appbrain/o/l$b;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/appbrain/o/l;->c(Lcom/appbrain/o/l;Ljava/lang/Runnable;)V

    return-void
.end method
