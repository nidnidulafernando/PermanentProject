import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../features/explore_screen/domain/entities/vendor_parent_company_datum.dart';
import '../../util/api_endpoints.dart';
import '../utils/colors.dart';

class VendorCard extends StatefulWidget {
  final VendorParentCompanyDatumEntity vendor;

  const VendorCard({Key? key, required this.vendor}) : super(key: key);

  @override
  State<VendorCard> createState() => _VendorCardState();
}

class _VendorCardState extends State<VendorCard> {
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
                        image: NetworkImage("${ApiEndpoints.baseURL}${widget.vendor.profileImg}"),
                        fit: BoxFit.cover,
                        onError: (exception, stackTrace) {
                          if (kDebugMode) {
                            print('Error loading image: $exception');
                          }
                        },
                      ),
                    ),
                    child: widget.vendor.coverImg.isNotEmpty
                        ? Image.network(
                      "${ApiEndpoints.baseURL}${widget.vendor.coverImg}",
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
                        child: widget.vendor.profileImg.isNotEmpty
                            ? Image.network(
                          "${ApiEndpoints.baseURL}${widget.vendor.profileImg}",
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
                      Icons.favorite ,
                      color: isLiked ? AppColors.redColor : AppColors.grayColor,
                      size: 21,
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
                  widget.vendor.name,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 12),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Rating: ',
                        style: TextStyle(color: AppColors.blackColor, fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: '${widget.vendor.rating} ',
                        style: const TextStyle(color: AppColors.primaryColor, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 11),
                Text(
                  widget.vendor.description,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.vendorDescription.withOpacity(0.7)),
                  maxLines: 3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
