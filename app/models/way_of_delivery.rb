class Way_of_delivery < ActiveHash::Base
  self.data = [
      {id: 1, name: '普通郵便'}, {id: 2, name: '宅急便'}, {id: 3, name: 'ゆうパック'},
  ]
end