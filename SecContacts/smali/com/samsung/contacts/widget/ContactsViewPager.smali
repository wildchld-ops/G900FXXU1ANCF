.class public Lcom/samsung/contacts/widget/ContactsViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ContactsViewPager.java"


# static fields
.field public static mPointerY:I


# instance fields
.field private mIsViewPagerEnabled:Z

.field public tabStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/contacts/widget/ContactsViewPager;->tabStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/contacts/widget/ContactsViewPager;->tabStatus:I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    div-int/lit16 v1, v2, 0xff

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/samsung/contacts/widget/ContactsViewPager;->mPointerY:I

    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/StaleDataException;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/samsung/contacts/widget/ContactsViewPager;->tabStatus:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/contacts/ContactsApplication;->dialerEnter:Lcom/samsung/contacts/ContactsPerformance;

    invoke-virtual {v0}, Lcom/samsung/contacts/ContactsPerformance;->endTimeAndMemoryStamp()Z

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/widget/ContactsViewPager;->mIsViewPagerEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/widget/ContactsViewPager;->mIsViewPagerEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollFragment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/widget/ContactsViewPager;->mIsViewPagerEnabled:Z

    return-void
.end method

.method public setTabStatus(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/widget/ContactsViewPager;->tabStatus:I

    return-void
.end method
