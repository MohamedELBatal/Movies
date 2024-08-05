import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/api/api_manager.dart';
import 'package:movies_app/features/browse/data/models/BrowseModel.dart';
import 'package:movies_app/features/browse/data/repositories/browse_repo_impl.dart';
import 'package:movies_app/features/browse/domain/use_cases/get_browse_use_case.dart';
import 'package:movies_app/features/browse/presentation/bloc/browse_bloc.dart';
import 'package:movies_app/features/browse/presentation/widgets/browse_item.dart';

import '../../data/data_sources/browse_ds_impl.dart';

class BrowseTab extends StatefulWidget {
  static const String routeName = "Browse";

  BrowseTab({Key? key, this.genres}) : super(key: key);

  final List<Genres>? genres;

  @override
  State<BrowseTab> createState() => _BrowseTabState();
}

class _BrowseTabState extends State<BrowseTab> {
  late int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BrowseBloc(
        getBrowseUseCase: GetBrowseUseCase(
          BrowseRepoImpl(
            BrowseDSImpl(
              ApiManager(),
            ),
          ),
        ),
      )..add(const GetBrowseEvent()),
      child: BlocConsumer<BrowseBloc, BrowseState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Text(
                        "Browse Category",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 0),
                  ],
                ),
              ),
              Expanded(
                child: state.browseModel?.genres == null
                    ? const Center(child: CircularProgressIndicator())
                    : GridView.builder(
                  itemCount: state.browseModel!.genres!.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (192 / 250),
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                  ),
                  itemBuilder: (context, index) {
                    return BrowseItem(
                      browseModel: state.browseModel,
                      index: index,
                      genres: state.browseModel!.genres,
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
