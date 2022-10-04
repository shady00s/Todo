import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 21,fontFamily: 'MontserratBold' ),

      elevation: 0,
      leading:  Padding(
        padding:const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child:const Image(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://i.pinimg.com/originals/9f/74/53/9f74535608abc523efe3eb37a9a30a54.jpg'),
          ),
        ),
      ),
      title: const Text(
        "Hi, Shady!",
      ),
      actions: [
        IconButton(onPressed:(){}, icon:const Icon(Icons.more_vert_rounded ,color: Colors.black,),)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
