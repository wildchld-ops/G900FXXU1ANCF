.class Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HorizontalButtonCache"
.end annotation


# instance fields
.field public final additionalRcsFTButton:Landroid/widget/ImageView;

.field public final additionalRcsFTDivider:Landroid/view/View;

.field public final additionalRcsIMButton:Landroid/widget/ImageView;

.field public final additionalRcsIMDivider:Landroid/view/View;

.field public final divider:Landroid/view/View;

.field public final leftButton:Landroid/widget/ImageView;

.field public final middleButton:Landroid/widget/ImageView;

.field public final rightButton:Landroid/widget/ImageView;

.field public final secondDivider:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0800ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->leftButton:Landroid/widget/ImageView;

    const v0, 0x7f0800f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->divider:Landroid/view/View;

    const v0, 0x7f0800f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->middleButton:Landroid/widget/ImageView;

    const v0, 0x7f0800f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->secondDivider:Landroid/view/View;

    const v0, 0x7f0800f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->rightButton:Landroid/widget/ImageView;

    const v0, 0x7f0800f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsIMDivider:Landroid/view/View;

    const v0, 0x7f0800f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsIMButton:Landroid/widget/ImageView;

    const v0, 0x7f0800f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsFTDivider:Landroid/view/View;

    const v0, 0x7f0800f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HorizontalButtonCache;->additionalRcsFTButton:Landroid/widget/ImageView;

    return-void
.end method
