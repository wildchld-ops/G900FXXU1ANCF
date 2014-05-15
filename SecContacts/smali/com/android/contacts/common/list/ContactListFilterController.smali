.class public Lcom/android/contacts/common/list/ContactListFilterController;
.super Ljava/lang/Object;
.source "ContactListFilterController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;
    }
.end annotation


# static fields
.field private static sFilterController:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/common/list/ContactListFilterController;->sFilterController:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilterController;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/ContactListFilterController;->sFilterController:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactListFilterControllerImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/common/list/ContactListFilterController;->sFilterController:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    :cond_0
    sget-object v0, Lcom/android/contacts/common/list/ContactListFilterController;->sFilterController:Lcom/android/contacts/common/list/ContactListFilterControllerImpl;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;)V
    .locals 0

    return-void
.end method

.method public checkFilterValidity(Z)V
    .locals 0

    return-void
.end method

.method public getFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeListener(Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;)V
    .locals 0

    return-void
.end method

.method public selectCustomFilter()V
    .locals 0

    return-void
.end method

.method public setContactListFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V
    .locals 0

    return-void
.end method

.method public setFilterType(I)V
    .locals 6

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    const/4 v1, 0x1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    const/4 v1, -0x4

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    const/16 v1, -0xc

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
