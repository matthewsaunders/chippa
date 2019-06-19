## User
organization    has_one
address         has_one
first_name      string
last_name       string
job_title       string
email           string
phone           string
password        string

## Organization
users           has_many
address         has_one
name            string
type            string

## Address
addressable     belongs_to, polymorphic
address1        string
address2        string
city            string
state           string
postal          string
country         string


## MediaMember
organization          belongs_to
address               has_one
first_name            string
last_name             string
job_title             string
email                 string
phone                 string

## Organization
address               has_one
name                  string
type                  string
num_members           integer, method

## MediaList

## Tag

## Client

## Event
