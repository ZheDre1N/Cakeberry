//
//  SceneDelegate.swift
//  Cakeberry
//
//  Created by Eugene Dudkin on 16.12.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    var tabBarController: MainTabBarController?
    
    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        /*
         1. Создается экземпляр UIApplication и делегаты
         2. Создается экземпляр UIWindowScene и делегаты
         3. Создается экземпляр UIWindow и делегаты
         4. UIWindow назначает root vc
         */

        print("willConnectTo")
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let tabBarController = MainTabBarController()
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        print("Метод sceneWillEnterForeground")
        // Примеры использования метода:
        // загрузка необходимых для работы приложения данных с диска или из сети.
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        print("sceneDidBecomeActive")
        // Примеры использования метода:
        // запуск таймеров для выполнения задач с определенным периодом;
        // отображение кнопки для снятия игры с паузы.
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        print("sceneWillResignActive")
        // Примеры использования метода:
        // остановка таймеров;
        // остановка фоновых задач, в выполнении которых нет необходимости;
        // постановка игры на паузу;
        // сохранение данных пользователя в файл или базу данных.
    }
    
    func  sceneDidEnterBackground(_ scene: UIScene) {
        print("sceneDidEnterBackground")
        // Примеры использования метода:
        /*
         ● удаление элементов, занимающих большой объем памяти, которые могут безболезненно быть загружены в будущем;
         ● скрытие информации, к которой должен быть ограничен доступ (таких, как пароль или номер карты);
         ● закрытие подключения к общим системным базам данных, к которым больше не нужен доступ;
         Состояние Background накладывает жесткие ограничения на возможности ра- боты приложения. Тем не менее, у вас остаются следующие возможности:
         ● получение данных с удаленного сервера;
         ● использование AirPlay;
         ● использование Bluetooth;
         ● использование функции «Картинка в картинке»;
         ● прием push-уведомлений и др.
         */
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        print("sceneDidDisconnect")
        /*
         
         Примеры использования метода:
         ● проведение финальной очистки, удаление временных файлов; ● отключение от общих ресурсов;
         ● сохранение пользовательских данных.
         
         */
    }
}
