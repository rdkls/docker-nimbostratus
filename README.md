# docker-nimbostratus

Docker image build for nimbostratus tools for fingerprinting / exploiting AWS
Cloud Infrastructure

https://andresriancho.github.io/nimbostratus/

`nimbostratus` is convenience script, run with first
argument = the AWS profile from which to take creds (default is "default")

```bash
~/w/3/f/f/docker-nimbostratus> ./nimbostratus flaws6

Using profile: flaws6 to dump-permissions
docker run --rm -ti rdkls/nimbostratus:latest dump-permissions --access-key AKIAJFQ6E7BY57Q3OBGA --secret-key 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

Current user Level6
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
