CREATE VIEW vMovies AS
SELECT 
	   [movieId]
      ,[movieRank]
      ,CAST(REPLACE([critic_score], '%', '') AS decimal(10,2))/100 AS [critic_score]
	  ,CAST(REPLACE([audience_score], '%', '') AS decimal(10,2)  )/100 AS [audience_score]
  FROM [rotten_tomato_movie_reivews].[dbo].[movies]
