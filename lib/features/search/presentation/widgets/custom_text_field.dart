import 'package:bookShelf/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (val)=>
      BlocProvider.of<SearchCubit>(context).getSearchBooks(keyWord: val),
      decoration: InputDecoration(
        border: buildTextFieldBorder(),
        filled: true,
        hintText: "Search",
        suffixIcon: Icon(Icons.search),
        fillColor: Colors.white.withOpacity(0.1),
        focusedBorder: buildTextFieldBorder(),
        enabledBorder: buildTextFieldBorder(),
      ),
    );
  }

  OutlineInputBorder buildTextFieldBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.white.withOpacity(0.2)));
  }
}
