abstract class ConstantHelper {
  static const String applicationJson = 'application/json';

  // Database Setting Dev
  static const String host = '172.17.0.1';
  static const String userName = 'postgres';
  static const String password = 'password';
  static const String databaseName = 'kampus';
  static const int port = 5432;

  // Database Setting Prod
  static const String hostProd = 'ec2-35-170-146-54.compute-1.amazonaws.com';
  static const String userNameProd = 'efiqackaledkfs';
  static const String passwordProd =
      'c4d5254539beeea1b7d2960972b961352c45ef465981a804abffafae2e55b5b3';
  static const String databaseNameProd = 'd41067o1fbvvsm';
  static const int portProd = 5432;
}
