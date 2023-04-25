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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cloudhsm {
    /// GetVsmMonitorInfo请求参数结构体
    public struct GetVsmMonitorInfoRequest: TCRequestModel {
        /// 资源Id
        public let resourceId: String

        /// 资源名称
        public let resourceName: String?

        public init(resourceId: String, resourceName: String? = nil) {
            self.resourceId = resourceId
            self.resourceName = resourceName
        }

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case resourceName = "ResourceName"
        }
    }

    /// GetVsmMonitorInfo返回参数结构体
    public struct GetVsmMonitorInfoResponse: TCResponseModel {
        /// VSM监控信息
        public let monitorInfo: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case monitorInfo = "MonitorInfo"
            case requestId = "RequestId"
        }
    }

    /// 获取VSM监控信息
    @inlinable
    public func getVsmMonitorInfo(_ input: GetVsmMonitorInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetVsmMonitorInfoResponse> {
        self.client.execute(action: "GetVsmMonitorInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取VSM监控信息
    @inlinable
    public func getVsmMonitorInfo(_ input: GetVsmMonitorInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetVsmMonitorInfoResponse {
        try await self.client.execute(action: "GetVsmMonitorInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取VSM监控信息
    @inlinable
    public func getVsmMonitorInfo(resourceId: String, resourceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetVsmMonitorInfoResponse> {
        self.getVsmMonitorInfo(.init(resourceId: resourceId, resourceName: resourceName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取VSM监控信息
    @inlinable
    public func getVsmMonitorInfo(resourceId: String, resourceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetVsmMonitorInfoResponse {
        try await self.getVsmMonitorInfo(.init(resourceId: resourceId, resourceName: resourceName), region: region, logger: logger, on: eventLoop)
    }
}
