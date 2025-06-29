import 'package:flutter/material.dart';

class CommonDropdown<T> extends StatefulWidget {
  final List<T>? items;
  final Future<List<T>> Function()? asyncItems;
  final T? value;
  final String hint;
  final ValueChanged<T?> onChanged;
  final String Function(T)? itemLabel;
  final IconData? prefixIcon;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;

  const CommonDropdown({
    Key? key,
    this.items,
    this.asyncItems,
    required this.value,
    required this.hint,
    required this.onChanged,
    this.itemLabel,
    this.prefixIcon,
    this.padding,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  _CommonDropdownState<T> createState() => _CommonDropdownState<T>();
}

class _CommonDropdownState<T> extends State<CommonDropdown<T>> {
  List<T>? _items;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    if (widget.asyncItems != null) {
      _loadAsyncItems();
    } else {
      _items = widget.items;
    }
  }

  Future<void> _loadAsyncItems() async {
    setState(() => _isLoading = true);
    _items = await widget.asyncItems!();
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? const CircularProgressIndicator()
        : Container(
            height:widget.height?? 40,
            width: widget.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey[300]!, width: 0.5),
            ),
            child: Padding(
              padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
              child: Row(
                children: [
                  if (widget.prefixIcon != null)
                    Icon(widget.prefixIcon, color: Colors.black, size: 18),
                  SizedBox(width: widget.prefixIcon != null ? 4.0 : 0),
                  Expanded(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButton<T>(
                        dropdownColor: Colors.white,
                        value: widget.value,
                        hint: Text(
                          widget.hint,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        isExpanded: true,
                        underline: const SizedBox(),
                        items: _items?.map((T item) {
                          return DropdownMenuItem<T>(
                            value: item,
                            child: Text(
                              widget.itemLabel != null
                                  ? widget.itemLabel!(item)
                                  : item.toString(),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          );
                        }).toList(),
                        onChanged: widget.onChanged,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
