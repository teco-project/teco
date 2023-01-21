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

extension Iotvideo {
    /// DescribeTraceStatus请求参数结构体
    public struct DescribeTraceStatusRequest: TCRequestModel {
        /// 设备TID列表
        public let tids: [String]

        public init(tids: [String]) {
            self.tids = tids
        }

        enum CodingKeys: String, CodingKey {
            case tids = "Tids"
        }
    }

    /// DescribeTraceStatus返回参数结构体
    public struct DescribeTraceStatusResponse: TCResponseModel {
        /// 设备追踪状态列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [TraceStatus]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询指定设备是否在白名单
    ///
    /// 本接口（DescribeTraceStatus）用于查询指定设备是否在白名单中。
    @inlinable
    public func describeTraceStatus(_ input: DescribeTraceStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTraceStatusResponse> {
        self.client.execute(action: "DescribeTraceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询指定设备是否在白名单
    ///
    /// 本接口（DescribeTraceStatus）用于查询指定设备是否在白名单中。
    @inlinable
    public func describeTraceStatus(_ input: DescribeTraceStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTraceStatusResponse {
        try await self.client.execute(action: "DescribeTraceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询指定设备是否在白名单
    ///
    /// 本接口（DescribeTraceStatus）用于查询指定设备是否在白名单中。
    @inlinable
    public func describeTraceStatus(tids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTraceStatusResponse> {
        self.describeTraceStatus(DescribeTraceStatusRequest(tids: tids), region: region, logger: logger, on: eventLoop)
    }

    /// 查询指定设备是否在白名单
    ///
    /// 本接口（DescribeTraceStatus）用于查询指定设备是否在白名单中。
    @inlinable
    public func describeTraceStatus(tids: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTraceStatusResponse {
        try await self.describeTraceStatus(DescribeTraceStatusRequest(tids: tids), region: region, logger: logger, on: eventLoop)
    }
}
