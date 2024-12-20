import 'package:flutter/material.dart';

class CustomDataTable extends StatelessWidget {
  final List<String> headers;
  final int dataRow;
  final List<String> data;
  final Color? rowTextColor;
  final Function(int)? onTap;

  const CustomDataTable({
    super.key,
    required this.headers,
    required this.dataRow,
    required this.data,
    this.rowTextColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    ScrollController horizontalScrollController = ScrollController();
    ScrollController verticalScrollController = ScrollController();

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            controller: horizontalScrollController,
            scrollDirection: Axis.horizontal,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  Container(
                    color: Colors.grey,
                    child: SingleChildScrollView(
                      child: Row(
                        children: List.generate(
                          headers.length,
                          (index) => Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                            width: 150,
                            child: Text(
                              headers[index],
                              style: getTextTheme(context).bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Data Rows
                  Expanded(
                    child: SizedBox(
                      child: Scrollbar(
                        controller: verticalScrollController,
                        thumbVisibility: true,
                        child: Scrollbar(
                          controller: horizontalScrollController,
                          thumbVisibility: true,
                          scrollbarOrientation: ScrollbarOrientation.bottom,
                          child: SingleChildScrollView(
                            controller: verticalScrollController,
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: List.generate(
                                dataRow,
                                (rowIndex) => InkWell(
                                  onTap: onTap != null ? () => onTap?.call(rowIndex) : null,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey.shade300,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      children: List.generate(
                                        data.length,
                                        (colIndex) => Container(
                                          width: 150,
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 15,
                                            vertical: 12,
                                          ),
                                          child: Text(
                                            data[colIndex].length > 17 ? "${data[colIndex].substring(0, 17)}..." : data[colIndex],
                                            style: getTextTheme(context).labelLarge?.copyWith(
                                                  color: rowTextColor ?? Colors.black,
                                                ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

TextTheme getTextTheme(BuildContext context) => TextTheme.of(context);
