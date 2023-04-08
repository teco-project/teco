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

extension Gaap {
    /// DescribeCustomHeader请求参数结构体
    public struct DescribeCustomHeaderRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeCustomHeader返回参数结构体
    public struct DescribeCustomHeaderResponse: TCResponseModel {
        /// 规则id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ruleId: String?

        /// 自定义header列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let headers: [HttpHeaderParam]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case headers = "Headers"
            case requestId = "RequestId"
        }
    }

    /// 查询自定义header列表
    ///
    /// 本接口（DescribeCustomHeader）用于自定义header列表
    @inlinable
    public func describeCustomHeader(_ input: DescribeCustomHeaderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomHeaderResponse> {
        self.client.execute(action: "DescribeCustomHeader", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询自定义header列表
    ///
    /// 本接口（DescribeCustomHeader）用于自定义header列表
    @inlinable
    public func describeCustomHeader(_ input: DescribeCustomHeaderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomHeaderResponse {
        try await self.client.execute(action: "DescribeCustomHeader", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询自定义header列表
    ///
    /// 本接口（DescribeCustomHeader）用于自定义header列表
    @inlinable
    public func describeCustomHeader(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomHeaderResponse> {
        self.describeCustomHeader(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询自定义header列表
    ///
    /// 本接口（DescribeCustomHeader）用于自定义header列表
    @inlinable
    public func describeCustomHeader(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomHeaderResponse {
        try await self.describeCustomHeader(.init(), region: region, logger: logger, on: eventLoop)
    }
}
