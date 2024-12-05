.class final Lcom/appbrain/o/q0$a;
.super Lcom/appbrain/o/q;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/o/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appbrain/o/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final g(Lcom/appbrain/o/o0;)V
    .locals 2

    new-instance v0, Lcom/appbrain/o/q0$a$a;

    invoke-direct {v0, p0, p1}, Lcom/appbrain/o/q0$a$a;-><init>(Lcom/appbrain/o/q0$a;Lcom/appbrain/o/o0;)V

    new-instance p1, Lcom/appbrain/o/q0$a$b;

    invoke-direct {p1, p0, v0}, Lcom/appbrain/o/q0$a$b;-><init>(Lcom/appbrain/o/q0$a;Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x1388

    invoke-static {p1, v0, v1}, Lcom/appbrain/o/j;->d(Ljava/lang/Runnable;J)V

    return-void
.end method
