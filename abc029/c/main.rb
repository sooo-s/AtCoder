n = gets.to_i

def dfs(string, length, n)
  if(length == n+1)
    puts string
  else
    dfs(string+"a", length + 1, n)
    dfs(string+"b", length + 1 ,n)
    dfs(string+"c", length + 1, n)
  end
end

dfs('' , 1, n)
