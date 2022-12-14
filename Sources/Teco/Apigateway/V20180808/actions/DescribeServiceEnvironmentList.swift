//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Apigateway {
    /// DescribeServiceEnvironmentList请求参数结构体
    public struct DescribeServiceEnvironmentListRequest: TCRequestModel {
        /// 待查询的服务唯一 ID。
        public let serviceId: String

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: UInt64?

        /// 偏移量，默认为 0。
        public let offset: UInt64?

        public init(serviceId: String, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.serviceId = serviceId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeServiceEnvironmentList返回参数结构体
    public struct DescribeServiceEnvironmentListResponse: TCResponseModel {
        /// 服务绑定环境详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ServiceEnvironmentSet?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询服务环境列表
    ///
    /// 本接口（DescribeServiceEnvironmentList）用于查询一个服务的环境列表，可查询到此服务下所有环境及其状态。
    @inlinable
    public func describeServiceEnvironmentList(_ input: DescribeServiceEnvironmentListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeServiceEnvironmentListResponse > {
        self.client.execute(action: "DescribeServiceEnvironmentList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务环境列表
    ///
    /// 本接口（DescribeServiceEnvironmentList）用于查询一个服务的环境列表，可查询到此服务下所有环境及其状态。
    @inlinable
    public func describeServiceEnvironmentList(_ input: DescribeServiceEnvironmentListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceEnvironmentListResponse {
        try await self.client.execute(action: "DescribeServiceEnvironmentList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务环境列表
    ///
    /// 本接口（DescribeServiceEnvironmentList）用于查询一个服务的环境列表，可查询到此服务下所有环境及其状态。
    @inlinable
    public func describeServiceEnvironmentList(serviceId: String, limit: UInt64? = nil, offset: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeServiceEnvironmentListResponse > {
        self.describeServiceEnvironmentList(DescribeServiceEnvironmentListRequest(serviceId: serviceId, limit: limit, offset: offset), logger: logger, on: eventLoop)
    }

    /// 查询服务环境列表
    ///
    /// 本接口（DescribeServiceEnvironmentList）用于查询一个服务的环境列表，可查询到此服务下所有环境及其状态。
    @inlinable
    public func describeServiceEnvironmentList(serviceId: String, limit: UInt64? = nil, offset: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceEnvironmentListResponse {
        try await self.describeServiceEnvironmentList(DescribeServiceEnvironmentListRequest(serviceId: serviceId, limit: limit, offset: offset), logger: logger, on: eventLoop)
    }
}
