.class final Lcom/samsung/contacts/group/GroupAccountSelectionFragment$ListItemViewCache;
.super Ljava/lang/Object;
.source "GroupAccountSelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/group/GroupAccountSelectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListItemViewCache"
.end annotation


# instance fields
.field accountName:Landroid/widget/TextView;

.field accountType:Landroid/widget/TextView;

.field checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0801e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$ListItemViewCache;->accountType:Landroid/widget/TextView;

    const v0, 0x7f0801ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$ListItemViewCache;->accountName:Landroid/widget/TextView;

    const v0, 0x7f08003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$ListItemViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-void
.end method
