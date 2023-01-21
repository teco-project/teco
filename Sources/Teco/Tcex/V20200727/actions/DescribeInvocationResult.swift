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

extension Tcex {
    /// DescribeInvocationResult请求参数结构体
    public struct DescribeInvocationResultRequest: TCRequestModel {
        /// 调用id，为调用InvokeService接口返回的RequestId
        public let invokeId: String

        public init(invokeId: String) {
            self.invokeId = invokeId
        }

        enum CodingKeys: String, CodingKey {
            case invokeId = "InvokeId"
        }
    }

    /// DescribeInvocationResult返回参数结构体
    public struct DescribeInvocationResultResponse: TCResponseModel {
        /// 服务的调用结果
        public let results: [AlgorithmResult]

        /// 0:获取结果失败
        /// 1：结果还没有生成，继续轮询
        /// 2：获取结果成功
        public let status: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case results = "Results"
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 查询服务调用结果
    ///
    /// 产品控制台已经下线
    /// 获取服务调用结果。和InvokeService接口配置合适，其InvokeId参数为InvokeService接口返回的RequestId。
    @inlinable
    public func describeInvocationResult(_ input: DescribeInvocationResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInvocationResultResponse> {
        self.client.execute(action: "DescribeInvocationResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务调用结果
    ///
    /// 产品控制台已经下线
    /// 获取服务调用结果。和InvokeService接口配置合适，其InvokeId参数为InvokeService接口返回的RequestId。
    @inlinable
    public func describeInvocationResult(_ input: DescribeInvocationResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInvocationResultResponse {
        try await self.client.execute(action: "DescribeInvocationResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务调用结果
    ///
    /// 产品控制台已经下线
    /// 获取服务调用结果。和InvokeService接口配置合适，其InvokeId参数为InvokeService接口返回的RequestId。
    @inlinable
    public func describeInvocationResult(invokeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInvocationResultResponse> {
        self.describeInvocationResult(DescribeInvocationResultRequest(invokeId: invokeId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询服务调用结果
    ///
    /// 产品控制台已经下线
    /// 获取服务调用结果。和InvokeService接口配置合适，其InvokeId参数为InvokeService接口返回的RequestId。
    @inlinable
    public func describeInvocationResult(invokeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInvocationResultResponse {
        try await self.describeInvocationResult(DescribeInvocationResultRequest(invokeId: invokeId), region: region, logger: logger, on: eventLoop)
    }
}
