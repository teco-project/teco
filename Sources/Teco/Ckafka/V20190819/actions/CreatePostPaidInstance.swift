//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Ckafka {
    /// CreatePostPaidInstance请求参数结构体
    public struct CreatePostPaidInstanceRequest: TCRequest {
        /// 实例名称，是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        public let instanceName: String?

        /// 创建的实例默认接入点所在的 vpc 对应 vpcId。目前不支持创建基础网络实例，因此该参数必填
        public let vpcId: String?

        /// 子网id。创建实例默认接入点所在的子网对应的子网 id
        public let subnetId: String?

        /// 国际站标准版实例规格。目前只有国际站标准版使用当前字段区分规格，国内站标准版使用峰值带宽区分规格。除了国际站标准版外的所有实例填写 1 即可。国际站标准版实例：入门型(general)]填写1；[标准型(standard)]填写2；[进阶型(advanced)]填写3；[容量型(capacity)]填写4；[高阶型1(specialized-1)]填写5；[高阶型2(specialized-2)]填写6；[高阶型3(specialized-3)]填写7；[高阶型4(specialized-4)]填写8。
        public let instanceType: Int64?

        /// 实例日志的默认最长保留时间，单位分钟。不传入该参数时默认为 1440 分钟（1天），最大30天。当 topic 显式设置消息保留时间时，以 topic 保留时间为准
        public let msgRetentionTime: Int64?

        /// 创建实例时可以选择集群Id, 该入参表示集群Id。不指定实例所在集群则不传入该参数
        public let clusterId: Int64?

        /// 实例版本。目前支持 "0.10.2","1.1.1","2.4.1","2.4.2","2.8.1"。"2.4.1" 与 "2.4.2" 属于同一个版本，传任意一个均可。
        public let kafkaVersion: String?

        /// 实例类型。"standard"：标准版，"profession"：专业版
        public let specificationsType: String?

        /// 专业版实例磁盘类型，标准版实例不需要填写。"CLOUD_SSD"：SSD云硬盘；"CLOUD_BASIC"：高性能云硬盘。不传默认值为 "CLOUD_BASIC"
        public let diskType: String?

        /// 实例内网峰值带宽。单位 MB/s。标准版需传入当前实例规格所对应的峰值带宽。注意如果创建的实例为专业版实例，峰值带宽，分区数等参数配置需要满足专业版的计费规格。
        public let bandWidth: Int64?

        /// 实例硬盘大小，需要满足当前实例的计费规格
        public let diskSize: Int64?

        /// 实例最大分区数量，需要满足当前实例的计费规格
        public let partition: Int64?

        /// 实例最大 topic 数量，需要满足当前实例的计费规格
        public let topicNum: Int64?

        /// 实例所在的可用区。当创建多可用区实例时，该参数为创建的默认接入点所在子网的可用区 id
        public let zoneId: Int64?

        /// 当前实例是否为多可用区实例。
        public let multiZoneFlag: Bool?

        /// 当实例为多可用区实例时，多可用区 id 列表。注意参数 ZoneId 对应的多可用区需要包含在该参数数组中
        public let zoneIds: [Int64]?

        /// 购买实例数量。非必填，默认值为 1。当传入该参数时，会创建多个 instanceName 加后缀区分的实例
        public let instanceNum: Int64?

        /// 公网带宽大小，单位 Mbps。默认是没有加上免费 3Mbps 带宽。例如总共需要 3Mbps 公网带宽，此处传 0；总共需要 6Mbps 公网带宽，此处传 3。需要保证传入参数为 3 的整数倍
        public let publicNetworkMonthly: Int64?

        public init(instanceName: String? = nil, vpcId: String? = nil, subnetId: String? = nil, instanceType: Int64? = nil, msgRetentionTime: Int64? = nil, clusterId: Int64? = nil, kafkaVersion: String? = nil, specificationsType: String? = nil, diskType: String? = nil, bandWidth: Int64? = nil, diskSize: Int64? = nil, partition: Int64? = nil, topicNum: Int64? = nil, zoneId: Int64? = nil, multiZoneFlag: Bool? = nil, zoneIds: [Int64]? = nil, instanceNum: Int64? = nil, publicNetworkMonthly: Int64? = nil) {
            self.instanceName = instanceName
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.instanceType = instanceType
            self.msgRetentionTime = msgRetentionTime
            self.clusterId = clusterId
            self.kafkaVersion = kafkaVersion
            self.specificationsType = specificationsType
            self.diskType = diskType
            self.bandWidth = bandWidth
            self.diskSize = diskSize
            self.partition = partition
            self.topicNum = topicNum
            self.zoneId = zoneId
            self.multiZoneFlag = multiZoneFlag
            self.zoneIds = zoneIds
            self.instanceNum = instanceNum
            self.publicNetworkMonthly = publicNetworkMonthly
        }

        enum CodingKeys: String, CodingKey {
            case instanceName = "InstanceName"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case instanceType = "InstanceType"
            case msgRetentionTime = "MsgRetentionTime"
            case clusterId = "ClusterId"
            case kafkaVersion = "KafkaVersion"
            case specificationsType = "SpecificationsType"
            case diskType = "DiskType"
            case bandWidth = "BandWidth"
            case diskSize = "DiskSize"
            case partition = "Partition"
            case topicNum = "TopicNum"
            case zoneId = "ZoneId"
            case multiZoneFlag = "MultiZoneFlag"
            case zoneIds = "ZoneIds"
            case instanceNum = "InstanceNum"
            case publicNetworkMonthly = "PublicNetworkMonthly"
        }
    }

    /// CreatePostPaidInstance返回参数结构体
    public struct CreatePostPaidInstanceResponse: TCResponse {
        /// 返回结果
        public let result: CreateInstancePostResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建按量计费实例（新）
    ///
    /// 当前接口用来替代 CreateInstancePost 接口。创建按量计费实例。通常用于 SDK 或云 API 控制台调用接口，创建后付费 CKafka 实例。调用接口与在 CKafka 控制台购买按量付费实例效果相同。
    @inlinable
    public func createPostPaidInstance(_ input: CreatePostPaidInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePostPaidInstanceResponse> {
        self.client.execute(action: "CreatePostPaidInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建按量计费实例（新）
    ///
    /// 当前接口用来替代 CreateInstancePost 接口。创建按量计费实例。通常用于 SDK 或云 API 控制台调用接口，创建后付费 CKafka 实例。调用接口与在 CKafka 控制台购买按量付费实例效果相同。
    @inlinable
    public func createPostPaidInstance(_ input: CreatePostPaidInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePostPaidInstanceResponse {
        try await self.client.execute(action: "CreatePostPaidInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建按量计费实例（新）
    ///
    /// 当前接口用来替代 CreateInstancePost 接口。创建按量计费实例。通常用于 SDK 或云 API 控制台调用接口，创建后付费 CKafka 实例。调用接口与在 CKafka 控制台购买按量付费实例效果相同。
    @inlinable
    public func createPostPaidInstance(instanceName: String? = nil, vpcId: String? = nil, subnetId: String? = nil, instanceType: Int64? = nil, msgRetentionTime: Int64? = nil, clusterId: Int64? = nil, kafkaVersion: String? = nil, specificationsType: String? = nil, diskType: String? = nil, bandWidth: Int64? = nil, diskSize: Int64? = nil, partition: Int64? = nil, topicNum: Int64? = nil, zoneId: Int64? = nil, multiZoneFlag: Bool? = nil, zoneIds: [Int64]? = nil, instanceNum: Int64? = nil, publicNetworkMonthly: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePostPaidInstanceResponse> {
        self.createPostPaidInstance(.init(instanceName: instanceName, vpcId: vpcId, subnetId: subnetId, instanceType: instanceType, msgRetentionTime: msgRetentionTime, clusterId: clusterId, kafkaVersion: kafkaVersion, specificationsType: specificationsType, diskType: diskType, bandWidth: bandWidth, diskSize: diskSize, partition: partition, topicNum: topicNum, zoneId: zoneId, multiZoneFlag: multiZoneFlag, zoneIds: zoneIds, instanceNum: instanceNum, publicNetworkMonthly: publicNetworkMonthly), region: region, logger: logger, on: eventLoop)
    }

    /// 创建按量计费实例（新）
    ///
    /// 当前接口用来替代 CreateInstancePost 接口。创建按量计费实例。通常用于 SDK 或云 API 控制台调用接口，创建后付费 CKafka 实例。调用接口与在 CKafka 控制台购买按量付费实例效果相同。
    @inlinable
    public func createPostPaidInstance(instanceName: String? = nil, vpcId: String? = nil, subnetId: String? = nil, instanceType: Int64? = nil, msgRetentionTime: Int64? = nil, clusterId: Int64? = nil, kafkaVersion: String? = nil, specificationsType: String? = nil, diskType: String? = nil, bandWidth: Int64? = nil, diskSize: Int64? = nil, partition: Int64? = nil, topicNum: Int64? = nil, zoneId: Int64? = nil, multiZoneFlag: Bool? = nil, zoneIds: [Int64]? = nil, instanceNum: Int64? = nil, publicNetworkMonthly: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePostPaidInstanceResponse {
        try await self.createPostPaidInstance(.init(instanceName: instanceName, vpcId: vpcId, subnetId: subnetId, instanceType: instanceType, msgRetentionTime: msgRetentionTime, clusterId: clusterId, kafkaVersion: kafkaVersion, specificationsType: specificationsType, diskType: diskType, bandWidth: bandWidth, diskSize: diskSize, partition: partition, topicNum: topicNum, zoneId: zoneId, multiZoneFlag: multiZoneFlag, zoneIds: zoneIds, instanceNum: instanceNum, publicNetworkMonthly: publicNetworkMonthly), region: region, logger: logger, on: eventLoop)
    }
}
