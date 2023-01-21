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

extension Apigateway {
    /// DescribeApiUsagePlan请求参数结构体
    public struct DescribeApiUsagePlanRequest: TCRequestModel {
        /// 待查询的服务唯一 ID。
        public let serviceId: String

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        public init(serviceId: String, limit: Int64? = nil, offset: Int64? = nil) {
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

    /// DescribeApiUsagePlan返回参数结构体
    public struct DescribeApiUsagePlanResponse: TCResponseModel {
        /// api绑定使用计划列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ApiUsagePlanSet?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询 API 使用计划详情
    ///
    /// 本接口（DescribeApiUsagePlan）用于查询服务中 API 使用计划详情。
    /// 服务若需要鉴权限流生效，则需要绑定使用计划到此服务中，本接口用于查询绑定到一个服务及其中 API 的所有使用计划。
    @inlinable
    public func describeApiUsagePlan(_ input: DescribeApiUsagePlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiUsagePlanResponse> {
        self.client.execute(action: "DescribeApiUsagePlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询 API 使用计划详情
    ///
    /// 本接口（DescribeApiUsagePlan）用于查询服务中 API 使用计划详情。
    /// 服务若需要鉴权限流生效，则需要绑定使用计划到此服务中，本接口用于查询绑定到一个服务及其中 API 的所有使用计划。
    @inlinable
    public func describeApiUsagePlan(_ input: DescribeApiUsagePlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiUsagePlanResponse {
        try await self.client.execute(action: "DescribeApiUsagePlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询 API 使用计划详情
    ///
    /// 本接口（DescribeApiUsagePlan）用于查询服务中 API 使用计划详情。
    /// 服务若需要鉴权限流生效，则需要绑定使用计划到此服务中，本接口用于查询绑定到一个服务及其中 API 的所有使用计划。
    @inlinable
    public func describeApiUsagePlan(serviceId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiUsagePlanResponse> {
        self.describeApiUsagePlan(DescribeApiUsagePlanRequest(serviceId: serviceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询 API 使用计划详情
    ///
    /// 本接口（DescribeApiUsagePlan）用于查询服务中 API 使用计划详情。
    /// 服务若需要鉴权限流生效，则需要绑定使用计划到此服务中，本接口用于查询绑定到一个服务及其中 API 的所有使用计划。
    @inlinable
    public func describeApiUsagePlan(serviceId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiUsagePlanResponse {
        try await self.describeApiUsagePlan(DescribeApiUsagePlanRequest(serviceId: serviceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
