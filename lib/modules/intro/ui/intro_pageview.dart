import 'package:hive/hive.dart';
import 'package:shopywell/constants/color_constants.dart';
import 'package:shopywell/enums/route_enums.dart';
import 'package:shopywell/modules/intro/ui/choose_products_intro.dart';
import 'package:shopywell/modules/intro/ui/get_order_intro.dart';
import 'package:shopywell/modules/intro/ui/payment_intro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class IntroPageview extends HookWidget {
  const IntroPageview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 3);
    final index = useState(0);

    useEffect(() {
      tabController.addListener(() {
        index.value = tabController.index;
      });
      return null;
    }, [tabController]);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:ColorConstants.bgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  ChooseProductsIntro(),
                  PaymentIntro(),
                  GetOrderIntro(),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20 ),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                tabController.index!=0?  InkWell(
                    onTap: ()=>tabController.index--,
                    child: Text("Prev",style: Theme.of(context).textTheme.displaySmall?.copyWith(color: ColorConstants.greyColor),)):SizedBox(),
              
                  SizedBox(
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
                        for(int i=0;i<3;i++)
                         Tab(
                          child: Container(
                            
                            height: 10,
                            width:tabController.index == i?50: 10,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              color: tabController.index == i ? Colors.black : ColorConstants.greyColor,
                              borderRadius:BorderRadius.circular(30) ,
                              
                            ),
                          ),
                        )
                      ]
                      
                       
                        
                      
                    ),
                  ),
                  InkWell(
                    onTap: (){if(tabController.index!=2) {tabController.index++;}
                    else{ var box = Hive.box('firstTimeData');
                              box.put('isFirstTime', false); context.pushReplacementNamed(RoutePath.login.name);}},
                    child: Text(tabController.index==2?"Get Started":"Next",style: Theme.of(context).textTheme.displaySmall?.copyWith(color: ColorConstants.primary),))
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
