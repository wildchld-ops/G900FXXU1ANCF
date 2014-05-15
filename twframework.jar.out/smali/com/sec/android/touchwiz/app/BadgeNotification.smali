.class public Lcom/sec/android/touchwiz/app/BadgeNotification;
.super Ljava/lang/Object;
.source "BadgeNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.badge"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://com.sec.badge/"

#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "BadgeNotification"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/sec/android/touchwiz/app/BadgeNotification;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/touchwiz/app/BadgeNotification;->DEBUGGABLE:Z

    return v0
.end method
