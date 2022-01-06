from aws_cdk import (
    # Duration,
    Stack,
    aws_sqs as sqs,
)
from constructs import Construct

class MycdkstackStack(Stack):

    def __init__(self, scope: Construct, construct_id: str, **kwargs) -> None:
        super().__init__(scope, construct_id, **kwargs)

        # The code that defines your stack goes here

        # example resource
        queue = sqs.Queue(
            self, "MycdkstackQueue",
            visibility_timeout=Duration.seconds(300),
        )

        topic = sns.Topic(
            self, "MycdkstackQueue",
            display_name="MycdkstackQueue"
        )

        topic.subscribe-queue(queue)

        
