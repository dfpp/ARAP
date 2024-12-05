.class final Lcom/appbrain/a/b1$a;
.super Lcom/appbrain/a/e1$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/a/e1$c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/appbrain/t/u;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/appbrain/a/b1;->d(Lcom/appbrain/t/u;Z)V

    return-void
.end method

.method protected final c(Lcom/appbrain/t/u;)Z
    .locals 0

    invoke-static {p1}, Lcom/appbrain/a/b1;->e(Lcom/appbrain/t/u;)Z

    move-result p1

    return p1
.end method
