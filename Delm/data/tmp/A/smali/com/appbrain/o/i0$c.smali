.class final Lcom/appbrain/o/i0$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/o/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appbrain/o/i0$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/appbrain/o/i0$c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/appbrain/o/i0$c;->c:Ljava/lang/String;

    return-void
.end method
