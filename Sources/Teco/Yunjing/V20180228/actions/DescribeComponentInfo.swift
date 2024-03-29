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

extension Yunjing {
    /// DescribeComponentInfo请求参数结构体
    public struct DescribeComponentInfoRequest: TCRequest {
        /// 组件ID。
        public let componentId: UInt64

        public init(componentId: UInt64) {
            self.componentId = componentId
        }

        enum CodingKeys: String, CodingKey {
            case componentId = "ComponentId"
        }
    }

    /// DescribeComponentInfo返回参数结构体
    public struct DescribeComponentInfoResponse: TCResponse {
        /// 组件ID。
        public let id: UInt64

        /// 组件名称。
        public let componentName: String

        /// 组件类型。
        /// - WEB：web组件
        /// - SYSTEM：系统组件
        public let componentType: String

        /// 组件官网。
        public let homepage: String

        /// 组件描述。
        public let description: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case componentName = "ComponentName"
            case componentType = "ComponentType"
            case homepage = "Homepage"
            case description = "Description"
            case requestId = "RequestId"
        }
    }

    /// 获取组件信息
    ///
    /// 本接口 (DescribeComponentInfo) 用于获取组件信息数据。
    @inlinable
    public func describeComponentInfo(_ input: DescribeComponentInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComponentInfoResponse> {
        self.client.execute(action: "DescribeComponentInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取组件信息
    ///
    /// 本接口 (DescribeComponentInfo) 用于获取组件信息数据。
    @inlinable
    public func describeComponentInfo(_ input: DescribeComponentInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComponentInfoResponse {
        try await self.client.execute(action: "DescribeComponentInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取组件信息
    ///
    /// 本接口 (DescribeComponentInfo) 用于获取组件信息数据。
    @inlinable
    public func describeComponentInfo(componentId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComponentInfoResponse> {
        self.describeComponentInfo(.init(componentId: componentId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取组件信息
    ///
    /// 本接口 (DescribeComponentInfo) 用于获取组件信息数据。
    @inlinable
    public func describeComponentInfo(componentId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComponentInfoResponse {
        try await self.describeComponentInfo(.init(componentId: componentId), region: region, logger: logger, on: eventLoop)
    }
}
