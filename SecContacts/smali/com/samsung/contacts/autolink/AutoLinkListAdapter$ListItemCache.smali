.class Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;
.super Ljava/lang/Object;
.source "AutoLinkListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/autolink/AutoLinkListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListItemCache"
.end annotation


# instance fields
.field public final accountIconList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public final accountIconOne:Landroid/widget/ImageView;

.field public final accountIconThree:Landroid/widget/ImageView;

.field public final accountIconTwo:Landroid/widget/ImageView;

.field public final checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field public final divider:Landroid/view/View;

.field public final groupData:Landroid/widget/LinearLayout;

.field public final listData:Landroid/widget/LinearLayout;

.field public final nameGroup:Landroid/widget/TextView;

.field public final photo:Landroid/widget/ImageView;

.field public final primaryData:Landroid/widget/TextView;

.field public final secondaryData:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f08003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->listData:Landroid/widget/LinearLayout;

    const v0, 0x7f080044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->groupData:Landroid/widget/LinearLayout;

    const v0, 0x7f08003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->photo:Landroid/widget/ImageView;

    const v0, 0x7f08003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->primaryData:Landroid/widget/TextView;

    const v0, 0x7f08003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->secondaryData:Landroid/widget/TextView;

    const v0, 0x7f080045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->nameGroup:Landroid/widget/TextView;

    const v0, 0x7f080043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->divider:Landroid/view/View;

    const v0, 0x7f08003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v0, 0x7f080040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconOne:Landroid/widget/ImageView;

    const v0, 0x7f080041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconTwo:Landroid/widget/ImageView;

    const v0, 0x7f080042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconThree:Landroid/widget/ImageView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconOne:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconTwo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/contacts/autolink/AutoLinkListAdapter$ListItemCache;->accountIconThree:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
