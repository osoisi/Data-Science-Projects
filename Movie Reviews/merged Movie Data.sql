SELECT 
       cr.[movieId]
	  ,cr.[isFresh]
      ,cr.[isRotten]
      ,cr.[isTopCritic]
	  , CASE WHEN cr.scoreSentiment = 'POSITIVE' THEN 1 ELSE 0 END AS scoreSentiment
      ,nur.[rating]
      ,nur.[isVerified]
      ,nur.[isSuperReviewer]
      ,nur.[hasSpoilers]
      ,nur.[hasProfanity]
	  ,vm.[movieRank]
      ,vm.[critic_score]
      ,vm.[audience_score]
INTO mergedMovieData
FROM [rotten_tomato_movie_reivews].[dbo].[critic_reviews] AS cr
  INNER JOIN [new_user_review] AS nur ON cr.[movieId] = nur.[movieId]
  INNER JOIN [rotten_tomato_movie_reivews].[dbo].[vMovies] AS vm ON cr.[movieId] = vm.[movieId]
