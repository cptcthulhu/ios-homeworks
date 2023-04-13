//
//  PostStruct.swift
//  Navigation
//
//  Created by Dmitry Testov on 28.12.2022.
//

import UIKit

public struct Post {

    public var author: String
    public var description: String
    public var image: String
    public var likes: Int
    public var views: Int

}

var post1 = Post(author: "Всех с наступающим!", description: "Ребята, всем спасибо за этот год. Вы одно из самых чудесных коммьюнити, которых я только видел. Очень сильно надеюсь, что следующий год для всех удастся. Все найдут свое счастье или приблизятся к нему!", image: "IMG-1", likes: 350, views: 1000)

var post2 = Post(author: "Как нейросети видят русских?", description: "Меня спровоцировал тред Как нейросети видят русских? - это интересный вопрос, но вместо этого там обсуждаются поговорки. Рассмотрим, как изображаются собственно русские и с какими вещами они ассоциируются у Midjourney. Сравним их с 17 другими народами. Можно совместить чтение этого треда с чтением треда про ДНК разных народов.", image: "IMG-3", likes: 450, views: 1300)

var post3 = Post(author: "40 лучших игр 2022 года", description: "Portal Companion Collection на первом месте.", image: "IMG-4", likes: 300, views: 700)

public var viewModel = [post1, post2, post3]
