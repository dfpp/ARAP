.class final Lcom/appbrain/a/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/c;->getShowableOffers()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/a/c;


# direct methods
.method constructor <init>(Lcom/appbrain/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/c$b;->b:Lcom/appbrain/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/c$b;->b:Lcom/appbrain/a/c;

    invoke-virtual {v0}, Lcom/appbrain/a/c;->a()V

    return-void
.end method
