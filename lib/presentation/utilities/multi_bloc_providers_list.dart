import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logics/bloc/cart_bloc/cart_management_bloc.dart';
import '../../business_logics/cubit/color_option_cubit/color_selector_cubit.dart';

class MultiBlocProviderList {
  static List<BlocProvider> providers() {
    return <BlocProvider>[
      BlocProvider<CartManagementBloc>(
        create: (context) => CartManagementBloc(),
      ),
      BlocProvider<ColorSelectorCubit>(
        create: (context) => ColorSelectorCubit(),
      ),
    ];
  }
}
