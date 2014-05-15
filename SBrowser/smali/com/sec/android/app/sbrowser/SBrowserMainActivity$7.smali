.class Lcom/sec/android/app/sbrowser/SBrowserMainActivity$7;
.super Ljava/lang/Thread;
.source "SBrowserMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->setDNIeMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$7;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    iput p2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$7;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$7;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$7;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1110079

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$7;->this$0:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "screen_mode_automatic_setting"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "e_reading_display_mode"

    const/16 v20, 0x0

    const/16 v21, -0x2

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v7, 0x1

    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v7, :cond_4

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "reading_mode_app_list"

    const/16 v20, -0x2

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v14, v11

    :cond_0
    new-array v13, v14, [Ljava/lang/String;

    new-array v12, v14, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v14, :cond_4

    const/4 v15, 0x0

    aget-object v18, v11, v4

    const/16 v19, 0x2f

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    aget-object v18, v11, v4

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    aget-object v18, v11, v4

    add-int/lit8 v19, v15, 0x1

    aget-object v20, v11, v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v16, v13, v4

    aput-object v2, v12, v4

    aget-object v18, v13, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/4 v8, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    if-nez v6, :cond_6

    :cond_5
    if-eqz v8, :cond_7

    :cond_6
    :goto_3
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$7;->val$mode:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$100()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setmDNIeUIMode("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$7;->val$mode:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") is set!!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->access$100()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception in setmDNIeUIMode("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$7;->val$mode:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
