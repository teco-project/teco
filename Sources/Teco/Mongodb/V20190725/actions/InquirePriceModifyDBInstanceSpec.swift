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

extension Mongodb {
    /// InquirePriceModifyDBInstanceSpec请求参数结构体
    public struct InquirePriceModifyDBInstanceSpecRequest: TCRequestModel {
        /// 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同。
        public let instanceId: String

        /// 变更配置后实例内存大小，单位：GB。
        public let memory: Int64

        /// 变更配置后实例磁盘大小，单位：GB。
        public let volume: Int64

        /// 实例变更后的节点数，取值范围具体参照查询云数据库的售卖规格返回参数。默认为不变更节点数
        public let nodeNum: Int64?

        /// 实例变更后的分片数，取值范围具体参照查询云数据库的售卖规格返回参数。只能增加不能减少，默认为不变更分片数
        public let replicateSetNum: Int64?

        public init(instanceId: String, memory: Int64, volume: Int64, nodeNum: Int64? = nil, replicateSetNum: Int64? = nil) {
            self.instanceId = instanceId
            self.memory = memory
            self.volume = volume
            self.nodeNum = nodeNum
            self.replicateSetNum = replicateSetNum
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case memory = "Memory"
            case volume = "Volume"
            case nodeNum = "NodeNum"
            case replicateSetNum = "ReplicateSetNum"
        }
    }

    /// InquirePriceModifyDBInstanceSpec返回参数结构体
    public struct InquirePriceModifyDBInstanceSpecResponse: TCResponseModel {
        /// 价格。
        public let price: DBInstancePrice

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }

    /// 变更配置询价
    ///
    /// 本接口 (InquirePriceModifyDBInstanceSpec) 用于调整实例的配置询价。
    @inlinable
    public func inquirePriceModifyDBInstanceSpec(_ input: InquirePriceModifyDBInstanceSpecRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquirePriceModifyDBInstanceSpecResponse> {
        self.client.execute(action: "InquirePriceModifyDBInstanceSpec", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 变更配置询价
    ///
    /// 本接口 (InquirePriceModifyDBInstanceSpec) 用于调整实例的配置询价。
    @inlinable
    public func inquirePriceModifyDBInstanceSpec(_ input: InquirePriceModifyDBInstanceSpecRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePriceModifyDBInstanceSpecResponse {
        try await self.client.execute(action: "InquirePriceModifyDBInstanceSpec", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 变更配置询价
    ///
    /// 本接口 (InquirePriceModifyDBInstanceSpec) 用于调整实例的配置询价。
    @inlinable
    public func inquirePriceModifyDBInstanceSpec(instanceId: String, memory: Int64, volume: Int64, nodeNum: Int64? = nil, replicateSetNum: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquirePriceModifyDBInstanceSpecResponse> {
        self.inquirePriceModifyDBInstanceSpec(InquirePriceModifyDBInstanceSpecRequest(instanceId: instanceId, memory: memory, volume: volume, nodeNum: nodeNum, replicateSetNum: replicateSetNum), region: region, logger: logger, on: eventLoop)
    }

    /// 变更配置询价
    ///
    /// 本接口 (InquirePriceModifyDBInstanceSpec) 用于调整实例的配置询价。
    @inlinable
    public func inquirePriceModifyDBInstanceSpec(instanceId: String, memory: Int64, volume: Int64, nodeNum: Int64? = nil, replicateSetNum: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePriceModifyDBInstanceSpecResponse {
        try await self.inquirePriceModifyDBInstanceSpec(InquirePriceModifyDBInstanceSpecRequest(instanceId: instanceId, memory: memory, volume: volume, nodeNum: nodeNum, replicateSetNum: replicateSetNum), region: region, logger: logger, on: eventLoop)
    }
}
