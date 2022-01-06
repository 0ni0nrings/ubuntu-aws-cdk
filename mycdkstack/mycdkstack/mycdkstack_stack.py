from aws_cdk import (
    aws_iam as iam,
    aws_sqs as sqs,
    aws_sns as sns
)
from constructs import Construct

class MycdkstackStack(Stack):

    def __init__(self, scope: Construct, construct_id: str, **kwargs) -> None:
        super().__init__(scope, construct_id, **kwargs)

        # The code that defines your stack goes here

        # example resource
        queue = sqs.Queue(
            self, "MycdkstackQueue",
            visibility_timeout_sec=300,
        )

        topic = sns.Topic(
            self, "MycdkstackQueue",
            display_name="MycdkstackQueue"
        )

        topic.subscribe-queue(queue)

        
