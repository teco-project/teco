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
    /// DemoteServiceUsagePlan请求参数结构体
    public struct DemoteServiceUsagePlanRequest: TCRequestModel {
        /// 使用计划ID。
        public let usagePlanId: String

        /// 待降级的服务唯一 ID。
        public let serviceId: String

        /// 环境名称。
        public let environment: String

        public init(usagePlanId: String, serviceId: String, environment: String) {
            self.usagePlanId = usagePlanId
            self.serviceId = serviceId
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case usagePlanId = "UsagePlanId"
            case serviceId = "ServiceId"
            case environment = "Environment"
        }
    }

    /// DemoteServiceUsagePlan返回参数结构体
    public struct DemoteServiceUsagePlanResponse: TCResponseModel {
        /// 降级操作是否成功。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 服务级别使用计划降级
    ///
    /// 本接口（DemoteServiceUsagePlan）用于将某个服务在某个环境的使用计划，降级到API上。
    /// 如果服务内没有API不允许进行此操作。
    /// 如果当前环境没有发布，不允许进行此操作。
    @inlinable
    public func demoteServiceUsagePlan(_ input: DemoteServiceUsagePlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DemoteServiceUsagePlanResponse> {
        self.client.execute(action: "DemoteServiceUsagePlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 服务级别使用计划降级
    ///
    /// 本接口（DemoteServiceUsagePlan）用于将某个服务在某个环境的使用计划，降级到API上。
    /// 如果服务内没有API不允许进行此操作。
    /// 如果当前环境没有发布，不允许进行此操作。
    @inlinable
    public func demoteServiceUsagePlan(_ input: DemoteServiceUsagePlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DemoteServiceUsagePlanResponse {
        try await self.client.execute(action: "DemoteServiceUsagePlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 服务级别使用计划降级
    ///
    /// 本接口（DemoteServiceUsagePlan）用于将某个服务在某个环境的使用计划，降级到API上。
    /// 如果服务内没有API不允许进行此操作。
    /// 如果当前环境没有发布，不允许进行此操作。
    @inlinable
    public func demoteServiceUsagePlan(usagePlanId: String, serviceId: String, environment: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DemoteServiceUsagePlanResponse> {
        self.demoteServiceUsagePlan(DemoteServiceUsagePlanRequest(usagePlanId: usagePlanId, serviceId: serviceId, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 服务级别使用计划降级
    ///
    /// 本接口（DemoteServiceUsagePlan）用于将某个服务在某个环境的使用计划，降级到API上。
    /// 如果服务内没有API不允许进行此操作。
    /// 如果当前环境没有发布，不允许进行此操作。
    @inlinable
    public func demoteServiceUsagePlan(usagePlanId: String, serviceId: String, environment: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DemoteServiceUsagePlanResponse {
        try await self.demoteServiceUsagePlan(DemoteServiceUsagePlanRequest(usagePlanId: usagePlanId, serviceId: serviceId, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
