import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<String> _svgAssets = [
    'lib/core/assets/svg/profile/github.svg',
    'lib/core/assets/svg/profile/linkedin.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: (MediaQuery.sizeOf(context).width < 600)
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Container(
          margin: (MediaQuery.sizeOf(context).width < 600)
              ? const EdgeInsets.all(0)
              : const EdgeInsets.only(left: 80),
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
        Padding(
          padding: (MediaQuery.sizeOf(context).width < 600)
              ? const EdgeInsets.all(0)
              : const EdgeInsets.only(left: 80),
          child: Column(
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
        ),
        Container(
          margin: (MediaQuery.sizeOf(context).width < 600)
              ? const EdgeInsets.all(0)
              : const EdgeInsets.only(left: 80),
          width: (MediaQuery.sizeOf(context).width < 600) ? null : 600,
          child: Row(
            mainAxisAlignment: (MediaQuery.sizeOf(context).width < 600)
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              _buildButton(
                color: Colors.indigo.shade900,
                text: 'Follow',
                textColor: Colors.white,
                onPressed: () async {
                  await launchUrl(
                    Uri.parse('https://www.instagram.com/deividepaulino'),
                    mode: LaunchMode.externalApplication,
                  );
                },
              ),
              const SizedBox(width: 20),
              _buildButton(
                  color: Colors.grey.shade400,
                  text: 'Message',
                  textColor: Colors.indigo.shade900,
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse(
                          'https://api.whatsapp.com/send?phone=5515988341654&text=Ol%C3%A1%20Deivide,%20qual%20seu%20pok%C3%A9mon%20preferido?'),
                      mode: LaunchMode.externalApplication,
                    );
                  }),
            ],
          ),
        ),
        Container(
          margin: (MediaQuery.sizeOf(context).width < 600)
              ? const EdgeInsets.all(0)
              : const EdgeInsets.only(left: 70),
          constraints: const BoxConstraints(
            maxWidth: 600,
          ),
          child: Padding(
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
                    'Dev Flutter com experiência anterior em desenvolvimento  utilizando Angular e Ionic. Testes Unitários e Automátizados com diversas ferramentas, como Cypress, Selenium, Protractor, entre outras. Designer gráfico, UX Designer. Maior caçador de pokemons da minha casa',
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
                    'Demo de uma pokedex utilizando Flutter com uma arquitetura simples, sem padrão definido. \nConsumo de api com Dio. Gerenciamento de estado com ASP, Rotas com Modular, Testes ainda não implementados.',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontSize: 12,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: (MediaQuery.sizeOf(context).width < 600)
              ? const EdgeInsets.all(0)
              : const EdgeInsets.only(left: 80),
          width: (MediaQuery.sizeOf(context).width < 600) ? null : 600,
          child: Row(
            mainAxisAlignment: (MediaQuery.sizeOf(context).width < 600)
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.start,
            children: List.generate(
              2,
              (index) => Row(
                children: [
                  InkWell(
                    onTap: () async {
                      if (index == 0) {
                        await launchUrl(
                          Uri.parse('https://github.com/deividepaulino1'),
                          mode: LaunchMode.externalApplication,
                        );
                      } else {
                        await launchUrl(
                          Uri.parse(
                              'https://www.linkedin.com/in/deividepaulino/'),
                          mode: LaunchMode.externalApplication,
                        );
                      }
                    },
                    child: SvgPicture.asset(
                      _svgAssets[index],
                      height: 35,
                      width: 35,
                    ),
                  ),
                  if (MediaQuery.sizeOf(context).width > 600)
                    const SizedBox(width: 50),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildButton({
    required Color color,
    required String text,
    required Color textColor,
    required void Function() onPressed,
  }) {
    return Row(
      children: [
        GestureDetector(
          onTap: onPressed,
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
        ),
      ],
    );
  }
}
