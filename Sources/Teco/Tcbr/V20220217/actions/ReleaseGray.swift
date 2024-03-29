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

extension Tcbr {
    /// ReleaseGray请求参数结构体
    public struct ReleaseGrayRequest: TCRequest {
        /// 环境Id
        public let envId: String

        /// 服务名
        public let serverName: String

        /// 灰度类型
        public let grayType: String

        /// 流量类型
        public let trafficType: String

        /// 流量策略
        public let versionFlowItems: [VersionFlowInfo]?

        /// 操作标识
        public let operatorRemark: String?

        /// 流量比例
        public let grayFlowRatio: Int64?

        public init(envId: String, serverName: String, grayType: String, trafficType: String, versionFlowItems: [VersionFlowInfo]? = nil, operatorRemark: String? = nil, grayFlowRatio: Int64? = nil) {
            self.envId = envId
            self.serverName = serverName
            self.grayType = grayType
            self.trafficType = trafficType
            self.versionFlowItems = versionFlowItems
            self.operatorRemark = operatorRemark
            self.grayFlowRatio = grayFlowRatio
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case serverName = "ServerName"
            case grayType = "GrayType"
            case trafficType = "TrafficType"
            case versionFlowItems = "VersionFlowItems"
            case operatorRemark = "OperatorRemark"
            case grayFlowRatio = "GrayFlowRatio"
        }
    }

    /// ReleaseGray返回参数结构体
    public struct ReleaseGrayResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 灰度发布
    @inlinable @discardableResult
    public func releaseGray(_ input: ReleaseGrayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseGrayResponse> {
        self.client.execute(action: "ReleaseGray", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 灰度发布
    @inlinable @discardableResult
    public func releaseGray(_ input: ReleaseGrayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseGrayResponse {
        try await self.client.execute(action: "ReleaseGray", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 灰度发布
    @inlinable @discardableResult
    public func releaseGray(envId: String, serverName: String, grayType: String, trafficType: String, versionFlowItems: [VersionFlowInfo]? = nil, operatorRemark: String? = nil, grayFlowRatio: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseGrayResponse> {
        self.releaseGray(.init(envId: envId, serverName: serverName, grayType: grayType, trafficType: trafficType, versionFlowItems: versionFlowItems, operatorRemark: operatorRemark, grayFlowRatio: grayFlowRatio), region: region, logger: logger, on: eventLoop)
    }

    /// 灰度发布
    @inlinable @discardableResult
    public func releaseGray(envId: String, serverName: String, grayType: String, trafficType: String, versionFlowItems: [VersionFlowInfo]? = nil, operatorRemark: String? = nil, grayFlowRatio: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseGrayResponse {
        try await self.releaseGray(.init(envId: envId, serverName: serverName, grayType: grayType, trafficType: trafficType, versionFlowItems: versionFlowItems, operatorRemark: operatorRemark, grayFlowRatio: grayFlowRatio), region: region, logger: logger, on: eventLoop)
    }
}
