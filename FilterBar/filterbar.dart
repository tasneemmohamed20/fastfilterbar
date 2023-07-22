import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/Screens/FilterBar/FilterBarCubit/filter_bar_cubit.dart';

class FastFilterBarC extends StatelessWidget {
   FastFilterBarC({super.key});
  

  // int selectedIndex = -1;
  // String selectedItemText = '';

  // String getSelectedItemText(int index) {
  //   switch (index) {
  //     case -1:
  //       return '';
  //     case 0:
  //       return 'Text 1';
  //     case 1:
  //       return 'Text 2';
  //     case 2:
  //       return 'Text 3';
  //     case 3:
  //       return 'Text 4';
  //     case 4:
  //       return 'Text 5';
  //     case 5:
  //       return 'Text 6';
  //     case 6:
  //       return 'Text 7';
  //     case 7:
  //       return 'Text 8';
  //     case 8:
  //       return 'Text 9';
  //     default:
  //       return '';
  //   }
  // }
  int indexxx=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BlocBuilder<FilterBarCubit, FilterBarState>(
              builder: (context, state) {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 40,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:20,
                        itemBuilder: (context, indexxx) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: FilterChip(
                              label: Text('Filter ${indexxx+1}'),
                             selected: context.read<FilterBarCubit>().SelectedIndex == indexxx,
                              onSelected: (selected) {
                                 context.read<FilterBarCubit>().SelectFilterBar(indexxx);

                              },
                              selectedColor: Colors.red,
                              showCheckmark: false,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 50,),

                  ],
                );
               
              }
            ),

          ],
        ),
      ),
    );
  }

}
