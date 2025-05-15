import 'dart:io';

//CRUD Catálogo de Productos
List<String> productos = [];

void main(){
int opcion = 0;
bool continuar = true;
  while(continuar){
        print('-- Bienvenido al Sistema de Gestión de Productos --');
        print('1. Agregar producto');
        print('2. Listar producto');
        print('3. Actualizar producto');
        print('4. Eliminar producto');
        print('5. Salir');
        try{
          print('Seleccione una opción:');
          opcion = int.parse(stdin.readLineSync()!);
        }catch(error){
          print('Opción no válida. Intente de nuevo.');
          continue;
        }
  
        switch(opcion){
          case 1:
            print('--- Agregar producto ---');
            print('Ingrese el nombre del producto:');
            String nombre = stdin.readLineSync()!;
            print('Ingrese el precio del producto:');
            double precio = 0;
            try{
              precio = double.parse(stdin.readLineSync()!);
            }catch(error){
              print('El precio debe ser un número. Intente de nuevo.');
              continue;
            }
            print('Ingrese la cantidad disponible:');
            int cantidadDisponible = 0;
            try{
              cantidadDisponible = int.parse(stdin.readLineSync()!);
            }catch(error){  
              print('La cantidad debe ser un número. Intente de nuevo.');
              continue;
            }

            productos.add('$nombre, $precio, $cantidadDisponible');
            print('Producto agregado: $nombre, $precio, $cantidadDisponible');
            break;
          case 2:
            print('Listar productos');
            if (productos.length == 0) {
              print('No hay productos disponibles.');
          } else {
            for (String producto in productos) {
              List<String> partes = producto.split(', ');
              print('Lista de productos:');
              print('---------------------');
              print('Nombre: ${partes[0]}');
              print('Precio: ${partes[1]}');
              print('Cantidad: ${partes[2]}');
              print('');
            }
          }
          break;
        case 3:
          print('Actualizar producto');
          if (productos.length == 0) {
              print('No hay productos disponibles.');
          } else {
            for (int i = 0; i < productos.length; i++) {
              print('${i + 1}. ${productos[i]}');
            }
          }
          print('Seleccione el número del producto a actualizar:');
          int index = 0;
          try{
            index = int.parse(stdin.readLineSync()!) - 1;
          }catch(error){
            print('Índice no válido. Intente de nuevo.');
            continue;
          }
          if (index < 0 || index >= productos.length) {
            print('Índice no válido.');
            break;
          }else{
             print('¿Qué desea actualizar?');
            print('1. Nombre\n2. Precio\n3. Cantidad');

            int opcionActualizar = 0;
            try {
              opcionActualizar = int.parse(stdin.readLineSync()!);
            } catch (error) {
              print('Opción no válida. Intente de nuevo.');
              continue;
            }

            switch(opcionActualizar){
              case 1:
                print('Ingrese el nuevo nombre del producto:');
                String nuevoNombre = stdin.readLineSync()!;
                productos[index] = '$nuevoNombre, ${productos[index].split(', ')[1]}, ${productos[index].split(', ')[2]}';
                print('Producto actualizado: $nuevoNombre, ${productos[index].split(', ')[1]}, ${productos[index].split(', ')[2]}');
                break;
              case 2:
                print('Ingrese el nuevo precio del producto:');
                double nuevoPrecio = 0;
                try{
                  nuevoPrecio = double.parse(stdin.readLineSync()!);
                }catch(error){
                  print('El precio debe ser un número. Intente de nuevo.');
                  continue;
                }
                productos[index] = '${productos[index].split(', ')[0]}, $nuevoPrecio, ${productos[index].split(', ')[2]}';
                print('Producto actualizado: ${productos[index].split(', ')[0]}, $nuevoPrecio, ${productos[index].split(', ')[2]}');
                break;
              case 3:
                print('Ingrese la nueva cantidad disponible:');
                int nuevaCantidadDisponible = 0;
                try{
                  nuevaCantidadDisponible = int.parse(stdin.readLineSync()!);
                }catch(error){
                  print('La cantidad debe ser un número. Intente de nuevo.');
                  continue;
                }
                productos[index] = '${productos[index].split(', ')[0]}, ${productos[index].split(', ')[1]}, $nuevaCantidadDisponible';
                print('Producto actualizado: ${productos[index].split(', ')[0]}, ${productos[index].split(', ')[1]}, $nuevaCantidadDisponible');
                break;
              default:
                print('Opción no válida.');
            }
          }
          break;
        case 4:
          print('Eliminar producto');
          if (productos.length == 0) {
              print('No hay productos disponibles.');
          } else {
            for (int i = 0; i < productos.length; i++) {
              print('${i + 1}. ${productos[i]}');
            }
          }
          print('Seleccione el número del producto a eliminar:');
          int index = 0;
          try{
            index = int.parse(stdin.readLineSync()!) - 1;
          }
          catch(error){
            print('Índice no válido. Intente de nuevo.');
            continue;
          }
          if (index < 0 || index >= productos.length) {
            print('Índice no válido.');
            break;
          }else{
            productos.removeAt(index);
              print('Producto eliminado.');
          }
          break;
        case 5:
          print('Saliendo...');
          continuar = false;
          exit(0);
        default:
          print('Opción no válida. Intente de nuevo.');
      }
    }
}


