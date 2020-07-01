# docker-nimbostratus

Docker image build for nimbostratus tools for fingerprinting / exploiting AWS
Cloud Infrastructure

https://andresriancho.github.io/nimbostratus/

Note the IAM permissions bruteforced are just a small subset of the
most-interesting permissions, things like `ec2:DescribeInstances`

IAM permissions can be determined if:

- Identity has IAM perms to read his access
  - iam:List*Policies
  - iam:Get*Policy

- Identity has perms for one of the brute-forced services:
    - EC2
    - RDS
    - SQS

`nimbostratus` is a convenience script to dump permissions using local creds from `~/.aws/credentials`, in verbose mode. The only argument is the AWS profile from which to take cred, default is "default".

```bash
~/w/3/f/f/docker-nimbostratus> ./nimbostratus flaws6

Using profile: flaws6 to dump-permissions
docker run --rm -ti rdkls/nimbostratus:latest -v dump-permissions --access-key AKIAJFQ6E7BY57Q3OBGA --secret-key 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
Starting dump-permissions
Getting access keys for user backup
Getting access keys for user Level6
User for key AKIAJFQ6E7BY57Q3OBGA is Level6
These credentials belong to Level6, not to the root account
Getting access keys for user backup
Getting access keys for user Level6
User for key AKIAJFQ6E7BY57Q3OBGA is Level6
Current user Level6
Bruteforcing permissions
DescribeImages IS allowed
DescribeInstances IS allowed
DescribeInstanceStatus IS allowed
ListQueues IS allowed
DescribeDBInstances IS allowed
DescribeDBSecurityGroups IS allowed
DescribeDBSnapshots IS allowed
{u'Statement': [{u'Action': ['DescribeImages',
                             'DescribeInstances',
                             'DescribeInstanceStatus',
                             'ListQueues',
                             'DescribeDBInstances',
                             'DescribeDBSecurityGroups',
                             'DescribeDBSnapshots'],
                 u'Effect': u'Allow',
                 u'Resource': u'*'}],
 u'Version': u'2012-10-17'}
 ```
