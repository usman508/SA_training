class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        length = 0
        maxlength = 0
        x=[]
        for i in range(len(s)):
            print(x)
            if s[i] in x:
                x.append(s[i])
                
                
                for j in range((len(x))):
                    if x[0] == s[i]:
                        x.pop(0)
                        length = len(x)
                        if length > maxlength:
                            maxlength = length
                        break
                    else:
                        x.pop(0)
                        length = len(x)  
                        if length > maxlength:
                            maxlength = length            
            
            elif s[i] not in x:
                x.append(s[i])
                
                length =len(x)

                if length > maxlength:
                    maxlength = length
                    
                
     
        return maxlength