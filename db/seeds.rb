if Ziro.count == 0
  Ziro.create([
    {name: "三田本店", longitude: '139.741644', latitude: '35.648025', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E4%B8%89%E7%94%B0.jpg'},
    {name: "目黒店", longitude: '139.707064', latitude: '35.634193', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E7%9B%AE%E9%BB%92.jpg'},
    {name: "仙川店", longitude: '139.583940', latitude: '35.661766', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E4%BB%99%E5%B7%9D.jpg'},
    {name: "蒲田店", longitude: '139.714579', latitude: '35.563732', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E8%A5%BF%E5%8F%A3%E8%92%B2%E7%94%B0.jpg'},
    {name: "品川店", longitude: '139.743054', latitude: '35.623914', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E5%93%81%E5%B7%9D.jpg'},
    {name: "新宿小滝橋通り店", longitude: '139.698338', latitude: '35.696330', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E5%B0%8F%E6%BB%9D%E6%A9%8B.jpg'},
    {name: "環七新代田店", longitude: '139.661906', latitude: '35.660414', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E7%92%B0%E4%B8%83%E6%96%B0%E4%BB%A3%E7%94%B0.jpg'},
    {name: "八王子野猿街道店2", longitude: '139.401366', latitude: '35.629514', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E9%87%8E%E7%8C%BF%E8%A1%97%E9%81%93%EF%BC%92.jpg'},
    {name: "池袋東口店", longitude: '139.713875', latitude: '35.728276', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E6%B1%A0%E8%A2%8B.jpg'},
    {name: "新小金井街道店", longitude: '139.496208', latitude: '35.708436', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E6%96%B0%E5%B0%8F%E9%87%91%E4%BA%95.jpg'},
    {name: "亀戸店", longitude: '139.826679', latitude: '35.701934', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E4%BA%80%E6%88%B8.jpg'},
    {name: "京急川崎店", longitude: '139.705200', latitude: '35.534951', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E4%BA%AC%E6%80%A5%E5%B7%9D%E5%B4%8E.jpg'},
    {name: "松戸駅前店", longitude: '139.899260', latitude: '35.785977', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E6%9D%BE%E6%88%B8%E9%A7%85%E5%89%8D.jpg'},
    {name: "めじろ台法政大学前店", longitude: '139.310392', latitude: '35.629493', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E3%82%81%E3%81%97%E3%82%99%E3%82%8D%E5%8F%B0.jpg'},
    {name: "荻窪店", longitude: '139.626290', latitude: '35.703625', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E8%8D%BB%E7%AA%AA.jpg'},
    {name: "上野毛店", longitude: '139.638991', latitude: '35.638991', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E4%B8%8A%E9%87%8E%E6%AF%9B.jpg'},
    {name: "京成大久保店", longitude: '140.049617', latitude: '35.691484', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E4%BA%AC%E6%88%90%E5%A4%A7%E4%B9%85%E4%BF%9D.jpg'},
    {name: "環七一之江店", longitude: '139.881926', latitude: '35.684085', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E7%92%B0%E4%B8%83%E4%B8%80%E4%B9%8B%E6%B1%9F.jpg'},
    {name: "相模大野店", longitude: '139.432931', latitude: '35.529932', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E7%9B%B8%E6%A8%A1%E5%A4%A7%E9%87%8E.jpg'},
    {name: "横浜関内店", longitude: '139.630772', latitude: '35.441967', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E6%A8%AA%E6%B5%9C%E9%96%A2%E5%86%85.jpg'},
    {name: "神田神保町店", longitude: '139.756480', latitude: '35.696389', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E7%A5%9E%E7%94%B0%E7%A5%9E%E4%BF%9D%E7%94%BA.jpg'},
    {name: "小岩店", longitude: '139.880019', latitude: '35.734960', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E5%B0%8F%E5%B2%A9.jpg'},
    {name: "ひばりヶ丘駅前店", longitude: '139.543550', latitude: '35.749956', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E3%81%B2%E3%81%AF%E3%82%99%E3%82%8A%E3%81%8B%E3%82%99%E4%B8%981.jpg'},
    {name: "桜台駅前店", longitude: '139.661677', latitude: '35.738807', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E6%A1%9C%E5%8F%B0%E9%A7%85%E5%89%8D%E5%BA%97.jpg'},
    {name: "栃木街道店", longitude: '139.794919', latitude: '36.422914', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E6%A0%83%E6%9C%A8%E8%A1%97%E9%81%93.jpg'},
    {name: "立川店", longitude: '139.409528', latitude: '35.696519', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E7%AB%8B%E5%B7%9D.jpg'},
    {name: "大宮店", longitude: '139.626259', latitude: '35.903420', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E5%A4%A7%E5%AE%AE.jpg'},
    {name: "千住大橋駅前店", longitude: '139.741584', latitude: '35.742556', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E5%8D%83%E4%BD%8F%E5%A4%A7%E6%A9%8B.jpg'},
    {name: "茨城守谷店", longitude: '140.000841', latitude: '35.923972', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E8%8C%A8%E5%9F%8E%E5%AE%88%E8%B0%B7.jpg'},
    {name: "湘南藤沢店", longitude: '139.482245', latitude: '35.343056', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E6%B9%98%E5%8D%97%E8%97%A4%E6%B2%A2.jpg'},
    {name: "西台駅前店", longitude: '139.674686', latitude: '35.785931', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E8%A5%BF%E5%8F%B0%E5%89%8D.jpg'},
    {name: "中山駅前店", longitude: '139.538650', latitude: '35.513070', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E4%B8%AD%E5%B1%B1.jpg'},
    {name: "新橋店", longitude: '139.750589', latitude: '35.665595', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E6%96%B0%E6%A9%8B.jpg'},
    {name: "仙台店", longitude: '140.866206', latitude: '38.261676', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E4%BB%99%E5%8F%B0.jpg'},
    {name: "赤羽店", longitude: '139.720890', latitude: '35.779783', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E8%B5%A4%E7%BE%BD.jpg'},
    {name: "札幌店", longitude: '141.343875', latitude: '43.067391', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E6%9C%AD%E5%B9%8C.jpg'},
    {name: "新潟店", longitude: '139.060093', latitude: '37.917235', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E6%96%B0%E6%BD%9F.jpg'},
    {name: "会津若松駅前店", longitude: '139.931417', latitude: '37.506628', imageurl:'http://media.takumen.com/wp-content/uploads/2016/01/%E4%BC%9A%E6%B4%A5%E8%8B%A5%E6%9D%BE.jpg'},
  ])
end