#!/usr/bin/env python3
# coding: utf-8 

import json
import csv

def __main__():
	tweets_data = get_tweet_json()
	# print(data[0]['text'])
	# print(data[2]['text'])
	# print(data[4]['text'])
	
	for tweet in tweets_data:
		try:
			# Mention
			mentions_data = tweet['entities']['user_mentions'][0]['id']
			print(mentions_data)
		except:
			# Tweet
			print('tweet')
		
		#print('{0},{1}'.format(tweet['text'].))
	
	#print(data)
def get_tweet_json():
		#print('aa')
	f = open("./data/js/tweets/2012_01.1.js")

	data = json.load(f)
	 
	#print(data)
	
	# print(data[0]["source"])
	 
	f.close
	
	return data


	
if __name__ == '__main__':
	__main__()


