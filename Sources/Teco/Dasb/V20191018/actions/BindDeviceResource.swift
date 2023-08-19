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

extension Dasb {
    /// BindDeviceResource请求参数结构体
    public struct BindDeviceResourceRequest: TCRequest {
        /// 资产ID集合
        public let deviceIdSet: [UInt64]

        /// 堡垒机服务ID
        public let resourceId: String

        public init(deviceIdSet: [UInt64], resourceId: String) {
            self.deviceIdSet = deviceIdSet
            self.resourceId = resourceId
        }

        enum CodingKeys: String, CodingKey {
            case deviceIdSet = "DeviceIdSet"
            case resourceId = "ResourceId"
        }
    }

    /// BindDeviceResource返回参数结构体
    public struct BindDeviceResourceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改资产绑定的堡垒机服务
    @inlinable @discardableResult
    public func bindDeviceResource(_ input: BindDeviceResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindDeviceResourceResponse> {
        self.client.execute(action: "BindDeviceResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改资产绑定的堡垒机服务
    @inlinable @discardableResult
    public func bindDeviceResource(_ input: BindDeviceResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindDeviceResourceResponse {
        try await self.client.execute(action: "BindDeviceResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改资产绑定的堡垒机服务
    @inlinable @discardableResult
    public func bindDeviceResource(deviceIdSet: [UInt64], resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindDeviceResourceResponse> {
        self.bindDeviceResource(.init(deviceIdSet: deviceIdSet, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改资产绑定的堡垒机服务
    @inlinable @discardableResult
    public func bindDeviceResource(deviceIdSet: [UInt64], resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindDeviceResourceResponse {
        try await self.bindDeviceResource(.init(deviceIdSet: deviceIdSet, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }
}
