.class public final La/c/c/b/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/c/c/b/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/c/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:[La/c/c/b/c$c;


# direct methods
.method public constructor <init>([La/c/c/b/c$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/c/c/b/c$b;->a:[La/c/c/b/c$c;

    return-void
.end method


# virtual methods
.method public a()[La/c/c/b/c$c;
    .locals 1

    iget-object v0, p0, La/c/c/b/c$b;->a:[La/c/c/b/c$c;

    return-object v0
.end method
