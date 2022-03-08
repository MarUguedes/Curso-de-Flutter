import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final birthDateControler = TextEditingController();
  final birthDateFocusNode = FocusNode();
  final phoneFocusNode = FocusNode();
  final userNameFocusNode = FocusNode();
  bool obscureText = true;
  bool emailChecked = false;
  bool phoneCheked = false;
  bool aceptedTerms = false;
  DateTime? selectedBirthDate;

  final emailRegex = RegExp(
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");

  final phoneMask = MaskTextInputFormatter(
      mask: ' (##) #####-####', filter: {'# ': RegExp(r'0-9')});
  void showSignUpDialog(BuildContext context) {
    setState(() {
      showDialog<bool>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Sign Up'),
              content: const Text('Deseja efetuar o cadastro?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('Não'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('Sim'),
                ),
              ],
            );
          }).then((confirmedSignUp) {
        if (confirmedSignUp != null && confirmedSignUp) {
          emailChecked = true;
          phoneCheked = true;
          aceptedTerms = false;

          Form.of(context)?.reset();
          birthDateControler.clear();

          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Usuário cadastrado com sucesso')));
        }
      });
    });
  }

  void showBirthDatePicker() {
    final now = DateTime.now();
    final eighteenYearAgo = DateTime(now.year - 18, now.month, now.day);

    showDatePicker(
            context: context,
            firstDate: DateTime(1900),
            initialDate: selectedBirthDate ?? eighteenYearAgo,
            lastDate: eighteenYearAgo,
            initialEntryMode: DatePickerEntryMode.calendarOnly,
            initialDatePickerMode: DatePickerMode.year)
        .then((selectedDate) {
      if (selectedDate != null) {
        selectedBirthDate = selectedDate;
        birthDateControler.text =
            '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}';
        phoneFocusNode.requestFocus();
      }
    });
    birthDateFocusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Form(
        child: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          child: Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: [
                  builHeader('Dados de Acesso'),
                  TextFormField(
                      autofocus: true,
                      decoration: const InputDecoration(
                        labelText: 'Nome de usuário',
                        border: OutlineInputBorder(),
                      ),
                      textInputAction: TextInputAction.next,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: emptyValidator),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    focusNode: userNameFocusNode,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: emailValidator,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      inputFormatters: [LengthLimitingTextInputFormatter(16)],
                      decoration: const InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
                      ).copyWith(
                          helperText: 'Mínimo de 8 caracteres',
                          suffixIcon: ExcludeFocus(
                            child: IconButton(
                                onPressed: (() => setState(() {
                                      obscureText = !obscureText;
                                    })),
                                icon: obscureText
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility)),
                          )),
                      obscureText: obscureText,
                      textInputAction: TextInputAction.next,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: passwordValidator),
                  const SizedBox(
                    height: 20,
                  ),
                  builHeader('Informações Pessoais'),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Nome completo',
                      border: OutlineInputBorder(),
                    ),
                    textInputAction: TextInputAction.next,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: fullNameValidator,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    Expanded(
                      flex: 6,
                      child: Focus(
                        focusNode: birthDateFocusNode,
                        descendantsAreFocusable:
                            false, // para q o text field nao brigue com o datepicker pelo foco
                        onFocusChange: (hasFocus) {
                          if (hasFocus) {
                            showBirthDatePicker();
                          }
                        },
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: emptyValidator,
                          controller: birthDateControler,
                          decoration: const InputDecoration(
                            labelText: 'Data de nascimento',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          readOnly: true,
                          onTap: showBirthDatePicker,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 5,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Celular',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                        inputFormatters: [phoneMask],
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (phone) {
                          final emptyError = emptyValidator(phone);
                          if (emptyError == null && phone != null) {
                            final phoneDigits = phoneMask.unmaskText(phone);
                            if (phoneDigits.length < 11) {
                              return 'Número inválido';
                            }
                          }
                          return emptyError;
                        },
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
                  builHeader('Deseja receber contato por'),
                  ContactTile(
                    contactTile: 'Email',
                    contactIcon: Icons.email,
                    value: phoneCheked,
                    onChanged: (value) {
                      setState(() {
                        phoneCheked = value!;
                      });
                    },
                  ),
                  ContactTile(
                      contactTile: 'Telefone',
                      contactIcon: Icons.phone,
                      value: emailChecked,
                      onChanged: (value) {
                        setState(() {
                          emailChecked = value!;
                        });
                      }),
                  FormField(
                    validator: (_) {
                      if (!aceptedTerms) {
                        return 'Os termos não foram aceitos';
                      }
                      return null;
                    },
                    builder: (formFieldState) {
                      final errorText = formFieldState.errorText;

                      return SwitchListTile(
                          title: const Text(
                            ' Aceito os Termos e Condições',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          subtitle: errorText != null
                              ? Text(
                                  errorText,
                                )
                              : null,
                          value: aceptedTerms,
                          onChanged: (value) {
                            setState(() {
                              aceptedTerms = value;
                            });
                          });
                    },
                  ),
                  Builder(builder: (context) {
                    return ElevatedButton(
                        onPressed: () {
                          final formState = Form.of(context);
                          if (formState != null && formState.validate()) {
                            showSignUpDialog(context);
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Enviar'),
                        ));
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String? fullNameValidator(fullName) {
    final emptyError = emptyValidator(fullName);
    if (emptyError == null && fullName != null) {
      if (fullName.split(' ').length == 1) {
        return 'Digite o seu nome completo';
      }
    }
    return emptyError;
  }

  String? passwordValidator(password) {
    final emptyError = emptyValidator(password);
    if (emptyError == null && password != null) {
      if (password.length < 8) {
        return 'Mínimo de 8 caracteres';
      }
    }
    return emptyError;
  }

  String? emailValidator(email) {
    final emptyError = emptyValidator(email);
    if (emptyError == null && email != null) {
      if (!emailRegex.hasMatch(email)) {
        return 'E-mail inválido';
      }
    }
    return emptyError;
  }

  @override
  void dispose() {
    phoneFocusNode.dispose();
    birthDateFocusNode.dispose();
    birthDateControler.dispose();
    userNameFocusNode.dispose();
    super.dispose();
  }

  Padding builHeader(String texto) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0, top: 5.0),
      child: Text(texto,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
    );
  }
}

class ContactTile extends StatefulWidget {
  const ContactTile({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.contactTile,
    required this.contactIcon,
  }) : super(key: key);
  final bool value;

  final ValueChanged<bool?> onChanged;
  final String contactTile;
  final IconData contactIcon;
  @override
  State<ContactTile> createState() => _ContactTileState();
}

class _ContactTileState extends State<ContactTile> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      dense: true,
      secondary: Icon(widget.contactIcon),
      onChanged: widget.onChanged,
      value: widget.value,
      title: Text(widget.contactTile),
    );
  }
}

String? emptyValidator(String? text) {
  if (text == null || text.isEmpty) {
    return 'Campo Obrigatório';
  }
  return null;
}
