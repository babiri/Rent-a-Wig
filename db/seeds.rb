# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"
Wig.destroy_all
User.destroy_all
style = ["curly", "straight", "afro", "wavy", "other"]

user_one = User.new(email: "fermincito123@gmail.com", name: "Fermincito", bio: "Wig user, wig lover, living the wig life! Founder of Make-a-wig Foundation, I'll make your wigs come true!", password: "123456")
user_one.remote_avatar_url = "./app/assets/images/fake_avatar2.jpg"
user_one.save!

user_two = User.new(email: "fake123@gmail.com", name: "Luiz", bio: "Wig is life, life is wig!", password: "123456")
user_two.remote_avatar_url = "./app/assets/images/fake_avatar.jpeg"
user_two.save!

url = "https://cdn.shopify.com/s/files/1/2591/6336/products/"

puts 'Creating wigs...'
wigs_attributes = [
  {
    color: 'blond',
    size:  'long',
    style: 'wavy',
    name:  'Whoopsie Blond',
    price: 11,
    user: user_one,
    remote_photo_url: "https://cdn.shopify.com/s/files/1/2591/6336/products/Abyhair-Full-Lace-Wigs-Blonde-Human-Hair-613-Color-Body-Wavy-Virgin-Human-Hair-Lace-Front-Human-Wig_2048x.png?v=1552194605"
  },
  {
    color: 'green',
    size:  'long',
    style: 'straight',
    name:  'Alejandra Alienista',
    price: 24,
    user: user_two,
    remote_photo_url: "https://powderroomd.com/wp-content/uploads/2017/06/WIGSTER19.jpg"
  },
  {
    color: 'other',
    size:  'short',
    style: 'straight',
    name:  'Pearly Fashionista',
    price: 93,
    user: user_one,
    remote_photo_url: "./app/assets/images/newwig.png"
  },
  {
    color: 'brown',
    size:  'long',
    style: 'straight',
    name:  'Long Diva',
    price: 12,
    user: user_one,
    remote_photo_url: "https://powderroomd.com/wp-content/uploads/2019/02/IMG_5196.jpg"
  },
  {
    color: 'black',
    size:  'medium',
    style: 'straight',
    name:  'Emo Extravaganza',
    price: 93,
    user: user_one,
    remote_photo_url: "https://www.world-costume.com/images/item_jpgs/fw92553.jpg"
  },
  {
    color: 'other',
    size:  'long',
    style: 'curly',
    name:  'White Eleganza',
    price: 47,
    user: user_two,
    remote_photo_url: "https://powderroomd.com/wp-content/uploads/2018/01/Androgyny-Lace-Front-Wig.png"
  },
  {
    color: 'red',
    size:  'medium',
    style: 'afro',
    name:  'Cherry Bon Bon',
    price: 47,
    user: user_one,
    remote_photo_url: "https://powderroomd.com/wp-content/uploads/2018/01/Androgyny-Lace-Front-Wig.png"
  },
  {
    color: 'black',
    size:  'medium',
    style: 'afro',
    name:  'Nappy Dready',
    price: 47,
    user: user_one,
    remote_photo_url: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUTExMWFREXGBUXFhUXFxcXFRcWGBgXFhcWFhcYHSggGB4nHRgVIjEhJSkrLi4uGCAzODMsNystLisBCgoKDg0OGhAQGi0fHSUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tNy0rLS0tLS0tLS0rKy0tLS0tLS0tLS0rLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABAUDBgcCAQj/xABCEAABAwIDBAcFBQYFBQEAAAABAAIRAyEEEjEFQVFhBgcTInGBkTJSobHBI0KC0fAUM2JykuEIorLC4iRTc4OzQ//EABgBAQEBAQEAAAAAAAAAAAAAAAABAgME/8QAHhEBAQEBAAMAAwEAAAAAAAAAAAERAiExQRIiUQP/2gAMAwEAAhEDEQA/AO4oiICIiAiIgIiICIoe0dqUaABrVWU5mMzgCY1yjU7tEExfCYudFzTpJ1rMpEjDtBaDHaPa45jMdxgi3MkeHHSuknS7FYkBzi8ueDkoNzMYAd7mgwfFxJvHJZ/KLjp20+szA0qnZAvqv3dm0EHwJIkc9FRbT62qTarG06ZNiHMcYfmMRAbItz1v4rmez8GWOMuBxFQFz3AZsrODf0PgFVYB1JuIYW5yGvyue4iC65nQXkj4LP5a1jprOsrFdpcta86U6lOKZjXLBDxP8zo4cLvZvWgHVezq0gIjMG2e2ZhwBJDxEaEaGJNlx/a7ab8U4V3upjuupZeYjMSbbvkpu0NnmpTa9jw6qz91VFs03yVOBN4vE77qy1Mfo/Zu1qGIE0arHixOUyRPvDVp5FTV+adk7XJb2rSadVlqmUltRsalse1vkHUcCF0vYPWVAY3EML2OsK9OOH32HfrpruBV1MdLRYMHi2VWh9Nwe07wZ5weB5LOtIIiICIiAiIgIiICIiAiIgIiICIiAvhMeC+rS+tOjjn4XLgwHg2qskNcWkiO8SBl1zA7uUoKjpl1lspl1LDPYMvtVyQQDpFNsd7+bSxjUFcsqbbq4uoHAPeCQDWrEvsJMNDrcYniouKw2GAydoKzmjPiMT3sjqh0p0NO40TLyDmN7CF6p4iaQquc1rL5G2iNGgCRc3XOtxPbSmp3mjKJuYmdwJm2hNkpY0OquYwDKwTUeD7UizSeAVYNoMpYcuBBfeG78zrlzh8tLKiFR9Om1zXlucuJy/ecCAZPmpmrrYdl401P2iqTr7N9GtBj6/FRcfUNPA0HCR3muI3GZJJ4km6ybNohrKtK0tpAE83B7ifioeNAdgaZN3WPk1rreg3fNPp8XuNwNOs8tcMz+yDmC+rS6W30nMPgq/COGFDKjZfhqndeDEioNxHODG+W6yAVn2xiuzfhidDLXQY7pi06+axYPKzEVcMWzTddrT3gA4A2mbwWmb3SekvtNrsHaNr0RFRwkXtWaLObJtnbuJuQRJmSo1St+zntGgmhUkGnYFjxqANwPwiFh2BiyZw1QxHea46tOgjmCSP6godLarpqU8QcwdIOVsEOBgQBEwVRtXRXpZUY4Pw7nCoPbokzmE7ho627naLR2nop0vo40RZlb3CfajUsm5jeNR4QT+dMDSbWOZh7PFs1af8A9A2xEG4dYjyg8Va0sQ6lFbM8SQ5wBjLrlc0jQg24gjiruJj9NIqHoXtpuLwrHB+Z7QGvky7MLZj4xM+KvltkREQEREBERAREQEREBERAREQFxTrp6YB8Yag8kMc9tUCzXVBDcoM97KcwIix4kW6j0t6RU8Bh3V6l7hrW73OO7wABJPAFfmHBte5/aPlznT2bnxN9XwdZveIuVm1ZHyvSLaNOl96qSXEC5tMC2mkf3WbaTQ6pSw4nUSJtAvYQN08UpUQ7EOeHAspNsLwDu10KhYN73VKlWb5HRO60fL5rLT7jm9pVa133wYA3ahs8J/JTMRhWigwC+Wq2/iRmB85sq/ti+pTzCAAACJBIs0mfXRT8bUy4cfdBqgBosO647t9mpRg2hiKrMS9rDlLw2+6Mo5cuG5Z6WEz4PXvNNtYN3MFvxLBtukRimOEd4Ngm7RBIM8Y1U7Cn7Ihru6Hi4BIPfETuE23ndonw/qhxAdkBzOMPgBxkCxJudNBbkrbadcCph60G7QHcy06+MR8FHdQDm12+5Um5k3cWm4sYDiVjrnNhmk+0x8c+B+QVRaY4tZimVBAa6HDxdLXb/eBP/s5LPtTDU2l1QiW5hnAMkZ4IqNtaCSDxlvAqBtIdphKbgO9TdlLp3Ot/qaz1KnUtqseKYc05ngsda4puBBJ8zZQqNXpZn9wxiWhrmkWbWZqPxRb8MHirDB47t6ZOlTTI7R5LXd3jcA+k7lUbSa8UWEiKuHqGkSN4ubHgC1x/EVLwuObXZchtZpzX0Jj2vGIP0vKo2Xqc2lXZjmUWWpuLg4GYyQXEHfIix48iV+h1+buj21atCvTxNEd9+6JBebOY4cDr57oX6QabXEHhwViV9REWkEREBERAREQEREBERAREQcT6/NqTVpUGkuLWODmXyzVIAPMgM/zLmuBcAx1Z8y1kDdugQN39grfrN2i3EbQrukOaHmC0ggtbFMQRO4KhxmYsZRGhG/iL8P1Kw2x4AOFKo5xLabiYiJc7+H3rcFIw1EsFQSAcrgeUZQfqvvYtFelSbcMAMmbv1AA3XXtz5YTvLaubhZw3+volIh4usC+m4SA0CCRwIuBwss+35+wpnjmPiYk+pd6rHth3eZAPsDW0xvA3b1jxtRz64zgd0fCeKDzst7n1gXkuyBxF+Ei/mp+ya803tJgmcjd+Y34cQo/R2CKhi4B+ihYB8VG8HRbmZj4hKkWlFwGIxIizg4gGYu2Z38ZUCnUhtRpiD3m6XJ3D9b1Oc+MW13vNbMSBMAbtPBV1WkBVidO6CN+UltvRILfYcuoVKR3tNiJPs2N/ZhwlQ9ougUHix0kcQbCRwEei+4MkUiQbAFroG4OiJ1jvE+S8vOfCTvZUbAG4EwZ9QgtT36tagdazabm/z5Ggnzhw81WA9lUoum0Fp5w4u9CH/BZsXWjEUnDUNAMcZMacoX3bNPM6sCLsex7dPZcAL8rqjO537O6ZLqTnZTJ7zSRma6fCPQr9P7C2g3EYelWbo9oOswdHNnfBkTyX5VxtPLSrN3fZOb55T9XLs3UNtjtMPUouN2kPHge47w9ltuZSJXU0RFpBERAREQEREBERAREQEREH506xeibMHjAGvL84NUSAAxrnuDWayQIieS1fAPGd1Rxm+Vu6wBJGsROXQb10rruovZiaddxZ2ZolrACc32biXFw8arYIPlx5xhAQ1gs1xkmxJAi5HHd6rFbioq1iMz95eMpG65No03KTtStIpO4mpaRvdrb5KDUAygEWz+FotM/rVZNp1SXBs2aSBa4Gv1VRn268528m3+I/NZ60Cu4lw9jwGswPio21iHGRqGCfEyV92mzPVpt3OaAOVioMnRxl3t4tO+Bu19VCdh7MMby0/hdA+attmYU06jg4/dB38RG/kU2eA52726gtw19E1cQqLMmV5mz3E8SL/wBlixtcue14sC5xEgbzp8VsePwYI5KgqUS5jIuQxzvQMSFmJWCJNKrA9kPNuAufgP7hQ2uIwpE+05tvOfLRWmwmgVHgk5XAaWNx/wAlUYirFPJ7rhM+d/7IlS8eYdbjRHrmNvNvwUvFVQ2tUzEBjqLRexJiI5qNinNLqZddvccdN2Yelx6L5tmqDDwNYHEAXAQW2zMAcTXOHM5XBjDFnAZDDhNrG99YW1f4f21xXLmN+xILap4DKXt/zAD8S13onjOzx9F+UZs1C27KXNaRNtxIvYLfP8OlaaOJZFgaLvXtB/tCsR2JERaQREQEREBERAREQEREBERByHr0P2mFG/JV3D3mC363Bcpo1s1apBkC2+AIgXP61XUeu1//AFWHFpFIn+K7zv4d34HiuTbPYQajt8kmfPx3rFbiufVEAXIzEjkBAt6rLjmfa8JLIi1oCwvF2Dh83En8lJxzgKgJOhaSddIVRkLAX1tJiw5yL/rivu1XZXUnN1a1uk6wOK94dn2zgd5HpCyY3DZSQNQ9oB8S2D8VNXPBUqPLC9xuaYcCDuJJHnrbdKy7N7oZzv6tC94nZ9XI8E5y5oAkwbTYeq9mj7FoyiDaLw0eeh9FLVkWGOf3PEFUXYuc2nk9rIRA1iATHoFsmIpZqTPP6qupbLs0EmQNRbzU5sXqKnCF4e0EEAiAQYJAi4PpooM5y4kWkOMb+KuqmANOs285g7x1F7LFSwoa9sDulsk+i1sZxGqVG1mucJAaBE677eF1mxtKaER7LaZ9Xx9ViwlKKdWbWcPjC94upNOrG5tIXmPbGk+KrKfhpz03NjMWsEEWMGYPCZXeernoWNnCq6YNQMGQTlYGZjAlzibuN5vwGi4RhZeWtaCXgMLABckwIAF5v8l+qKM5Rm9qBMaTF0hXtERaQREQEREBERAREQEREBERBy7rr2NSyU8Y57hUaW0gwAFrhFSp4iBn+Gi4xhQRRc7eS6ONxPz+ZXfeuDYuIxWDAoNDzTc6o5uYNMBjmy2YBs47/VcCpgGi6nN2N9QRP68VmtRX1RBpkkSdfHQJtYd+Tva35lecYO7SHpPzWXabO6127KB5gj80EihUBqtcDuHBW2JwD3OJaNXMM23ZPyWr7Oq/aAbiujbIYCAsdeK6ceYzHByFBxGC7wC2ihhpWDGbPmYsdxWVR62AaKAAMuF/zUBtH5KY7Z9XK1pqOtBLhlDiBxtpKnUsJDQoNcxeyy9zXTEA7uMfkq3btHsqTiDBywDpc2C3KrSstK6eVsrGs3udPk3+8KzzZDxJa1HD1TIBJI4SrBg+wfxc5o3+9NvRV2HB+vK11Np1CS0TqZg6T4LrXGNx6CPA2phQ7QGkIB1JdAPkY9F+llxHqv6D1n1aWPLg1jXiGOaZexokOY4G4l3D7pXblYUREVQREQEREBERAREQEREBERB8cJsvzh0u6BYjZ1OpVqOpPpvysZkLs3da67gWiLDcTqv0gufdavRzF4sUzQAqMY1wNOQHZ3FvevY2A32g8VKsfnnHg5aZ5fks2PbNNscD46tXvbuFdSim+z2FzXCQQHNlpEgxqExgPZtnXK6x56fT1UVRh0d4aggjyXS9gV8zQQuZ5ZMcTC3fY9U0nj3TqFO14rd2YssBIaXEDQankFFxm23gT+zPnnBjyBss9J0gEaFecRTLhEkcwSD8FxuvRxed/aKpvSKq6R2f+T/l9FNw+2qkBrqDuRAj5leW4J/vuI5klScPhGsuBfjvWJOnbvr/ACzxGapUkSuWdKsb22JdB7rO4OEj2j628luvS7bQw9PK0/bPHdHug27Q/TifArmrWr0cT68XV+JOCpd7xB87FSsI37ZgImY8dVd4ug39i2Y8D7RwxrHH+FlYOZ/9HKsZQd29Oxbm9kkEC0CW8YPBarL9W7GwAw9CnRb7NNjWCeAEKavjQvq0yIiICIiAiIgIiICIiAiIgIiICIiD83dcmyGYfGuyk/aTVuIANRziWiOY+K1bFAFkk3Ay/EQBblxXTv8AEJT79A8aZH9L/wDkuY1WzSnk38z9FhqKrZlDPWaOc+i3XsIKqOh2AzPNQi1wPJbXXoXWer5a5ngwNdzLbuCs6eMb4Ktp01np01htYtxAKwY7GhjS7UgE8h48UpsUDa7A5paTlDu7J0E2n4qyJa5jXxL6pdUqOLnuMkny9BwG5Z8Q2HPERpb+kqFSHd8wr3D7O7ali64dlbQFF0ROftKraIGttS7fouzkssRVBwuzmD7v7a53GXVmj5MC670e6CNxGF2fVrS19FrnBpa4Oh9U1QPaAEiNWla90J6tqOOweGxD61RhHbNc1uUgjtXQRPsG19ZXaqTA0Bo0AAHgLKSFekRFpBERAREQEREBERAREQEREBERAREQc866dhsrYI1yBmogAHvZoqPptMEOAA33B5Rv4SzDueWU22zNIJ3AC5Pk2fgv01082fUxGAr0qeXO4NjMcohr2udJ3WBX5vwdLNVbH3TeOGQz+Xms1qNm2HhWtENFmgD0Vm+ksWxKBFME6m6mPXG11kQskLLTR6+sRWYFUXS15bQc5tiIg8DIgq8BUTa+AFei9hJExca6g/RajFaV0WwFHGbSZSrOIoVqxLi05CMzXvDQXTHfhvPzU8YQUqW2KLBLWVKbJJghtPHBrSfeOnxVvsToFSrPpsNcszEBxLQ4HwEiDpC2jo11aOc/aFDE9o1j3M7KvINRzW1zUDjIg5sjCV03XPMbv1WYY09mYcGLh7rcHVHOHnBC2xQ9j7Pbh6FKg0lzabGsBOpDREnmpi1EEREBERAREQEREBERAREQEREBERARFTdI9rdi3K3944f0jj48EEDpTtfWiw8nkf6R9VoQ2FTzOcGwXCD4K31K91LBcvbrJitqYcNbA3Ksqq1qmVFqUZWa1FY4r1KyVqELGAoPoKytPdKxFM25NTEnAug89xXZNn1+0pMf7zWnzIuuL4cwQurdEKubCs/hzN+JI+BC6cVjpdIiLowIiICIiAiIgIiICIiAiIgIiICIiAtF6VyMQ6dCGx4QB8wVvS1nppgw5rX/AIT8SPr6qdTYvNytbY1eKt1HpYmO67yP5rKXLnrojVGQFiaFLeFgLFlphq05UKpTgqyhYqtJRFeWrGWKS6mvhYio7Cuk9XteaT28HA+oj/auc5VunVzV+0qN4sn0IH1WuPbPXpvqIi7OQiIgIiICIiAiIgIiICIiAiIgIiIChbZoZ6LxviR4i6moQg5Njad1EbXc3mFd7cwvZ1Hs4Ex4G4+CoqgXKusSqeJBXvOqp1tF7pYuNVhpZSvJWNlUFfS5VHh4WIhenuWBzlB5eFtXV83/AKg/+N3zatVYFufV5SmpVdwa0f1Gf9q1z7Z69N6REXZzEREBERAREQEREBERAREQEREBERAREQa90r2M6q3tKYmo0QW+83lzF1z2qLkGxFiDYg8CF2NVe19gUcRJc2H/APcbZ3n73ms3nWp1jk7wsFQLa9qdDcRTk04qs5HK/wA2m3oStbxWHfT/AHjHsvHfa5t+FwuVljpLEVryNFJp4qdVgEFeXMUVJc5fAsVNxV1sbYNbERkbDJvUdZo8N7vJJNS+Ffh6TnuDWAucTAA1JXUOi2xv2alDr1HHM8jQHc0eH5r3sLYFLCt7ozVCIdUIueQH3RyHATKtl155xzt0REW2RERAREQEREBERAREQEREBERAREQEREBERAWDF+wV9RSjkXSH94fH6qO72B/KP9b18Rca7T0l7L/fP8H/ADK69Q9lvgPkviLfDn17ZERF0ZEREBERAREQEREBERAREQf/2Q=="
  },
  {
    color: 'other',
    size:  'short',
    style: 'curly',
    name:  'Oh my! Smooch',
    price: 47,
    user: user_two,
    remote_photo_url: "https://m.media-amazon.com/images/I/51BWg28NagL._AC_UL436_.jpg"
  },
  {
    color: 'red',
    size:  'long',
    style: 'straight',
    name:  'Aphrodisiac Bloom',
    price: 93,
    user: user_one,
    remote_photo_url: "https://powderroomd.com/wp-content/uploads/2016/12/Aphrodisiac-Lace-Font-Wig.png"
  },
  {
    color: 'blue',
    size:  'long',
    style: 'straight',
    name:  'Witchy Beauty',
    price: 93,
    user: user_two,
    remote_photo_url: "https://powderroomd.com/wp-content/uploads/2016/12/peach4.jpg"
  },
  {
    color: 'blond',
    size:  'long',
    style: 'straight',
    name:  'Forbidden Fruit',
    price: 93,
    user: user_two,
    remote_photo_url: "https://gloimg.chinabrands.com/cb/pdm-product-pic/Clothing/2016/08/29/grid-img/1481246702429034244.jpg"
  }
]
Wig.create!(wigs_attributes)
puts 'Finished!'
