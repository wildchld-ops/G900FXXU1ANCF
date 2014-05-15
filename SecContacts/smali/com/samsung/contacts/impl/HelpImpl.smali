.class public Lcom/samsung/contacts/impl/HelpImpl;
.super Ljava/lang/Object;
.source "HelpImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;,
        Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;
    }
.end annotation


# instance fields
.field private mTutorialPopupview:Lcom/samsung/contacts/impl/TutorialPopupView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;->HELP_BASIC:Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/contacts/impl/HelpImpl;-><init>(Landroid/content/Context;Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/contacts/impl/HelpImpl;->createTutorialPopupView(Landroid/content/Context;Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createTutorialPopupView(Landroid/content/Context;Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpImpl;->hide()V

    new-instance v0, Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/contacts/impl/TutorialPopupView;-><init>(Landroid/content/Context;Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/contacts/impl/HelpImpl;->mTutorialPopupview:Lcom/samsung/contacts/impl/TutorialPopupView;

    return-void
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpImpl;->mTutorialPopupview:Lcom/samsung/contacts/impl/TutorialPopupView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpImpl;->mTutorialPopupview:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-virtual {v0}, Lcom/samsung/contacts/impl/TutorialPopupView;->hide()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpImpl;->mTutorialPopupview:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-virtual {v0}, Lcom/samsung/contacts/impl/TutorialPopupView;->initialize()V

    return-void
.end method

.method public setArrowVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpImpl;->mTutorialPopupview:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/impl/TutorialPopupView;->setArrowVisibility(Z)V

    return-void
.end method

.method public setBubbleAndIndicatorLeftPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpImpl;->mTutorialPopupview:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/impl/TutorialPopupView;->setBubbleAndIndicatorLeftPosition(I)V

    return-void
.end method

.method public setOnIndicatorTouchListener(Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpImpl;->mTutorialPopupview:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/impl/TutorialPopupView;->setOnIndicatorTouchListener(Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;)V

    return-void
.end method

.method public setOnSecondIndicatorTouchListener(Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpImpl;->mTutorialPopupview:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/impl/TutorialPopupView;->setOnSecondIndicatorTouchListener(Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;)V

    return-void
.end method

.method public setPostionFromBottom(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpImpl;->mTutorialPopupview:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/impl/TutorialPopupView;->setPostionFromBottom(I)V

    return-void
.end method

.method public setSoundDisable()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpImpl;->mTutorialPopupview:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-virtual {v0}, Lcom/samsung/contacts/impl/TutorialPopupView;->setSoundDisable()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpImpl;->mTutorialPopupview:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/impl/TutorialPopupView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setTopPostion(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpImpl;->mTutorialPopupview:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/impl/TutorialPopupView;->setTopPostion(I)V

    return-void
.end method

.method public setTouchableArea(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpImpl;->mTutorialPopupview:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-virtual {v0, p1}, Lcom/samsung/contacts/impl/TutorialPopupView;->setTouchableArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public show(ZZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpImpl;->mTutorialPopupview:Lcom/samsung/contacts/impl/TutorialPopupView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/contacts/impl/TutorialPopupView;->show(ZZZ)V

    return-void
.end method
