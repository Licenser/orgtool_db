alias OrgtoolDb.Repo
alias OrgtoolDb.Reward
alias OrgtoolDb.RewardType

rank = Repo.insert! %RewardType{
  name: "Rank",
  level: 1,
}
position = Repo.insert! %RewardType{
  name: "Positions",
  level: 2,
}
cert = Repo.insert! %RewardType{
  name: "Certificates",
  level: 3,
}
Repo.insert! %RewardType{
  name: "Badges",
  level: 5
}

Repo.insert! %RewardType{
  name: "Roles",
  level: 4
}

Repo.insert! %Reward{
  reward_type: rank,
  name: "General",
  level: 1
}
Repo.insert! %Reward{
  reward_type: rank,
  name: "Officer",
  level: 2
}

Repo.insert! %Reward{
  reward_type: rank,
  name: "Deputy Officer",
  level: 3
}
Repo.insert! %Reward{
  reward_type: rank,
  name: "Member",
  level: 4
}
Repo.insert! %Reward{
  reward_type: rank,
  name: "Node Officer",
  description: "Node officer for Black Desert Online",
  level: 3
}

Repo.insert! %Reward{
  reward_type: position,
  name: "Leader",
  level: 1
}

Repo.insert! %Reward{
  reward_type: position,
  name: "Member",
  level: 2
}

Repo.insert! %Reward{
  reward_type: position,
  name: "Applicant",
  level: 3
}

Repo.insert! %Reward{
  reward_type: cert,
  name: "Command",
  level: 1
}
