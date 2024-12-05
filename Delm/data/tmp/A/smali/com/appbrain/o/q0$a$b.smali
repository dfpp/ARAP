.class final Lcom/appbrain/o/q0$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/o/q0$a;->g(Lcom/appbrain/o/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/appbrain/o/q0$a;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/appbrain/o/q0$a$b;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/q0$a$b;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/appbrain/o/k;->f(Ljava/lang/Runnable;)V

    return-void
.end method
