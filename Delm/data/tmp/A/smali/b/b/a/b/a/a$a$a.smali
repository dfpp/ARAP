.class public Lb/b/a/b/a/a$a$a;
.super Lb/b/a/a/a;
.source ""

# interfaces
.implements Lb/b/a/b/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/b/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    invoke-direct {p0, p1, v0}, Lb/b/a/a/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lb/b/a/a/a;->b()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lb/b/a/a/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Lb/b/a/a/a;->c(Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lb/b/a/a/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method
