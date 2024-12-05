.class final Lcom/appbrain/a/m1$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/appbrain/a/w;

.field final b:Lcom/appbrain/t/t;

.field c:I

.field d:Ljava/lang/Integer;

.field e:Z

.field f:Lcom/appbrain/k;


# direct methods
.method constructor <init>(Lcom/appbrain/a/w;Lcom/appbrain/t/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/appbrain/a/m1$b;->c:I

    iput-object p1, p0, Lcom/appbrain/a/m1$b;->a:Lcom/appbrain/a/w;

    iput-object p2, p0, Lcom/appbrain/a/m1$b;->b:Lcom/appbrain/t/t;

    return-void
.end method
