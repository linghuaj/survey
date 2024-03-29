dataSource { 
  pooled = true 
  driverClassName = "com.mysql.jdbc.Driver" 
  username = "grails" 
  password = "server" 
} 
hibernate { 
  cache.use_second_level_cache = true 
  cache.use_query_cache = true 
  cache.provider_class =      'com.opensymphony.oscache.hibernate.OSCacheProvider' 

	
} 
// environment specific settings 
environments { 
  development { 
    dataSource { 
      // one of 'create', 'create-drop','update' 
      dbCreate = "update"    
      url = "jdbc:mysql://localhost:3306/survey_dev?characterEncoding=utf8" 
    } 
  } 
  test { 
    dataSource { 
      dbCreate = "update" 
      url = "jdbc:mysql://localhost:3306/survey_dev?characterEncoding=utf8" 
 
    } 
  } 
   production { 
    dataSource { 
      dbCreate = "update" 
      url = "jdbc:mysql://localhost:3306/survey_dev?autoreconnect=true&characterEncoding=utf8" 
    } 
  } 
} 