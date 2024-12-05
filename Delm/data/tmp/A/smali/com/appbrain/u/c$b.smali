.class public final Lcom/appbrain/u/c$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/u/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:[B

.field final b:Ljava/lang/String;


# direct methods
.method constructor <init>([BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appbrain/u/c$b;->a:[B

    iput-object p2, p0, Lcom/appbrain/u/c$b;->b:Ljava/lang/String;

    return-void
.end method
