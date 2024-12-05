.class final Lcom/appbrain/o/k$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/o/k;->g(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/appbrain/o/k;


# direct methods
.method constructor <init>(Lcom/appbrain/o/k;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/k$d;->c:Lcom/appbrain/o/k;

    iput-object p2, p0, Lcom/appbrain/o/k$d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/o/k$d;->c:Lcom/appbrain/o/k;

    iget-object v1, p0, Lcom/appbrain/o/k$d;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appbrain/o/k;->j(Lcom/appbrain/o/k;Ljava/lang/Object;)V

    return-void
.end method
