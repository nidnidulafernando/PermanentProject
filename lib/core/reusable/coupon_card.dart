import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../util/api_endpoints.dart';
import '../functions/number_formater.dart';
import '../utils/colors.dart';

class CouponCard extends StatefulWidget {
  final String coverImg;
  final String profileImg;
  final String companyName;
  final int value;
  final String valueType;
  final bool isLimited;
  final bool isAvailableForExpired;
  final String title;

  const CouponCard({
    Key? key,
    required this.coverImg,
    required this.profileImg,
    required this.companyName,
    required this.value,
    required this.valueType,
    required this.isLimited,
    required this.isAvailableForExpired,
    required this.title,
  }) : super(key: key);

  @override
  State<CouponCard> createState() => _CouponCardState();
}

class _CouponCardState extends State<CouponCard> {
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      child: Column(
        children: [
          SizedBox(
            height: 90,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("${ApiEndpoints.baseURL}${widget.coverImg}"),
                        fit: BoxFit.cover,
                        onError: (exception, stackTrace) {
                          if (kDebugMode) {
                            print('Error loading image: $exception');
                          }
                        },
                      ),
                    ),
                    child: widget.coverImg.isNotEmpty
                        ? Image.network(
                      "${ApiEndpoints.baseURL}${widget.coverImg}",
                      fit: BoxFit.cover,
                      errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                        return Image.asset('assets/img/placeholder.png', fit: BoxFit.cover);
                      },
                    )
                        : Image.asset('assets/img/placeholder.png', fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 8,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColors.whiteColor,
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(blurRadius: 5, color: Colors.black12, spreadRadius: 3)],
                    ),
                    child: CircleAvatar(
                      radius: 38,
                      backgroundColor: AppColors.whiteColor,
                      child: ClipOval(
                        child: widget.profileImg.isNotEmpty
                            ? Image.network(
                          "${ApiEndpoints.baseURL}${widget.profileImg}",
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                          errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                            return Image.asset('assets/img/placeholder.png', width: 60, height: 60, fit: BoxFit.cover);
                          },
                        )
                            : Image.asset('assets/img/placeholder.png', width: 60, height: 60, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 4,
                  right: 8,
                  child: GestureDetector(
                    onTap: toggleLike,
                    child: Icon(
                      Icons.favorite,
                      color: isLiked ? AppColors.redColor : AppColors.grayColor,
                      size: 21,
                    ),
                  ),
                ),
                if (widget.isLimited || widget.isAvailableForExpired)
                  Positioned(
                    top: 3,
                    right: 3,
                    child: CircleAvatar(
                      radius: 11,
                      backgroundColor: AppColors.secondaryColor,
                      child: Icon(
                        Icons.access_time,
                        color: Colors.black.withOpacity(0.7),
                        size: 20,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.companyName,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 12),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Save ',
                        style: TextStyle(color: AppColors.blackColor, fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: '${formatNumberWithCommas(widget.value)} ',
                        style: const TextStyle(color: AppColors.primaryColor, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: widget.valueType,
                        style: const TextStyle(color: AppColors.primaryColor, fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 11),
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color:AppColors.vendorDescription.withOpacity(0.7)),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
