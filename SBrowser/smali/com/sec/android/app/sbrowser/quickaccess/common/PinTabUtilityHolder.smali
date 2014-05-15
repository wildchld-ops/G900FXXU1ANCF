.class public Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;
.super Ljava/lang/Object;
.source "PinTabUtilityHolder.java"


# instance fields
.field private mPosition:I

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getmPosition()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;->mPosition:I

    return v0
.end method

.method public getmTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getmUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setmPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;->mPosition:I

    return-void
.end method

.method public setmTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setmUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/common/PinTabUtilityHolder;->mUrl:Ljava/lang/String;

    return-void
.end method
