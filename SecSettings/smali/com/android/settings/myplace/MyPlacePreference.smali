.class public Lcom/android/settings/myplace/MyPlacePreference;
.super Landroid/preference/Preference;
.source "MyPlacePreference.java"


# instance fields
.field private mId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/android/settings/myplace/MyPlacePreference;->mId:I

    return-void
.end method


# virtual methods
.method public getMyPlaceId()I
    .locals 1

    iget v0, p0, Lcom/android/settings/myplace/MyPlacePreference;->mId:I

    return v0
.end method
