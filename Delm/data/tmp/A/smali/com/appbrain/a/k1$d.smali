.class final Lcom/appbrain/a/k1$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field final a:Lcom/appbrain/k;

.field b:Z

.field c:Z


# direct methods
.method constructor <init>(Lcom/appbrain/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appbrain/a/k1$d;->a:Lcom/appbrain/k;

    return-void
.end method
