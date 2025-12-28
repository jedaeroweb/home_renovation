![Rails](https://img.shields.io/badge/Rails-7-red)
![License](https://img.shields.io/badge/License-MIT-green)
![Template](https://img.shields.io/badge/Template-Repository-blue)

## Overview

An interior renovation reverse auction platform built with Ruby on Rails.

This project is a marketplace-style web application where customers post interior renovation projects and contractors compete by submitting bids in a reverse auction model, helping users find the best price and service efficiently.

> 인테리어, 기타 시공들을 제공하는 업체와 고객을 연결하는 서비스로 고객의 공고에 각 업체가 입찰을 진행하는 역경매 방식입니다.

---

## 🏗️ What is a Reverse Auction?

Unlike traditional auctions, a reverse auction allows multiple contractors to bid downward on a project.  
Customers can compare offers, timelines, and contractor profiles before making a decision.

This model encourages transparency, competition, and cost efficiency in interior renovation projects.

> 역경매 방식을 통해 고객은 경쟁을 통한 최선의 업체 선정을 할 수 있습니다.

---


## Demo

[Demo page](https://interior.jedaeroweb.co.kr)

> 실제 동작 화면을 확인할 수 있는 데모 페이지입니다.

---

## 🚀 Getting Started

```bash
git clone https://github.com/jedaeroweb/home_renovation.git
cd home_renovation
bundle install
rails db:create db:migrate db:seed
rails server
```
then visit

http://localhost:3000


> 로컬 환경에서 바로 실행해볼 수 있습니다.

---

## 📌 Server Requirements

[Rails](http://rubyonrails.org/) version 7 or newer is recommended.
> Rails 7 이상 환경을 권장합니다.

## 📄 License

MIT License – completely free to use and modify
> 개인·상업적 사용 모두 완전히 자유롭습니다.

## ✍️ Author

[Jedaeroweb](https://www.jedaeroweb.co.kr)
> 작성자 = 제대로웹
