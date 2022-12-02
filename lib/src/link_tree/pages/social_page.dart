import 'package:flutter/material.dart';
import 'package:pinhotx_portal/src/public/widgets/layout/footer_root.dart';
import 'package:pinhotx_portal/src/public/widgets/layout/head_star.dart';
import 'package:url_launcher/url_launcher.dart';
import '../domain/models/social_link_model.dart';

import 'package:pinhotx_portal/src/link_tree/widgets/link_tree_widget.dart';

class SocialPage extends StatelessWidget {
  final List<SocialLinkModel> socialLinkList;
  final NetworkImage circleAvatarNetworkImage;
  final bool showFooter;
  final bool showAppBar;
  const SocialPage(
      {required this.socialLinkList,
      this.showFooter = true,
      this.showAppBar = true,
      this.circleAvatarNetworkImage = const NetworkImage(
          "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/1558345f-cf45-4aac-88de-171704d39cb2/dfalkrs-8ac1deab-a4e4-4f47-8c6a-a841e1bb7569.png/v1/fill/w_901,h_887,strp/2022_new_taiego_ruido_by_tiagopinhotx_dfalkrs-pre.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI2MCIsInBhdGgiOiJcL2ZcLzE1NTgzNDVmLWNmNDUtNGFhYy04OGRlLTE3MTcwNGQzOWNiMlwvZGZhbGtycy04YWMxZGVhYi1hNGU0LTRmNDctOGM2YS1hODQxZTFiYjc1NjkucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.74_vd1vRWi5U_dO2IVaHwMSAOh21bctAM3fVmymBuvA"),
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar
          ? const HeadStar(
              title: Text("Social Tree"),
              centerTitle: true,
            )
          : null,
      body: Center(
        child: Column(
          children: <Widget>[
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 8,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: circleAvatarNetworkImage,
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 16,
              child: SizedBox(
                width: 350,
                child: LinkTreeWidget(socialLinkList: socialLinkList),
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FooterRoot(
        child: showFooter
            ? LinkTreeWidget.footer(socialLinkList: socialLinkList)
            : const Text(
                "Under Development | Made by Pinhotx (Tiago Silveira)",
                style: TextStyle(color: Colors.green),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("HTML"),
        onPressed: () => launchUrl(
          Uri.parse("https://tiagopinhotx.github.io/social-links"),
        ),
      ),
    );
  }
}
