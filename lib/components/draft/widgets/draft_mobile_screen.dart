import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_beta/components/draft/widgets/draft_card.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/db/student_forum/draft.dart';
import 'package:project_beta/db/student_forum/draft_data.dart';
import 'package:project_beta/theme/app_theme.dart';

class DraftMobileScreen extends StatefulWidget {
  const DraftMobileScreen({Key? key}) : super(key: key);

  @override
  State<DraftMobileScreen> createState() => _DraftMobileScreenState();
}

class _DraftMobileScreenState extends State<DraftMobileScreen> {
  DraftDataTable draftDataTable = DraftDataTable();

  @override
  void initState() {
    super.initState();
    initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.pampas,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Save Draft"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Beamer.of(context).beamToNamed(AppRoutes.addPost),
          backgroundColor: Colors.blue,
          child: Icon(Icons.add),
        ),
        body: SingleChildScrollView(
            child: draftDataTable.draftList.length == 0
                ? Container(
                    child: Center(
                      child: Text("No saved draft !"),
                    ),
                  )
                : ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: draftDataTable.draftList.length,
                    itemBuilder: (context, index) {
                      return DraftCard(
                        onCardTap: () {
                          Beamer.of(context).beamToNamed(
                              AppRoutes.updatePostScreen +
                                  "/" +
                                  draftDataTable.draftList[index].id!);
                        },
                        draftModel: draftDataTable.draftList[index],
                        onDeleteCalled: () =>
                            deleteDraft(draftDataTable.draftList[index].id),
                      );
                    })));
  }

  initData() async {
    draftDataTable = await DraftDatabase.getAllDrafts();
    setState(() {});
  }

  deleteDraft(id) async {
    await DraftDatabase.deleteDraft(id);
    initData();
  }

  getAppBar() {
    return AppBar(
      leading: SizedBox(),
      toolbarHeight: 100.0,
      elevation: 0.0,
      backgroundColor: AppColor.pampas,
      centerTitle: true,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: AppColor.desertStorm, width: 2.0))),
        child: Column(
          children: [
            SizedBox(
              height: 88.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => context.beamBack(),
                    child: Icon(
                      Icons.keyboard_backspace,
                      color: AppColor.primaryColor,
                      size: 36.0,
                    ),
                  ),
                  Text(
                    "Saved Draft",
                    style: GoogleFonts.barlow(
                        fontSize: 22.0,
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 24.0,
                    width: 24.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
