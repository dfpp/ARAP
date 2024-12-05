.class public final Lcom/appbrain/o/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/o/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/appbrain/o/c$a;->a:I

    iput-object p2, p0, Lcom/appbrain/o/c$a;->b:[B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/appbrain/o/c$a;->a:I

    return v0
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/c$a;->b:[B

    return-object v0
.end method
