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
    /// DescribeUsagePlanEnvironments请求参数结构体
    public struct DescribeUsagePlanEnvironmentsRequest: TCRequestModel {
        /// 待查询的使用计划唯一 ID。
        public let usagePlanId: String

        /// 定类型，取值为 API、SERVICE，默认值为 SERVICE。
        public let bindType: String

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        public init(usagePlanId: String, bindType: String, limit: Int64? = nil, offset: Int64? = nil) {
            self.usagePlanId = usagePlanId
            self.bindType = bindType
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case usagePlanId = "UsagePlanId"
            case bindType = "BindType"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeUsagePlanEnvironments返回参数结构体
    public struct DescribeUsagePlanEnvironmentsResponse: TCResponseModel {
        /// 使用计划绑定详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: UsagePlanEnvironmentStatus?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询使用计划绑定环境列表
    ///
    /// 本接口（DescribeUsagePlanEnvironments）用于查询使用计划绑定的环境列表。
    /// 用户在绑定了某个使用计划到环境后，可使用本接口查询这个使用计划绑定的所有服务的环境。
    @inlinable
    public func describeUsagePlanEnvironments(_ input: DescribeUsagePlanEnvironmentsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUsagePlanEnvironmentsResponse > {
        self.client.execute(action: "DescribeUsagePlanEnvironments", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询使用计划绑定环境列表
    ///
    /// 本接口（DescribeUsagePlanEnvironments）用于查询使用计划绑定的环境列表。
    /// 用户在绑定了某个使用计划到环境后，可使用本接口查询这个使用计划绑定的所有服务的环境。
    @inlinable
    public func describeUsagePlanEnvironments(_ input: DescribeUsagePlanEnvironmentsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsagePlanEnvironmentsResponse {
        try await self.client.execute(action: "DescribeUsagePlanEnvironments", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询使用计划绑定环境列表
    ///
    /// 本接口（DescribeUsagePlanEnvironments）用于查询使用计划绑定的环境列表。
    /// 用户在绑定了某个使用计划到环境后，可使用本接口查询这个使用计划绑定的所有服务的环境。
    @inlinable
    public func describeUsagePlanEnvironments(usagePlanId: String, bindType: String, limit: Int64? = nil, offset: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUsagePlanEnvironmentsResponse > {
        self.describeUsagePlanEnvironments(DescribeUsagePlanEnvironmentsRequest(usagePlanId: usagePlanId, bindType: bindType, limit: limit, offset: offset), logger: logger, on: eventLoop)
    }

    /// 查询使用计划绑定环境列表
    ///
    /// 本接口（DescribeUsagePlanEnvironments）用于查询使用计划绑定的环境列表。
    /// 用户在绑定了某个使用计划到环境后，可使用本接口查询这个使用计划绑定的所有服务的环境。
    @inlinable
    public func describeUsagePlanEnvironments(usagePlanId: String, bindType: String, limit: Int64? = nil, offset: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsagePlanEnvironmentsResponse {
        try await self.describeUsagePlanEnvironments(DescribeUsagePlanEnvironmentsRequest(usagePlanId: usagePlanId, bindType: bindType, limit: limit, offset: offset), logger: logger, on: eventLoop)
    }
}
