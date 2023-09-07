import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            color: Colors.red,
            border: Border.all(
              color: Colors.yellow,
              width: 3,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              color: Colors.red,
              border: Border.all(
                color: Colors.indigo.shade700,
                width: 3,
              ),
            ),
            child: const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              backgroundImage:
                  AssetImage('lib/core/assets/images/profile_dvd.jpeg'),
            ),
          ),
        ),
        Column(
          children: [
            Text(
              'Deivide Paulino',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text('Tenho um pokestop em casa :)',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: Colors.grey.shade500,
                      fontSize: 12,
                    )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildButton(
              color: Colors.indigo.shade900,
              text: 'Follow',
              textColor: Colors.white,
            ),
            const SizedBox(width: 20),
            _buildButton(
              color: Colors.grey.shade400,
              text: 'Message',
              textColor: Colors.indigo.shade900,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                'Sobre mim',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  'Mussum Ipsum, cacilds vidis litro abertis. Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo! Paisis, filhis, espiritis santis. A ordem dos tratores não altera o pão duris. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontSize: 12,
                      ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Sobre o projeto',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  'Protótipo realizado para fins de estudos de interface e implementação para a Garaní Sistemas',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontSize: 12,
                      ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
              3,
              (index) => GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(),
                  )),
        ),
      ],
    );
  }

  Widget _buildButton({
    required Color color,
    required String text,
    required Color textColor,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
