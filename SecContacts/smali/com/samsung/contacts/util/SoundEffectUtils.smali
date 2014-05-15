.class public Lcom/samsung/contacts/util/SoundEffectUtils;
.super Ljava/lang/Object;
.source "SoundEffectUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTouchListenerForSoundEffect(Landroid/view/View;)V
    .locals 2

    instance-of v0, p0, Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/SearchView;

    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-instance v1, Lcom/samsung/contacts/util/SoundEffectUtils$1;

    invoke-direct {v1}, Lcom/samsung/contacts/util/SoundEffectUtils$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method
