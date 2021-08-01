## Rota manual *  link: Rota nomeadas https://www.youtube.com/watch?v=9olJ-lTSM8E
    Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) => Coluna()) );

## Color Elementos
    Style: TextStyle(
        fontSize: 19.5,
        fontWeight: FontWeight.w700,
        color: Colors.deepOrange
    ), // Text Field

## Component Texto
    TextField(
          labelText: 'Email',
          border: OutlineInputBorder()
    ),
## Component Text com Variaveis
    TextField(
      onChanged: (text){ email = text; },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: 'Email',
          border: OutlineInputBorder()
      ),
    ),
## Button ElevatedButton */
    ElevatedButton( onPressed: () {
        }, child: Text('Entrar'),
    ),

## Espaçamento  */
    SizedBox(height: 10),

