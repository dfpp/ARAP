.class final Lcom/appbrain/o/l$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/o/l;->f(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:J

.field final synthetic d:Lcom/appbrain/o/l;


# direct methods
.method constructor <init>(Lcom/appbrain/o/l;Ljava/lang/Runnable;J)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/l$c;->d:Lcom/appbrain/o/l;

    iput-object p2, p0, Lcom/appbrain/o/l$c;->b:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/appbrain/o/l$c;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/appbrain/o/l$c;->d:Lcom/appbrain/o/l;

    iget-object v1, p0, Lcom/appbrain/o/l$c;->b:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/appbrain/o/l$c;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/appbrain/o/l;->d(Lcom/appbrain/o/l;Ljava/lang/Runnable;J)V

    return-void
.end method
