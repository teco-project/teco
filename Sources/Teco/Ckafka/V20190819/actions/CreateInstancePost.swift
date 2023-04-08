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
    /// CreateInstancePost请求参数结构体
    public struct CreateInstancePostRequest: TCRequestModel {
        /// 实例名称，是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        public let instanceName: String

        /// 实例带宽
        public let bandWidth: Int64

        /// vpcId，不填默认基础网络
        public let vpcId: String?

        /// 子网id，vpc网络需要传该参数，基础网络可以不传
        public let subnetId: String?

        /// 可选。实例日志的最长保留时间，单位分钟，默认为10080（7天），最大30天，不填默认0，代表不开启日志保留时间回收策略
        public let msgRetentionTime: Int64?

        /// 可用区
        public let zoneId: Int64?

        /// 创建实例时可以选择集群Id, 该入参表示集群Id
        public let clusterId: Int64?

        public init(instanceName: String, bandWidth: Int64, vpcId: String? = nil, subnetId: String? = nil, msgRetentionTime: Int64? = nil, zoneId: Int64? = nil, clusterId: Int64? = nil) {
            self.instanceName = instanceName
            self.bandWidth = bandWidth
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.msgRetentionTime = msgRetentionTime
            self.zoneId = zoneId
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case instanceName = "InstanceName"
            case bandWidth = "BandWidth"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case msgRetentionTime = "MsgRetentionTime"
            case zoneId = "ZoneId"
            case clusterId = "ClusterId"
        }
    }

    /// CreateInstancePost返回参数结构体
    public struct CreateInstancePostResponse: TCResponseModel {
        /// 返回结果
        public let result: JgwOperateResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建按量计费实例
    @inlinable
    public func createInstancePost(_ input: CreateInstancePostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstancePostResponse> {
        self.client.execute(action: "CreateInstancePost", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建按量计费实例
    @inlinable
    public func createInstancePost(_ input: CreateInstancePostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstancePostResponse {
        try await self.client.execute(action: "CreateInstancePost", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建按量计费实例
    @inlinable
    public func createInstancePost(instanceName: String, bandWidth: Int64, vpcId: String? = nil, subnetId: String? = nil, msgRetentionTime: Int64? = nil, zoneId: Int64? = nil, clusterId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstancePostResponse> {
        self.createInstancePost(.init(instanceName: instanceName, bandWidth: bandWidth, vpcId: vpcId, subnetId: subnetId, msgRetentionTime: msgRetentionTime, zoneId: zoneId, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建按量计费实例
    @inlinable
    public func createInstancePost(instanceName: String, bandWidth: Int64, vpcId: String? = nil, subnetId: String? = nil, msgRetentionTime: Int64? = nil, zoneId: Int64? = nil, clusterId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstancePostResponse {
        try await self.createInstancePost(.init(instanceName: instanceName, bandWidth: bandWidth, vpcId: vpcId, subnetId: subnetId, msgRetentionTime: msgRetentionTime, zoneId: zoneId, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
