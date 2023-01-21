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

extension Rum {
    /// CreateTawInstance请求参数结构体
    public struct CreateTawInstanceRequest: TCRequestModel {
        /// 片区Id，(至少大于0)
        public let areaId: Int64

        /// 计费类型, (1=后付费)
        public let chargeType: Int64

        /// 数据保存时间，(至少大于0)
        public let dataRetentionDays: Int64

        /// 实例名称，(最大长度不超过255字节)
        public let instanceName: String

        /// 标签列表
        public let tags: [Tag]?

        /// 实例描述，(最大长度不超过1024字节)
        public let instanceDesc: String?

        /// 每天数据上报量
        public let countNum: String?

        /// 数据存储时长计费
        public let periodRetain: String?

        /// 实例购买渠道("cdn" 等)
        public let buyingChannel: String?

        /// 预付费资源包类型(仅预付费需要)
        public let resourcePackageType: UInt64?

        /// 预付费资源包数量(仅预付费需要)
        public let resourcePackageNum: UInt64?

        public init(areaId: Int64, chargeType: Int64, dataRetentionDays: Int64, instanceName: String, tags: [Tag]? = nil, instanceDesc: String? = nil, countNum: String? = nil, periodRetain: String? = nil, buyingChannel: String? = nil, resourcePackageType: UInt64? = nil, resourcePackageNum: UInt64? = nil) {
            self.areaId = areaId
            self.chargeType = chargeType
            self.dataRetentionDays = dataRetentionDays
            self.instanceName = instanceName
            self.tags = tags
            self.instanceDesc = instanceDesc
            self.countNum = countNum
            self.periodRetain = periodRetain
            self.buyingChannel = buyingChannel
            self.resourcePackageType = resourcePackageType
            self.resourcePackageNum = resourcePackageNum
        }

        enum CodingKeys: String, CodingKey {
            case areaId = "AreaId"
            case chargeType = "ChargeType"
            case dataRetentionDays = "DataRetentionDays"
            case instanceName = "InstanceName"
            case tags = "Tags"
            case instanceDesc = "InstanceDesc"
            case countNum = "CountNum"
            case periodRetain = "PeriodRetain"
            case buyingChannel = "BuyingChannel"
            case resourcePackageType = "ResourcePackageType"
            case resourcePackageNum = "ResourcePackageNum"
        }
    }

    /// CreateTawInstance返回参数结构体
    public struct CreateTawInstanceResponse: TCResponseModel {
        /// 实例Id
        public let instanceId: String

        /// 预付费订单 id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dealName: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dealName = "DealName"
            case requestId = "RequestId"
        }
    }

    /// 创建Rum实例
    @inlinable
    public func createTawInstance(_ input: CreateTawInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTawInstanceResponse> {
        self.client.execute(action: "CreateTawInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建Rum实例
    @inlinable
    public func createTawInstance(_ input: CreateTawInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTawInstanceResponse {
        try await self.client.execute(action: "CreateTawInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建Rum实例
    @inlinable
    public func createTawInstance(areaId: Int64, chargeType: Int64, dataRetentionDays: Int64, instanceName: String, tags: [Tag]? = nil, instanceDesc: String? = nil, countNum: String? = nil, periodRetain: String? = nil, buyingChannel: String? = nil, resourcePackageType: UInt64? = nil, resourcePackageNum: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTawInstanceResponse> {
        self.createTawInstance(CreateTawInstanceRequest(areaId: areaId, chargeType: chargeType, dataRetentionDays: dataRetentionDays, instanceName: instanceName, tags: tags, instanceDesc: instanceDesc, countNum: countNum, periodRetain: periodRetain, buyingChannel: buyingChannel, resourcePackageType: resourcePackageType, resourcePackageNum: resourcePackageNum), region: region, logger: logger, on: eventLoop)
    }

    /// 创建Rum实例
    @inlinable
    public func createTawInstance(areaId: Int64, chargeType: Int64, dataRetentionDays: Int64, instanceName: String, tags: [Tag]? = nil, instanceDesc: String? = nil, countNum: String? = nil, periodRetain: String? = nil, buyingChannel: String? = nil, resourcePackageType: UInt64? = nil, resourcePackageNum: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTawInstanceResponse {
        try await self.createTawInstance(CreateTawInstanceRequest(areaId: areaId, chargeType: chargeType, dataRetentionDays: dataRetentionDays, instanceName: instanceName, tags: tags, instanceDesc: instanceDesc, countNum: countNum, periodRetain: periodRetain, buyingChannel: buyingChannel, resourcePackageType: resourcePackageType, resourcePackageNum: resourcePackageNum), region: region, logger: logger, on: eventLoop)
    }
}
