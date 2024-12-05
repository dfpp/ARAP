.class final Lcom/appbrain/a/x$a;
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
.field final synthetic b:Lcom/appbrain/a/x;


# direct methods
.method constructor <init>(Lcom/appbrain/a/x;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/x$a;->b:Lcom/appbrain/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/x$a;->b:Lcom/appbrain/a/x;

    invoke-static {v0}, Lcom/appbrain/a/x;->d(Lcom/appbrain/a/x;)V

    return-void
.end method
