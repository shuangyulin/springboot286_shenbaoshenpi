import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'

     import users from '@/views/modules/users/list'
    import dictionary from '@/views/modules/dictionary/list'
    import news from '@/views/modules/news/list'
    import ruxiaojiancha from '@/views/modules/ruxiaojiancha/list'
    import ruxiaoshenbao from '@/views/modules/ruxiaoshenbao/list'
    import yonghu from '@/views/modules/yonghu/list'
    import dictionaryNews from '@/views/modules/dictionaryNews/list'
    import dictionaryRuxiaojianchaStatus from '@/views/modules/dictionaryRuxiaojianchaStatus/list'
    import dictionaryRuxiaoshenbaoYesno from '@/views/modules/dictionaryRuxiaoshenbaoYesno/list'
    import dictionarySex from '@/views/modules/dictionarySex/list'
    import dictionaryZhuanye from '@/views/modules/dictionaryZhuanye/list'





//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    } ,{
        path: '/users',
        name: '管理信息',
        component: users
      }
    ,{
        path: '/dictionaryNews',
        name: '公告类型',
        component: dictionaryNews
    }
    ,{
        path: '/dictionaryRuxiaojianchaStatus',
        name: '是否去过风险地区',
        component: dictionaryRuxiaojianchaStatus
    }
    ,{
        path: '/dictionaryRuxiaoshenbaoYesno',
        name: '处理状态',
        component: dictionaryRuxiaoshenbaoYesno
    }
    ,{
        path: '/dictionarySex',
        name: '性别',
        component: dictionarySex
    }
    ,{
        path: '/dictionaryZhuanye',
        name: '人员身份',
        component: dictionaryZhuanye
    }


    ,{
        path: '/dictionary',
        name: '字典表',
        component: dictionary
      }
    ,{
        path: '/news',
        name: '公告信息',
        component: news
      }
    ,{
        path: '/ruxiaojiancha',
        name: '入校检查',
        component: ruxiaojiancha
      }
    ,{
        path: '/ruxiaoshenbao',
        name: '入校申报',
        component: ruxiaoshenbao
      }
    ,{
        path: '/yonghu',
        name: '用户',
        component: yonghu
      }


    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
