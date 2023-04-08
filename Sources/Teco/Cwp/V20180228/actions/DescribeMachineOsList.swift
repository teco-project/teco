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

extension Cwp {
    /// DescribeMachineOsList请求参数结构体
    public struct DescribeMachineOsListRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeMachineOsList返回参数结构体
    public struct DescribeMachineOsListResponse: TCResponseModel {
        /// 操作系统列表
        public let list: [OsName]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 查询机器操作系统列表
    ///
    /// 查询可筛选操作系统列表.
    @inlinable
    public func describeMachineOsList(_ input: DescribeMachineOsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachineOsListResponse> {
        self.client.execute(action: "DescribeMachineOsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询机器操作系统列表
    ///
    /// 查询可筛选操作系统列表.
    @inlinable
    public func describeMachineOsList(_ input: DescribeMachineOsListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachineOsListResponse {
        try await self.client.execute(action: "DescribeMachineOsList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询机器操作系统列表
    ///
    /// 查询可筛选操作系统列表.
    @inlinable
    public func describeMachineOsList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachineOsListResponse> {
        self.describeMachineOsList(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询机器操作系统列表
    ///
    /// 查询可筛选操作系统列表.
    @inlinable
    public func describeMachineOsList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachineOsListResponse {
        try await self.describeMachineOsList(.init(), region: region, logger: logger, on: eventLoop)
    }
}
