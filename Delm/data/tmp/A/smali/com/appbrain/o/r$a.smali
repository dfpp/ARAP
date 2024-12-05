.class final Lcom/appbrain/o/r$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/o/r;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/o/r;


# direct methods
.method constructor <init>(Lcom/appbrain/o/r;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/r$a;->b:Lcom/appbrain/o/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/r$a;->b:Lcom/appbrain/o/r;

    invoke-static {v0}, Lcom/appbrain/o/r;->e(Lcom/appbrain/o/r;)V

    return-void
.end method
