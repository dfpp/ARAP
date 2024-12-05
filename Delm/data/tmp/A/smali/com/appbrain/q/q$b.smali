.class public final Lcom/appbrain/q/q$b;
.super Lcom/appbrain/q/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field private b:Lcom/appbrain/q/q;


# direct methods
.method public constructor <init>(Lcom/appbrain/q/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/q/g;-><init>()V

    iput-object p1, p0, Lcom/appbrain/q/q$b;->b:Lcom/appbrain/q/q;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/appbrain/q/k;Lcom/appbrain/q/n;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/q$b;->b:Lcom/appbrain/q/q;

    invoke-static {v0, p1, p2}, Lcom/appbrain/q/q;->o(Lcom/appbrain/q/q;Lcom/appbrain/q/k;Lcom/appbrain/q/n;)Lcom/appbrain/q/q;

    move-result-object p1

    return-object p1
.end method
