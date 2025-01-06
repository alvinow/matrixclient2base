import 'package:matrixclient/modules/base/vwnode/vwnodecontent/vwnodecontent.dart';

class VwNodeContentUtil {
  static VwNodeContent? getAttachmentByTag(
      {required String tag, required List<VwNodeContent> attachments}) {
    VwNodeContent? returnValue;
    try {
      if (attachments != null)
        for (int la = 0; la < attachments.length; la++) {
          VwNodeContent currentNodeContent = attachments.elementAt(la);

          if (currentNodeContent.tag == tag) {
            return currentNodeContent;
          }
        }
    } catch (error) {}

    return returnValue;
  }
}
