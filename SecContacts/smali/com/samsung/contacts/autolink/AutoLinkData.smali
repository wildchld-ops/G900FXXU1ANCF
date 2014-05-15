.class public Lcom/samsung/contacts/autolink/AutoLinkData;
.super Ljava/lang/Object;
.source "AutoLinkData.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public mCompareData:Ljava/lang/String;

.field public mIndex:I

.field public mIsChecked:Z

.field public mIsParent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
