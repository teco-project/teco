//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Trp {
    /// DescribeTraceCodeById请求参数结构体
    public struct DescribeTraceCodeByIdRequest: TCRequestModel {
        /// 企业ID
        public let corpId: UInt64?

        /// 二维码
        public let code: String?

        public init(corpId: UInt64? = nil, code: String? = nil) {
            self.corpId = corpId
            self.code = code
        }

        enum CodingKeys: String, CodingKey {
            case corpId = "CorpId"
            case code = "Code"
        }
    }

    /// DescribeTraceCodeById返回参数结构体
    public struct DescribeTraceCodeByIdResponse: TCResponseModel {
        /// 无
        public let traceCode: TraceCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case traceCode = "TraceCode"
            case requestId = "RequestId"
        }
    }

    /// 查询二维码信息
    @inlinable
    public func describeTraceCodeById(_ input: DescribeTraceCodeByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTraceCodeByIdResponse> {
        self.client.execute(action: "DescribeTraceCodeById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询二维码信息
    @inlinable
    public func describeTraceCodeById(_ input: DescribeTraceCodeByIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTraceCodeByIdResponse {
        try await self.client.execute(action: "DescribeTraceCodeById", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询二维码信息
    @inlinable
    public func describeTraceCodeById(corpId: UInt64? = nil, code: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTraceCodeByIdResponse> {
        self.describeTraceCodeById(DescribeTraceCodeByIdRequest(corpId: corpId, code: code), region: region, logger: logger, on: eventLoop)
    }

    /// 查询二维码信息
    @inlinable
    public func describeTraceCodeById(corpId: UInt64? = nil, code: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTraceCodeByIdResponse {
        try await self.describeTraceCodeById(DescribeTraceCodeByIdRequest(corpId: corpId, code: code), region: region, logger: logger, on: eventLoop)
    }
}
