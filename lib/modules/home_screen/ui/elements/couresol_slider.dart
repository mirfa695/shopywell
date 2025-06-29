import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopywell/constants/color_constants.dart';

class CouresolSlider extends HookConsumerWidget {
  final List<String>? images;
  const CouresolSlider({Key? key,this.images}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
  
    final tabController = useTabController(initialLength: images?.length??0);
    final index = useState(0);

    useEffect(() {
      tabController.addListener(() {
        index.value = tabController.index;
      });
      return null;
    }, [tabController]);
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            width: 350,
            child: Card(
              
              child: TabBarView(
                controller: tabController,
                children:  images?.map((e){
                    return Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), image:DecorationImage(image: NetworkImage(e),fit: BoxFit.cover)) );
                  }).toList()??[]
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 ),
            child: SizedBox(
              height: 30,
              width: 200,
              child: TabBar(
                controller: tabController,
                isScrollable: true, 
                splashFactory: NoSplash.splashFactory,
                indicator: const BoxDecoration(), 
                labelPadding: EdgeInsets.zero,
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                tabs:
                [
                  for(int i=0;i<(images?.length??0);i++)
                   Tab(
                    child: Container(
                      
                      height: 10,
                      width: 10,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: tabController.index == i ? ColorConstants.secondary : ColorConstants.greyColor,
                        borderRadius:BorderRadius.circular(30) ,
                        
                      ),
                    ),
                  )
                ]
                
                 
                  
                
              ),
            ),
          ),
         
        ],
    );
  }
}
