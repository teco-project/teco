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

import TecoCore

extension Iotvideo {
    /// DescribeTraceIds请求参数结构体
    public struct DescribeTraceIdsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeTraceIds返回参数结构体
    public struct DescribeTraceIdsResponse: TCResponseModel {
        /// 设备TID列表，列表元素之间以“,”分隔
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询设备日志跟踪白名单
    ///
    /// 本接口（DescribeTraceIds）用于查询设备日志跟踪白名单。
    @inlinable
    public func describeTraceIds(_ input: DescribeTraceIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTraceIdsResponse> {
        self.client.execute(action: "DescribeTraceIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备日志跟踪白名单
    ///
    /// 本接口（DescribeTraceIds）用于查询设备日志跟踪白名单。
    @inlinable
    public func describeTraceIds(_ input: DescribeTraceIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTraceIdsResponse {
        try await self.client.execute(action: "DescribeTraceIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询设备日志跟踪白名单
    ///
    /// 本接口（DescribeTraceIds）用于查询设备日志跟踪白名单。
    @inlinable
    public func describeTraceIds(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTraceIdsResponse> {
        self.describeTraceIds(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询设备日志跟踪白名单
    ///
    /// 本接口（DescribeTraceIds）用于查询设备日志跟踪白名单。
    @inlinable
    public func describeTraceIds(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTraceIdsResponse {
        try await self.describeTraceIds(.init(), region: region, logger: logger, on: eventLoop)
    }
}
