.class public Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SavedMsgsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/SavedMsgsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/mms/ui/SavedMsgsList;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/ui/SavedMsgsList;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    const v0, 0x7f040081

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->mFiles:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->mFiles:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    move-object v6, p2

    invoke-virtual {p0, p1}, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    if-nez v6, :cond_0

    iget-object v8, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v8}, Lcom/samsung/mms/ui/SavedMsgsList;->access$800(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040081

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    :cond_0
    const v8, 0x7f0b0287

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v8, 0x7f0b028a

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v8, 0x7f0b0289

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "extSdCard"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-virtual {v8}, Lcom/samsung/mms/ui/SavedMsgsList;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020298

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    const v8, 0x7f0b0288

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0b028b

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    iget-object v11, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/mms/ui/SavedMsgsList;->formatDate(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0b005e

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v8, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mMultiMode:Z
    invoke-static {v8}, Lcom/samsung/mms/ui/SavedMsgsList;->access$900(Lcom/samsung/mms/ui/SavedMsgsList;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1000(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1000(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mFilesSelected:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1000(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->convFiles:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1100(Lcom/samsung/mms/ui/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->fileList:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1200(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    #getter for: Lcom/samsung/mms/ui/SavedMsgsList;->fileList:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/samsung/mms/ui/SavedMsgsList;->access$1200(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/ListView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, p1, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_1
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_2
    return-object v6

    :cond_2
    iget-object v8, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-virtual {v8}, Lcom/samsung/mms/ui/SavedMsgsList;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020297

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v8, p0, Lcom/samsung/mms/ui/SavedMsgsList$FileArrayAdapter;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/samsung/mms/ui/SavedMsgsList;->formatSize(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_5
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_2
.end method
