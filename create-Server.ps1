﻿$imageDetails = aws ec2 describe-images --filters Name="tag:Name",Values="ericsson-batch-5-ubuntu-image" | ConvertFrom-Json
$imageDetails.Images.ImageId