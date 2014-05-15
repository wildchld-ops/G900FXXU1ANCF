.class public Lcom/samsung/android/sdk/SsdkUnsupportedException;
.super Ljava/lang/Exception;
.source "SsdkUnsupportedException.java"


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mType:I

.field private mVersionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mType:I

    iput v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mVersionCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mType:I

    return-void
.end method
